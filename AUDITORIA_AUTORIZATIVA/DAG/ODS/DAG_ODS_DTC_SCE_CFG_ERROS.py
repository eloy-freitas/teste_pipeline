from airflow import DAG
from airflow.operators.python import PythonOperator
from airflow.utils.dates import days_ago

from AUDITORIA_AUTORIZATIVA.ODS.ODS_DTC_SCE_CFG_ERROS import run_ods_dtc_sce_cfg_erros
import DW_TOOLS.DAG_DEFAULT as dd

default_args = dd.return_dag_arg() 

with DAG(
        'DAG_ODS_DTC_SCE_CFG_ERROS',
        default_args=default_args,
        description='DAG ODS SGU DATACENTER SCE_CFG_ERROS',
        concurrency=1,
        max_active_runs=1,
        schedule_interval=None,
        start_date=days_ago(1),
        tags=["AUDITORIA AUTORIZATIVA", "SGU", "DATACENTER", "ODS"]
) as dag_ods_dtc_sce_cfg_erros:

    conn_origem = dd.get_connect_oracle_airflow(conn_id="conn_origem")

    conn_stg = dd.get_connect_oracle_airflow(conn_id="conn_stg")

    ods_dtc_sce_cfg_erros = PythonOperator(
        task_id='ods_dtc_sce_cfg_erros',
        python_callable=run_ods_dtc_sce_cfg_erros,
        op_kwargs={
            'conn_input': conn_origem,
            'conn_output': conn_stg,
            'interval': 100000
        },
        dag=dag_ods_dtc_sce_cfg_erros

    )
 
