import os
from datetime import datetime, timedelta

import os
import queue
import time
import threading as thr
import pandas as pd
import sqlalchemy as sa



def update_init_py(path):
    """
    Criar referencia no init.py para todos os arquivos.py que estão dentro da pasta especificada.

    path -- pasta para gerar o __init__.py
    """
    arq = open(f'{path}__init__.py', 'w+')
    arq.write(f'#{datetime.now()}\n')
    all_py = [i[:i.find('.py')] for i in list(os.walk(path))[0][2] if ".py" in i]
    all_py.remove('__init__')
    arq.write(f'__all__ = {all_py}')
    arq.close()


def connect_oracle(host, port, service, username, password):
    conn_str = f'oracle+cx_oracle://{username}:{password}@{host}:{port}/?service_name={service}'

    return sa.create_engine(conn_str)


def compare_size(size_input, size_output):
    """
    Compara o tamanho da tabela de origem com a tabela de destino.

    :param size_input: Tamanho dos dados no banco de origem
    :param size_output: Tamanho dos dados no banco de destino
    """
    if size_input != size_output:
        raise ValueError(f'O tamanho da extração da origem não esta igual ao tamanho do '
                         f'inserido no banco de destino\nOrigem: {size_input}\nDestino: '
                         f'{size_output}')

def teste_submodule():
    path_string = os.getcwd()
    os.system(f'echo {path_string} > /opt/airflow/dags/AUDITORIA_AUTORIZATIVA/ODS/ODS_DWT_SUBMODULE.txt')


def dict_auxiliar_dtypes(df_row, dict_):
    """
    Função que gera o dicionário com o tipo de dado de cada coluna para ser inserida no banco
    :param df_row: Dataframe com as informações de coluna, tipo de dado e escala do dado
    :param dict_: Dicionário vazio a ser preenchido com as informações
    """

    dtypes = (
        sa.types.Integer() if (
            df_row.data_type == "NUMBER"
            and (
                df_row.data_scale == 0
                or str(df_row.data_scale) == "nan"
            )
        )
        else sa.types.FLOAT if df_row.data_type == "NUMBER" and df_row.data_scale > 0
        else sa.types.DATE if df_row.data_type == "DATE"
        else sa.types.VARCHAR if df_row.data_type[:7] == "VARCHAR"
        else sa.types.CHAR if df_row.data_type == "CHAR"
        else sa.types.TIMESTAMP if df_row.data_type[:9] == "TIMESTAMP"
        else None
    )
    
    if dtypes:
        dict_[df_row.column_name] = dtypes


def df_dtypes(table_name, conn_origem):
    """
    Função que extrai um dataframe que contém as informações de coluna, tipo de dado e escala de dado de uma tabela
    :param table_name: Nome da tabela
    :param conn_origem: Conexão com o banco de origem
    """

    table_owner = str(conn_origem.url).split("//")[1].split(":")[0].upper()
    table_name = table_name.upper()

    query = f"""
        SELECT LOWER(COLUMN_NAME) as COLUMN_NAME, DATA_TYPE, DATA_SCALE
        FROM ALL_TAB_COLUMNS
        WHERE   table_name= '{table_name}'
        AND     owner = '{table_owner}' """

    tbl_dtype = pd.read_sql_query(sql=query, con=conn_origem)

    return tbl_dtype


def dtypes_generator(table_name, conn_origem):
    """
    Função que gera automaticamente o dicionário de tipos de dados das colunas a serem inseridas no banco.
    :param table_name: Nome da tabela
    :param conn_origem: Conexão com o banco de origem
    """

    dict_ = {}

    tbl = df_dtypes(table_name=table_name, conn_origem=conn_origem)
    tbl.apply(dict_auxiliar_dtypes, dict_=dict_, axis=1)

    return dict_


def ods_left_only(tbl_extract_origem, tbl_extract_ods):
    """
    Função para realizar a carga da ODS incremental.

    :param tbl_extract_origem: Tabela extraída da origem
    :param tbl_extract_ods: Tabela extraída da ODS com as colunas que devem ser analisadas para o incremento.

    :return: Tabela tratada para carga na ODS
    """
    columns_merge = list(tbl_extract_ods.columns)

    tbl_merge = tbl_extract_origem.merge(
        right=tbl_extract_ods,
        on=columns_merge,
        how='outer',
        indicator=True
    )

    tbl_merge = tbl_merge.query("_merge == 'left_only'")

    tbl_merge = tbl_merge.drop('_merge', axis=1)

    return tbl_merge


