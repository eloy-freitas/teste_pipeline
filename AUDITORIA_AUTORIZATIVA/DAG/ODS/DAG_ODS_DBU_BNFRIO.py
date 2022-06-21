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

from airflow import DAG
from airflow.operators.python import PythonOperator
from airflow.utils.dates import days_ago

from DW_TOOLS import DAG_DEFAULT as dd
from AUDITORIA_AUTORIZATIVA.ODS.ODS_DBU_BNFRIO import run_ods_dbu_bnfrio


with DAG(
        'DAG_ODS_DBU_BNFRIO',
        default_args=dd.return_dag_arg(),
        description='DAG ODS DBU BNFRIO',
        concurrency=1,
        max_active_runs=1,
        schedule_interval=None,
        start_date=days_ago(1),
        tags=["AUDITORIA AUTORIZATIVA", "SGU", "DBAUNIMED", "ODS"]
) as dag:

    conn_origem = dd.get_connect_oracle_airflow(conn_id='conn_origem')

    conn_stg = dd.get_connect_oracle_airflow(conn_id='conn_stg')

    ods_dbu_bnfrio = PythonOperator(
        task_id='ods_dbu_bnfrio',
        python_callable=run_ods_dbu_bnfrio,
        op_kwargs={
            'conn_input': conn_origem,
            'conn_output': conn_stg,
            'load_interval': 40000
        },
        dag=dag
    )
