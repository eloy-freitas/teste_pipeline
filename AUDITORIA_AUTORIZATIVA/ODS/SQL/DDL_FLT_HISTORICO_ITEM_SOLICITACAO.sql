CREATE TABLE HMG_STG.FLT_HISTORICO_ITEM_SOLICITACAO (
    CD_SOLICITACAO          NUMBER,
    NR_GUIA                 VARCHAR2(20 CHAR),
    CD_ITEM_PROCEDIMENTO    VARCHAR2(10 CHAR),
    DS_ITEM_PROCEDIMENTO    VARCHAR2(200 CHAR),
    DS_SITUACAO_ITEM        VARCHAR2(255 CHAR),
    NR_VERSAO_ITEM          NUMBER,
    NR_SEQ_ITEM             NUMBER,
    DT_CARGA                TIMESTAMP
) TABLESPACE TABS_DAT;


CREATE TABLE PRD_STG.FLT_HISTORICO_ITEM_SOLICITACAO (
    CD_SOLICITACAO          NUMBER,
    NR_GUIA                 VARCHAR2(20 CHAR),
    CD_ITEM_PROCEDIMENTO    VARCHAR2(10 CHAR),
    DS_ITEM_PROCEDIMENTO    VARCHAR2(200 CHAR),
    DS_SITUACAO_ITEM        VARCHAR2(255 CHAR),
    NR_VERSAO_ITEM          NUMBER,
    NR_SEQ_ITEM             NUMBER,
    DT_CARGA                TIMESTAMP
) TABLESPACE TABS_DAT;