def load_executemany(list_values, table_name, ref_table, conn):
    """
        Função para fazer a carga de uma lista de valores em uma tabela

        :param list_values: Lista onde cada posição é uma tupla de valores
            da tabela
        :param table_name: Nome da tabela que será inserido os valores
        :param ref_table: Referência da consulta da tabela no banco
        :param conn: Conexão do SQLAlchemy onde está a tabela de insersão

        :return: None
    """
    
    query_insert = f"""
        INSERT INTO {table_name} ({", ".join(ref_table.keys())})
        VALUES ({", ".join([f":{v}" for v in range(1, len(ref_table.keys()) + 1)])})
    """

    connection = conn.raw_connection()

    conn_cursor = connection.cursor()

    conn_cursor.executemany(query_insert, list_values)

    conn_cursor.close()

    connection.commit()

    connection.close()


def delete_executemany(table_name, ref_table, columns_pk, list_values, conn):
    """
        Função para fazer a exclusão de registros da tabela indicada

        :param list_values: Lista onde cada posição é uma tupla de valores
            da tabela
        :param table_name: Nome da tabela que será removido os valores
        :param ref_table: Referência da consulta da tabela no banco
        :param columns_pk: Chave ou chaves primaria da tabela
        :param conn: Conexão do SQLAlchemy onde está a tabela de remoção

        :return: None
    """

    is_iterable = isinstance(columns_pk, (list, tuple))

    if is_iterable:
        query_delete = f"""
            DELETE FROM {table_name}
            WHERE {" AND ".join([f"{c} = :{i}" for i, c in enumerate(columns_pk, 1)])}
        """

        indexes = [list(ref_table.keys()).index(c) for c in columns_pk]

    else:
        query_delete = f"""
            DELETE FROM {table_name} WHERE {columns_pk} = :1
        """

        indexes = [list(ref_table.keys()).index(columns_pk)]

    filter_values = [[v for i, v in enumerate(r) if i in indexes] for r in list_values]

    connection = conn.raw_connection()

    conn_cursor = connection.cursor()

    conn_cursor.executemany(query_delete, filter_values)

    conn_cursor.close()

    connection.commit()

    connection.close()


def get_columns_table(conn, table_name, ignore_columns=None, aliases_column=None):
    """
        Função para obter as colunas separadas por vírgula de uma determinada
        tabela

        :param conn: Conexão SQLAlchemy com o banco da tabela
        :param table_name: Nome da tabela
        :ignore_columns: Lista de colunas que deseja ignorar
        :aliases_column: Apelido da tabela

        :return: string com as colunas separadas por vírgula
    """

    query = f"""
        SELECT *
        FROM {table_name}
        WHERE rownum < 2
    """

    result = conn.execute(query)

    if ignore_columns is not None:
        columns = [col for col in result.keys() if col not in ignore_columns]
    
    else:
        columns = result.keys()
    
    if aliases_column is not None:
        columns = [f"{aliases_column}.{col}" for col in columns]

    return ", ".join(columns)


