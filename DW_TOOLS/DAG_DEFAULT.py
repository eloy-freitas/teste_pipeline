from datetime import timedelta, datetime
import json

from airflow.hooks.base_hook import BaseHook
from airflow.models import DagModel
import airflow.settings

import DW_TOOLS.DW_TOOLS as dwt

def return_dag_arg():
    dag_arguments = {
        'owner': 'airflow',
        'depends_on_past': False,
        'email': None,
        'email_on_failure': False,
        'email_on_retry': False,
        'retries': 0,
        'catchup': False,
        'retry_delay': timedelta(minutes=5),
    }

    return dag_arguments


def get_parameter_object(constant):
    """
    Retorna o parâmetro solicitado.

    :param constant: Nome parâmetro solicitado
    """
    switch_type = {
        'date_init': 'date',
        'date_end': 'date'
    }
    
    if constant == 'date_end':
        return (datetime.utcnow() - timedelta(hours=3) + timedelta(days=1)).replace(microsecond=0)

    with open('./dags/DW_TOOLS/parameter_object.json') as json_file:
        data = json.load(json_file)
        extract = data[constant]

    object_type = switch_type.get(constant, None)

    if object_type == 'date':
        return datetime.strptime(extract, '%d-%m-%Y')

    return None


def pause_dag(dag_list):
    """
    :param dag_list: DAG id
    :return: dag.is_paused is now False
    """
    session = airflow.settings.Session()
    for name_dag in dag_list:
        try:
            qry = session.query(DagModel).filter(DagModel.dag_id == name_dag)
            d = qry.first()
            d.is_paused = True
            session.commit()
        except:
            session.rollback()

    session.close()


def unpause_dag(dag_list):
    """
    :param dag_list: DAG id
    :return: dag.is_paused is now False
    """
    session = airflow.settings.Session()
    for name_dag in dag_list:
        try:
            qry = session.query(DagModel).filter(DagModel.dag_id == name_dag)
            d = qry.first()
            d.is_paused = False
            session.commit()
        except:
            session.rollback()

    session.close()


def get_connect_oracle_airflow(conn_id):
    """
    Retorna a engine de conexão criada no Airflow

    :param conn_id: Nome da conexão
    """

    conn_base = BaseHook.get_connection(conn_id=conn_id)

    conn_engine = dwt.connect_oracle(
        host=conn_base.host,
        username=conn_base.login,
        password=conn_base.password,
        port=conn_base.port,
        service=conn_base.schema
    )

    return conn_engine


if __name__ == "__main__":
    dag_default = return_dag_arg()
