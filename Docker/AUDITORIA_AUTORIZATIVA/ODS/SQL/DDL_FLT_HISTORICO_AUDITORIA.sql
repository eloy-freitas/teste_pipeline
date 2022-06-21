CREATE TABLE HMG_STG.FLT_HISTORICO_AUDITORIA (
ACAO_AUDITOR              VARCHAR2(100 CHAR),
CD_NIVEL                  NUMBER,
NM_NIVEL                  VARCHAR2(255 CHAR),
CD_SOLICITACAO            NUMBER(30, 0),
NR_GUIA                   VARCHAR2(20 CHAR),
NR_VERSAO                 NUMBER,
CD_USUARIO                NUMBER,
NM_USUARIO                VARCHAR2(70 CHAR),
CD_GRUPO                  NUMBER(30, 0),
NM_GRUPO                  VARCHAR2(100 CHAR),
CD_TIPO_SOLICITACAO       NUMBER,
CD_SITUACAO               NUMBER,
DS_SITUACAO               VARCHAR2(255 CHAR),
TIPO_SOLICITACAO          VARCHAR2(100 CHAR),
DT_ALTERACAO              TIMESTAMP,
DT_ALTERACAO_FIM          TIMESTAMP,
TEMPO_MINUTO              NUMBER,
DT_DIGITACAO_SOLICITACAO  TIMESTAMP,
DT_CARGA                  TIMESTAMP
)TABLESPACE TABS_DAT;

GRANT SELECT ON HMG_STG.FLT_HISTORICO_AUDITORIA TO USER_BI_DEV;


CREATE TABLE PRD_STG.FLT_HISTORICO_AUDITORIA (
ACAO_AUDITOR              VARCHAR2(100 CHAR),
CD_NIVEL                  NUMBER,
NM_NIVEL                  VARCHAR2(255 CHAR),
CD_SOLICITACAO            NUMBER(30, 0),
NR_GUIA                   VARCHAR2(20 CHAR),
NR_VERSAO                 NUMBER,
CD_USUARIO                NUMBER,
NM_USUARIO                VARCHAR2(70 CHAR),
CD_GRUPO                  NUMBER(30, 0),
NM_GRUPO                  VARCHAR2(100 CHAR),
CD_TIPO_SOLICITACAO       NUMBER,
CD_SITUACAO               NUMBER,
DS_SITUACAO               VARCHAR2(255 CHAR),
TIPO_SOLICITACAO          VARCHAR2(100 CHAR),
DT_ALTERACAO              TIMESTAMP,
DT_ALTERACAO_FIM          TIMESTAMP,
TEMPO_MINUTO              NUMBER,
DT_DIGITACAO              TIMESTAMP,
DT_CARGA                  TIMESTAMP
)TABLESPACE TABS_DAT;

GRANT SELECT ON PRD_STG.FLT_HISTORICO_AUDITORIA TO USER_BI_DEV;