def logging(func):
    """
        Função para exibir o log detalhado de uma determinada função, usar o
            decorator @logging na função que deseja exibir o log

        OBS.: Não utilizar em função que são passadas no PythonOperator do
            airflow
    """

    def wrapper(*args, **kwargs):
        start_time = datetime.now()

        func_return = func(*args, **kwargs)

        total_time = datetime.now() - start_time

        max_qtt_columns = 3
        max_char = 200
        gap_char = max_char // 2 - 5

        separator = f"\n*{'-*' * 40}\n"

        str_log = ""

        str_log += separator

        if len(args) > 0:
            str_log += "\nValores args:\n"

            for a in args:
                if len(str(a)) > max_char and not isinstance(a, (pd.DataFrame, pd.Series)):
                    a = f"{str(a)[:gap_char]}\n...\n\t{str(a)[-gap_char:]}"
                
                str_log += f"{a}\n"

        if len(kwargs) > 0:
            vars_kwargs = [
                f"{k}: {v}"
                if len(str(v)) <= max_char or isinstance(v, (pd.DataFrame, pd.Series))
                else f"{k}: {str(v)[:gap_char]}\n...\n\t{str(v)[-gap_char:]}"
                for k, v in kwargs.items()
            ]

            str_log += "\nVariáveis kwargs:\n"

            for vk in vars_kwargs:
                str_log += f"{vk}\n"

        if func_return is not None:
            str_log += f"\nRetorno da Função:\n"
            
            if isinstance(func_return, pd.DataFrame):
                columns = [
                    f"{c}\n" + " " * 9
                    if i % max_qtt_columns == 0
                    else c
                    for i, c in enumerate(func_return.columns, 1)
                ]

                str_log += f"\n  Shape: {func_return.shape}"
                str_log += f"\nColunas: {', '.join(columns)}\n"

            str_log += "\n"

            str_return = str(func_return)

            if len(str_return) > max_char and not isinstance(func_return, (pd.DataFrame, pd.Series)):
                str_return = f"{str_return[:gap_char]}\n...\n{str_return[-gap_char:]}"

            str_log += f"{str_return}\n"

        str_log += f"\nTempo Total: {total_time}\n"

        str_log += separator

        print(str_log)

        return func_return

    return wrapper


def get_insert_update(tbl_insert, tbl_destine, pk_cols, up_cols=None):
    """
        Função para obter os registros novos ou que são updates entre dois
        dataframes

        OBS.: É necessário remover o cabeçalho padão do tbl_destine para que não
            venha no update

        :param tbl_insert: dataframe com os dados a serem avaliados
        :param tbl_destine: dataframe com os dados já existentes da tabela
            destino
        :param pk_cols: lista ou nome da(s) PK's da tabela
        :param up_cols: lista ou nome opcional com a(s) colunas que deseja verificar
            update
        :return: tupla com dois dataframes, o primeiro com os novos e o segundo
            com os updates
    """

    # TODO: Tratar quando tiver cabeçalho de dimensões

    if isinstance(pk_cols, str):
        pk_cols = [pk_cols]

    if up_cols is None:
        columns = pk_cols
    else:
        if isinstance(up_cols, str):
            up_cols = [up_cols]
        
        columns = pk_cols + [c for c in up_cols if c not in pk_cols]
    
    _tbl_dest = tbl_destine[columns]
    
    tbl_merge = pd.merge(
        left=tbl_insert,
        right=_tbl_dest,
        how="outer",
        on=columns,
        indicator=True
    )

    del _tbl_dest

    _merge = ["_merge"]

    tbl_left = tbl_merge.query("_merge == 'left_only'").drop(columns=_merge)
    tbl_right = tbl_merge.query("_merge == 'right_only'").drop(columns=_merge)

    del tbl_merge

    _tbl_merge = pd.merge(
        left=tbl_left,
        right=tbl_right,
        how="outer",
        on=pk_cols,
        indicator=True
    )

    del tbl_left, tbl_right

    drop_cols = [f"{v}_y" for v in tbl_insert.columns] + _merge
    rename_cols = {f"{v}_x": f"{v}" for v in tbl_insert.columns}

    tbl_new = _tbl_merge.query(
        expr="_merge == 'left_only'"
    ).drop(
        columns=drop_cols,
        errors="ignore"
    ).rename(
        columns=rename_cols
    )
    
    tbl_update = _tbl_merge.query(
        expr="_merge != 'left_only'"
    ).drop(
        columns=drop_cols,
        errors="ignore"
    ).rename(
        columns=rename_cols
    )
    
    return (tbl_new, tbl_update)


def get_fill_na_integer(table_name, conn_output, default, lower=False):
    """
        Função para retornar o fillna das colunas inteiras de uma tabela do
        banco de dados

        :param table_name: Nome da tabela no banco
        :param conn_output: Conexão SQLAlchemy com o banco
        :param default: Qual valor deseja colocar como padrão
        :param lower: Se deseja o nome das colunas minúsculo

        :return: Um dicionário com as colunas integer da tabela com o valor
            default definido por parâmetro
    """

    dtypes = dtypes_generator(table_name, conn_output)

    fillna = {
        str(k1).lower()
        if lower else
        k1
        : v1
        for k1, v1 in
        {
            k2: default
            if str(v2) == "INTEGER"
            else None
            for k2, v2 in dtypes.items()
        }.items()
        if v1 is not None
    }

    return fillna


