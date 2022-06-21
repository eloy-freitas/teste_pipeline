"""
Este script serve para carregar a stage ODS_DBU_bnfrio

Descrição do objeto
----------
Sistema: SGU
Banco de dados: DBAUNIMED
Tabela: bnfrio

Descrição do script
----------
Autor: Luann Laurindo
Data de alteração: 03/05/2022
"""

from DW_TOOLS import DW_TOOLS as dwt


@dwt.logging
def extract_ods_dbu_bnfrio(table_name, conn_input, conn_output, dt_carga):
    columns = dwt.get_columns_table(conn_output, table_name, ['dt_carga'])

    query_ods = f"""
        SELECT
            {columns}
            , TO_TIMESTAMP('{dt_carga}', 'yyyy-mm-dd hh24:mi:ss.ff') AS dt_carga
        FROM dbaunimed.bnfrio
    """

    result_ods = conn_input.execute(query_ods)

    return result_ods


def load_ods_dbu_bnfrio(list_values, ref_table, conn_output):
    table_name = "ods_dbu_bnfrio"
    
    dwt.load_executemany(list_values, table_name, ref_table, conn_output)


def run_ods_dbu_bnfrio(conn_input, conn_output, load_interval):
    table_name = "ods_dbu_bnfrio"

    dwt.update_control_table(conn=conn_output, table_name=table_name, fl_se="s")

    dt_carga = dwt.get_dt_carga()

    ref_table = extract_ods_dbu_bnfrio(table_name, conn_input, conn_output, dt_carga)

    conn_output.execute(f"TRUNCATE TABLE {table_name}")

    dwt.load_threading(load_ods_dbu_bnfrio, ref_table, conn_output, load_interval)

    dwt.update_control_table(conn=conn_output, table_name=table_name, fl_se="e")


if __name__ == '__main__':
    conn_origem = dwt.connect_oracle(
        host="oratst-scan.unimedgoiania.com.br",
        service="sgudesv",
        username="USER_BI_DEV",
        password="Y92LvQ",
        port=1521
    )

    conn_ods = dwt.connect_oracle(
        host="localhostt",
        service="XE",
        username="USER_BI_dEV",
        password="oracle",
        port=1521
    )

    run_ods_dbu_bnfrio(conn_input=conn_origem, conn_output=conn_ods, interval=1000)
