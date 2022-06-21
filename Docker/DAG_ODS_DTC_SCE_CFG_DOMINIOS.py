from airflow import DAG
from airflow.operators.python import PythonOperator
from airflow.utils.dates import days_ago

from AUDITORIA_AUTORIZATIVA.ODS.ODS_DTC_SCE_CFG_DOMINIOS import run_ods_dtc_sce_cfg_dominios
from DW_TOOLS import DAG_DEFAULT as dd


with DAG(
    dag_id="DAG_ODS_DTC_SCE_CFG_DOMINIOS",
    default_args=dd.return_dag_arg(),
    description="DAG DA ODS ODS_DTC_SCE_CFG_DOMINIOS",
    schedule_interval=None,
    start_date=days_ago(1),
    concurrency=1,
    max_active_runs=1,
    tags=["AUDITORIA AUTORIZATIVA", "SGU", "DATACENTER", "ODS"]
) as dag:
    conn_origem = dd.get_connect_oracle_airflow(conn_id="conn_origem")

    conn_stg = dd.get_connect_oracle_airflow(conn_id="conn_stg")

    ods_dtc_sce_cfg_dominios = PythonOperator(
        task_id="ods_dtc_sce_cfg_dominios",
        python_callable=run_ods_dtc_sce_cfg_dominios,
        op_kwargs={
            "conn_input": conn_origem,
            "conn_output": conn_stg,
            'interval': 100000
        },
        dag=dag
    )