@logging
def load_threading(func_load, ref_table, conn_output, interval):
    """
    Função realizar a extração e carga de forma paralela

        :param func_load: Função de load do script original
        :param ref_table: Referencia a tabela de extração
        :param conn_output: Conexão SQLAlchemy com o banco
        :param interval: Intervalo de carga de dados

        :return: None
    """
    list_process = []
    
    while True:
        list_values = ref_table.fetchmany(interval)
        if len(list_values) == 0:
            break;
        
        process = thr.Thread(target=func_load, args=(list_values, ref_table, conn_output))
        process.start()
        list_process.append(process)
    
    for i in list_process:
        i.join()


def run_multithreading(func_load_ods, func_extract_ods, conn_input, conn_output,
    date_init, date_end, dt_carga, table_name, load_interval, /):
    """
        Função para executar treate e load em paralelo

        :param func_load_ods: Função de load
        :param func_extract_ods: Função de extract
        :param conn_input: Conexão de entrada
        :param conn_output: Conexão de saída
        :param date_init: Data de início
        :param date_end: Data de fim
        :param dt_carga: Data de carga
        :param table_name: Nome da tabela
        :param load_interval: Intervalo de load

        :return: None
    """
    
    def get_and_load(ref_table, c, tn, load_interval):
        thread_fetch_list = []
        
        que_fetch = queue.Queue()
        
        thread_load_list = []
        
        extract_fetch = (
            thr.Thread(target=lambda ref_table: que_fetch.put(ref_table.fetchall()),
            args=(ref_table,))
        )

        extract_fetch.start()
        thread_fetch_list.append(extract_fetch)
        for t in thread_fetch_list:
            thread_load_list = []
            t.join()
            values_full = que_fetch.get()
            
            values = [values_full[i:i+load_interval] for i in range(0, len(values_full), load_interval)]
            
            del values_full
            
            while len(values) != 0:
                process = thr.Thread(target=func_load_ods, args=(values.pop(), ref_table, c, tn))
                process.start()
                thread_load_list.append(process)
                while len(thread_load_list) > 10:
                    for i in range(0, len(thread_load_list)):
                        if not thread_load_list[i].is_alive():
                            thread_load_list.pop(i)
                            break
                    time.sleep(1)
        
            [thread.join() for thread in thread_load_list]

    ref_table = func_extract_ods(conn_input, conn_output, date_init, date_end, dt_carga, table_name)
    
    thread = thr.Thread(target=get_and_load,
        args=(ref_table, conn_output, table_name, load_interval))
    
    thread.start()

    thread.join()


def get_dt_carga():
    """
        Função para obter a data de carga

        :return: hora utc - 3
    """
    
    dt_carga = datetime.utcnow() - timedelta(hours=3)

    return dt_carga


