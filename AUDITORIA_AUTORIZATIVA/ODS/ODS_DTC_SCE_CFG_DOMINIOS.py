from DW_TOOLS import DW_TOOLS as dwt


def extract_ods_dtc_sce_cfg_dominios(table_name, conn_input, conn_output, dt_carga):
    columns = dwt.get_columns_table(conn_output, table_name, ["dt_carga"])

    query = f"""
        SELECT {columns}, TO_TIMESTAMP('{dt_carga}', 'yyyy-mm-dd hh24:mi:ss.ff') AS DT_CARGA
        FROM datacenter.sce_cfg_dominios
    """

    result = conn_input.execute(statement=query)

    return result


def load_ods_dtc_sce_cfg_dominios(table_name, list_values, ref_table, conn_output):
    dwt.load_executemany(list_values=list_values, table_name=table_name,
        ref_table=ref_table, conn=conn_output)


def run_ods_dtc_sce_cfg_dominios(conn_input, conn_output, interval):
    table_name = 'ods_dtc_sce_cfg_dominios'

    dwt.update_control_table(conn_output, table_name, fl_se="s")

    dt_carga = dwt.get_dt_carga()

    ref_table = extract_ods_dtc_sce_cfg_dominios(table_name=table_name, conn_input=conn_input,
        conn_output=conn_output, dt_carga=dt_carga)

    conn_output.execute(f"TRUNCATE TABLE {table_name}")

    while True:
        list_values = ref_table.fetchmany(interval)

        if len(list_values) == 0:
            break

        load_ods_dtc_sce_cfg_dominios(table_name=table_name, list_values=list_values,
            ref_table=ref_table, conn_output=conn_output)
    
    dwt.update_control_table(conn_output, table_name, fl_se="e")


if __name__ == '__main__':
    conn_origem = dwt.connect_oracle(
        host="oratst-scan.unimedgoiania.com.br",
        username="USER_BI_DEV",
        password="Y92LvQ",
        service="sgudesv",
        port=1521
    )

    conn_stg = dwt.connect_oracle(
        host='localhost',
        username='USER_BI_DEV',
        password='oracle',
        service='XE',
        port=1521
    )

    run_ods_dtc_sce_cfg_dominios(
        conn_input=conn_origem, conn_output=conn_stg, interval=10000)