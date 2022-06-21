CREATE TABLE HMG_STG.ODS_DTC_SCE_CFG_ERROS(
    CD_ERRO                       NUMBER(30,0)
    , DS_ERRO                       VARCHAR2(150 CHAR)
    , CD_ERRO_PTU                   NUMBER(30,0)
    , TP_ERRO_AUTSC                 VARCHAR2(1 CHAR)
    , DS_EXPLIC_UNIMED              VARCHAR2(2000 CHAR)
    , DS_SOLCAO_UNIMED              VARCHAR2(2000)
    , DS_SOLCAO_PREST               VARCHAR2(2000 CHAR)
    , CD_DEPARA_TISS                NUMBER(30,0)
    , TP_AUDITORIA                  NUMBER(20,0)
    , FG_JUSTIF_QTDE                NUMBER(1,0)
    , TP_ERRO_SGU                   VARCHAR2(1 CHAR)
    , FG_DESTAQUE_AUDITORIA         NUMBER(1,0)
    , CD_ERRO_TISS                  VARCHAR2(4 CHAR)
    , TP_ERRO_XML                   VARCHAR2(1 CHAR)
    , FG_INATIVO                    NUMBER(1,0)
    , FG_GLOSA_AUTOMATICA           VARCHAR2(1 CHAR)
    , DT_CARGA                      TIMESTAMP
) TABLESPACE TABS_DAT;

CREATE TABLE PRD_STG.ODS_DTC_SCE_CFG_ERROS(
    CD_ERRO                       NUMBER(30,0)
    , DS_ERRO                       VARCHAR2(150 CHAR)
    , CD_ERRO_PTU                   NUMBER(30,0)
    , TP_ERRO_AUTSC                 VARCHAR2(1 CHAR)
    , DS_EXPLIC_UNIMED              VARCHAR2(2000 CHAR)
    , DS_SOLCAO_UNIMED              VARCHAR2(2000)
    , DS_SOLCAO_PREST               VARCHAR2(2000 CHAR)
    , CD_DEPARA_TISS                NUMBER(30,0)
    , TP_AUDITORIA                  NUMBER(20,0)
    , FG_JUSTIF_QTDE                NUMBER(1,0)
    , TP_ERRO_SGU                   VARCHAR2(1 CHAR)
    , FG_DESTAQUE_AUDITORIA         NUMBER(1,0)
    , CD_ERRO_TISS                  VARCHAR2(4 CHAR)
    , TP_ERRO_XML                   VARCHAR2(1 CHAR)
    , FG_INATIVO                    NUMBER(1,0)
    , FG_GLOSA_AUTOMATICA           VARCHAR2(1 CHAR)
    , DT_CARGA                      TIMESTAMP
) TABLESPACE TABS_DAT;