def update_control_table(conn, table_name, days_delta=None, date_parameter=None, fl_se="e"):
    """
        Função para atualizar a control table

        :param conn: Conexão com o banco da control table
        :param table_name: Nome da tabela que deseja registrar
        :param days_delta: Delta de dias para inserir
        :param date_parameter: Data de parâmetro
        :param fl_se: 'S' = Start, 'E' = End

        :return: None
    """
    
    control_table_name = "control_table"

    query_delta = f"""
        SELECT nu_dias_delta
        FROM {control_table_name}
        WHERE UPPER(TRIM(no_tabela)) = UPPER(TRIM('{table_name}'))
            AND fl_ativo = '1'
    """
    
    days_delta_fetch = conn.execute(query_delta).fetchone()
    
    days_delta = days_delta_fetch[0] if days_delta_fetch is not None else days_delta

    cv = {
        "cd_carga": None,
        "no_tabela": table_name.lower(),
        "dt_inicio": None,
        "dt_fim": None,
        "dt_parametro": date_parameter,
        "nu_dias_delta": days_delta,
        "fl_ativo": "1"
    }

    query_select = f"""
        SELECT {", ".join(cv.keys())}
        FROM {control_table_name}
        WHERE fl_ativo = '1'
            AND UPPER(TRIM(no_tabela)) = UPPER(TRIM('{table_name}'))
    """

    row = conn.execute(query_select).fetchone()

    if row is None:
        cd_carga = None
    else:
        cd_carga = row[0]

    dt_se = get_dt_carga()

    realy_columns = {c: v for c, v in cv.items() if v is not None}

    if fl_se.lower() == "s":
        realy_columns["dt_inicio"] = dt_se

        try:
            query_sequence = """
                SELECT control_table_sequence.nextval
                FROM dual
            """

            next_sequence = conn.execute(query_sequence).fetchone()

        except:
            query_sequence = """
                SELECT NVL(MAX(cd_carga), 0) + 1
                FROM control_table
            """

            next_sequence = conn.execute(query_sequence).fetchone()
        
        realy_columns["cd_carga"] = next_sequence[0]

        query = f"""
            INSERT INTO {control_table_name} ({", ".join(realy_columns.keys())})
            VALUES ({", ".join([f":{i}" for i, _ in enumerate(realy_columns.keys(), 1)])})
        """

        if cd_carga is not None:
            query_update = f"""
                UPDATE {control_table_name}
                SET fl_ativo = '0'
                WHERE fl_ativo = '1'
                    AND cd_carga = {cd_carga}
            """

            conn.execute(query_update)

    elif fl_se.lower() == "e":
        realy_columns["dt_fim"] = dt_se

        query = f"""
            UPDATE {control_table_name}
            SET {", ".join([f"{c} = :{i}" for i, c in enumerate(realy_columns.keys(), 1)])}
            WHERE fl_ativo = '1'
                AND cd_carga = {cd_carga}
        """

    else:
        raise ValueError(
            "Esperado um dos valores, 's' ou 'e', para o parâmetro fl_se\n"
            "s = Start\n"
            "e = End\n"
        )

    conn.execute(query, list(realy_columns.values()))


def get_dt_parametro_control_table(conn, table_name, date_init):
    """
    Função que retorna da data inical para carga
    
    :param conn: Conexão da control table
    :param table_name: Tabela de parâmetro
    :param date_init: Data inicial vindo do arquivo parameter_object.json
    
    :return: Valor a ser atribuido a date_init
    """

    query_count = f"""
        SELECT count(1)
        FROM control_table
        WHERE UPPER(TRIM(no_tabela)) = UPPER(TRIM('{table_name}'))
            AND dt_fim IS NOT NULL
    """
    
    query_dt_parametro = f"""
        SELECT NVL(MAX(dt_parametro), TO_DATE('0001-01-01', 'YYYY-MM-DD HH24:MI:SS'))
        FROM control_table
        WHERE UPPER(TRIM(no_tabela)) = UPPER(TRIM('{table_name}'))
            AND fl_ativo = '1'
    """ 
       
    query_delta = f"""
        SELECT NVL(MAX(nu_dias_delta), 7)
        FROM control_table
        WHERE UPPER(TRIM(no_tabela)) = UPPER(TRIM('{table_name}'))
            AND fl_ativo = '1'
    """
    
    dt_param = max(conn.execute(query_dt_parametro).fetchone()[0], date_init)
    
    count_rows = conn.execute(query_count).fetchone()[0]
    
    days_delta = conn.execute(query_delta).fetchone()[0]
    
    dt_carga = get_dt_carga()
    
    dt_delta = dt_carga - timedelta(days=days_delta) - (dt_carga - dt_param)
    
    dt_param = (
        dt_delta
        if dt_param > dt_carga - timedelta(days=days_delta)
        else dt_param - timedelta(days=days_delta)
        if count_rows > 0
        else dt_param
    )
    
    return dt_param


def delete_old_load(conn, columns, table_name):
    """
    Função que verificar os registros a serem deletados baseado na data de carga, e assim os deleta
    
    :param conn: Conexão SQLAlchemy
    :param columns: Colunas a serem usadas para comparação
    :param table_name: Nome da tabela a ser deletada
    
    :return result: Retorno da execução do delete
    """    
    str_columns = ', '.join(columns)
      
    str_where = ' AND '.join([f'a.{i} = tbl.{i}' for i in columns])
    
    sql_delete = f"""
    delete {table_name} tbl
    WHERE EXISTS 
        (
            SELECT 1 FROM (        
                SELECT {str_columns}
                , max(dt_carga) AS dt_carga
                from {table_name}
                group by {str_columns}
            ) a
            WHERE {str_where}
            AND  a.dt_carga <> tbl.dt_carga
        )
    """
    
    result = conn.execute(sql_delete)
    
    return result
