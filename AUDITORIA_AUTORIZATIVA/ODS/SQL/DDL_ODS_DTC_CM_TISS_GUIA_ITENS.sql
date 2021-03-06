CREATE TABLE HMG_STG.ODS_DTC_CM_TISS_GUIA_ITENS (
    CD_TISS_ITEM                 NUMBER(20, 0),
    CD_TABELA_SOLIC              VARCHAR2(2 CHAR),
    CD_ITEM_SOLIC                NUMBER(10, 0),
    DS_ITEM_SOLIC                VARCHAR2(150 CHAR),
    NM_FABRICANTE_OPM            VARCHAR2(60 CHAR),
    VL_OPM                       NUMBER(12, 2),
    QT_SOLICITADA                NUMBER(14, 4),
    QT_AUTORIZADA                NUMBER(14, 4),
    TP_DESPESA                   NUMBER(1, 0),
    CD_TABELA_EXEC               VARCHAR2(2 CHAR),
    CD_ITEM_EXEC                 NUMBER(10, 0),
    DS_ITEM_EXEC                 VARCHAR2(150 CHAR),
    QT_ITEM_EXEC                 NUMBER(14, 4),
    CD_BARRAS_OPM                VARCHAR2(20 CHAR),
    DT_HR_EXEC_INICIAL           DATE,
    DT_HR_EXEC_FINAL             DATE,
    DM_VIA_ACESSO                VARCHAR2(1 CHAR),
    DM_TECNICA_UTILIZADA         VARCHAR2(1 CHAR),
    PC_REDUC_ACRESC              NUMBER(5, 2),
    VL_UNIT                      NUMBER(12, 2),
    VL_TOTAL                     NUMBER(12, 2),
    CD_TISS_GUIA                 NUMBER(20, 0),
    TP_ITEM                      VARCHAR2(2 CHAR),
    IS_OPM                       NUMBER(1, 0)  DEFAULT 0,
    PC_TX_INTERCAMBIO            NUMBER(12, 2) DEFAULT 0,
    PC_TX_ADM_PREST              NUMBER(12, 2) DEFAULT 0,
    CD_UNIMED_PREST_ADD          NUMBER(4, 0),
    CD_PREST_ADD                 NUMBER(20, 0),
    DM_CIRURGIA_MULTIPLA         NUMBER(10, 0),
    VL_FATOR_CIRURGIA_MULTIPLA   NUMBER(10, 4),
    FG_AUTO_CIRURGIA_MULTIPLA    VARCHAR2(1 CHAR),
    DS_ITEM_EXEC_OLD             VARCHAR2(150 CHAR),
    DM_VALORES_CIRURGIA_MULTIPLA VARCHAR2(4000 CHAR),
    CD_PADRAO_CIRURGIA_MULTIPLA  NUMBER(10, 0),
    NR_REG_ANVISA                VARCHAR2(15 CHAR),
    CD_MATERIAL_FABRICANTE       VARCHAR2(60 CHAR),
    CD_UNIDADE_MEDIDA            VARCHAR2(3 CHAR),
    DM_GRAU_PARTIC               VARCHAR2(2 CHAR),
    CD_PREST_FORNEC              NUMBER(30, 0),
    PC_TX_COMERC                 NUMBER(10, 2),
    VL_TX_COMERC                 NUMBER(10, 2),
    FG_VALOR_TELA                NUMBER,
    VL_UNIT_EDIT                 NUMBER(12, 2),
    VL_UNIT_EDIT_INTRCMB         NUMBER(12, 2),
    DS_ITEM_GENERICO_SOLIC       VARCHAR2(80 CHAR),
    DS_DET_REG_ANVISA            VARCHAR2(50 CHAR),
    NR_SEQ_ITEM_TISS             NUMBER(4, 0),
    NR_SEQ_ITEM_TISS_ORIGEM      NUMBER(4, 0),
    DT_CARGA                     TIMESTAMP
) TABLESPACE TABS_DAT;


CREATE TABLE PRD_STG.ODS_DTC_CM_TISS_GUIA_ITENS (
    CD_TISS_ITEM                 NUMBER(20, 0),
    CD_TABELA_SOLIC              VARCHAR2(2 CHAR),
    CD_ITEM_SOLIC                NUMBER(10, 0),
    DS_ITEM_SOLIC                VARCHAR2(150 CHAR),
    NM_FABRICANTE_OPM            VARCHAR2(60 CHAR),
    VL_OPM                       NUMBER(12, 2),
    QT_SOLICITADA                NUMBER(14, 4),
    QT_AUTORIZADA                NUMBER(14, 4),
    TP_DESPESA                   NUMBER(1, 0),
    CD_TABELA_EXEC               VARCHAR2(2 CHAR),
    CD_ITEM_EXEC                 NUMBER(10, 0),
    DS_ITEM_EXEC                 VARCHAR2(150 CHAR),
    QT_ITEM_EXEC                 NUMBER(14, 4),
    CD_BARRAS_OPM                VARCHAR2(20 CHAR),
    DT_HR_EXEC_INICIAL           DATE,
    DT_HR_EXEC_FINAL             DATE,
    DM_VIA_ACESSO                VARCHAR2(1 CHAR),
    DM_TECNICA_UTILIZADA         VARCHAR2(1 CHAR),
    PC_REDUC_ACRESC              NUMBER(5, 2),
    VL_UNIT                      NUMBER(12, 2),
    VL_TOTAL                     NUMBER(12, 2),
    CD_TISS_GUIA                 NUMBER(20, 0),
    TP_ITEM                      VARCHAR2(2 CHAR),
    IS_OPM                       NUMBER(1, 0)  DEFAULT 0,
    PC_TX_INTERCAMBIO            NUMBER(12, 2) DEFAULT 0,
    PC_TX_ADM_PREST              NUMBER(12, 2) DEFAULT 0,
    CD_UNIMED_PREST_ADD          NUMBER(4, 0),
    CD_PREST_ADD                 NUMBER(20, 0),
    DM_CIRURGIA_MULTIPLA         NUMBER(10, 0),
    VL_FATOR_CIRURGIA_MULTIPLA   NUMBER(10, 4),
    FG_AUTO_CIRURGIA_MULTIPLA    VARCHAR2(1 CHAR),
    DS_ITEM_EXEC_OLD             VARCHAR2(150 CHAR),
    DM_VALORES_CIRURGIA_MULTIPLA VARCHAR2(4000 CHAR),
    CD_PADRAO_CIRURGIA_MULTIPLA  NUMBER(10, 0),
    NR_REG_ANVISA                VARCHAR2(15 CHAR),
    CD_MATERIAL_FABRICANTE       VARCHAR2(60 CHAR),
    CD_UNIDADE_MEDIDA            VARCHAR2(3 CHAR),
    DM_GRAU_PARTIC               VARCHAR2(2 CHAR),
    CD_PREST_FORNEC              NUMBER(30, 0),
    PC_TX_COMERC                 NUMBER(10, 2),
    VL_TX_COMERC                 NUMBER(10, 2),
    FG_VALOR_TELA                NUMBER,
    VL_UNIT_EDIT                 NUMBER(12, 2),
    VL_UNIT_EDIT_INTRCMB         NUMBER(12, 2),
    DS_ITEM_GENERICO_SOLIC       VARCHAR2(80 CHAR),
    DS_DET_REG_ANVISA            VARCHAR2(50 CHAR),
    NR_SEQ_ITEM_TISS             NUMBER(4, 0),
    NR_SEQ_ITEM_TISS_ORIGEM      NUMBER(4, 0),
    DT_CARGA                     TIMESTAMP
) TABLESPACE TABS_DAT;