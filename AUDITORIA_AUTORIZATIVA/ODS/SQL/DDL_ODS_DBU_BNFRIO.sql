CREATE TABLE HMG_STG.ODS_DBU_BNFRIO (
    CV_NRO                       NUMBER(10, 0),
    BNF_COD_PESSOA               NUMBER(10, 0),
    BNF_DAT_INIC_VIGEN           DATE,
    UNI_COD_RESPON               NUMBER(4, 0),
    BNF_COD_CNTRAT_CART          NUMBER(4, 0),
    BNF_COD                      NUMBER(6, 0),
    BNF_COD_DEPNTE               NUMBER(2, 0),
    BNF_TIP_PCIENT               NUMBER(2, 0)      DEFAULT 1,
    BNF_FLG_AGRAVO               CHAR(1),
    BNF_FLG_OUTRO_PLANO          CHAR(1),
    OPLS_COD                     NUMBER(4, 0),
    BNF_DAT_EXCL_CNTRAT_ANT      DATE,
    BNF_COD_OUTRO_PLANO          VARCHAR2(20 CHAR),
    BNF_DAT_EFETIV_CADAST        DATE,
    BNF_DAT_RECBTO_DOC           DATE,
    BNF_DAT_ADMISS               DATE,
    BNF_NRO_MATCLA_COLDOR        VARCHAR2(20 CHAR),
    EMPCN_COD                    NUMBER(10, 0),
    EMPCA_COD_INTRNO             NUMBER(10, 0),
    EMPCC_COD                    VARCHAR2(10 CHAR),
    BNF_COD_PESSOA_RESPON        NUMBER(10, 0),
    BNF_DAT_COMPET_INCL          NUMBER(6, 0),
    BNF_COD_UNIMED_COBRCA        NUMBER(4, 0),
    BNF_COD_CNTRAT_COBRCA        NUMBER(4, 0),
    BNF_COD_BNFRIO_COBRCA        NUMBER(6, 0),
    BNF_COD_DEPNTE_COBRCA        NUMBER(2, 0),
    BNF_FLG_MIGCAO               CHAR(1),
    BNF_FLG_DESTIN_TRANSF        CHAR(1),
    BNF_FLG_PAG_COMISS_VENDOR    CHAR(1),
    BNF_DAT_TRANSF               DATE,
    BNF_DAT_EMIS_CART            DATE,
    BNF_DAT_VALDE_CART           DATE,
    BNF_DAT_COMPET_EXCL          NUMBER(6, 0),
    BNF_DAT_EXCL                 DATE,
    BNF_DAT_OBITO                DATE,
    BNF_DAT_COMPET_REINCL        NUMBER(6, 0),
    BNF_DAT_REINCL               DATE,
    BNF_FLG_INCL_MOTIV           CHAR(1),
    BNF_IND_COLDOR               CHAR(1),
    BNF_COD_UNIMED_DESTIN        NUMBER(4, 0),
    BNF_COD_CNTRAT_DESTIN        NUMBER(4, 0),
    BNF_COD_BNFRIO_DESTIN        NUMBER(6, 0),
    BNF_COD_DEPNTE_DESTIN        NUMBER(2, 0),
    BNF_COD_UNIMED_ORIG          NUMBER(4, 0),
    BNF_COD_CNTRAT_ORIG          NUMBER(4, 0),
    BNF_COD_BNFRIO_ORIG          NUMBER(6, 0),
    BNF_DAT_EMIS_FORMUL_CADAST   DATE,
    BNF_NRO_CNTRAT_VENDA_COBRCA  NUMBER(10, 0),
    BNF_IND_MOTIVO_OBITO         NUMBER(2, 0),
    BNF_IND_MOTIVO_EXCL_BNFRIO   NUMBER(2, 0),
    BNF_COD_DEPNTE_ORIG          NUMBER(2, 0),
    BNF_IND_GRAU_DEPCIA          CHAR(18),
    BNF_IND_GRAU_PARTSC          CHAR(2),
    CARGA_NRO_SEQ                NUMBER,
    BNF_DES_OBS_EXCL             VARCHAR2(4000 CHAR),
    BNF_DES_COMENT_EXCL          VARCHAR2(256 CHAR),
    BNF_DES_OBS                  VARCHAR2(4000 CHAR),
    BNF_DAT_INIC_CARENC          DATE,
    BNF_IND_FAT                  CHAR(1)           DEFAULT 'E',
    BNF_NRO_DIA_VENCTO           NUMBER(2, 0),
    BNF_COD_PESSOA_FINANC        NUMBER(10, 0),
    BNF_IND_GRAU_PARTSC_FINANC   CHAR(2),
    BNF_IND_ORIG_INCL            CHAR(1),
    BNF_IND_RPRVTA_CARENC_ANT    CHAR(1)           DEFAULT 'N',
    BNF_IND_PORTAB               NUMBER(1, 0),
    BNF_IND_MOTIVO_INCL          NUMBER(2, 0)      DEFAULT 15,
    BNF_FLG_TITLAR_CAD           CHAR(1),
    BNF_COD_CCO                  NUMBER(10, 0),
    BNF_COD_CCO_DV               NUMBER(2, 0),
    BNF_IND_JUST_INTRNA_EXCL     NUMBER(2, 0),
    BNF_DAT_SOLIC_INCL           DATE,
    BNF_DAT_ADOCAO               DATE,
    BNF_FLG_TITLAR               CHAR(1),
    BNF_COD_UNIMED_REPASS        NUMBER(4, 0),
    BNF_COD_CNTRAT_REPASS        NUMBER(4, 0),
    BNF_COD_BNFRIO_REPASS        NUMBER(6, 0),
    BNF_COD_DEPNTE_REPASS        NUMBER(2, 0),
    BNF_FLG_INSCAO_APOS_TITLAR   CHAR(1),
    BNF_FLG_REMIDO_FEA_BF        CHAR(1),
    BNF_NRO_REPAD                VARCHAR2(20 CHAR),
    BNF_IND_MOTIVO_DESLIG_EMP    NUMBER(2, 0),
    BNF_QTD_MESES_CONTRIB_PLANO  NUMBER(3, 0),
    BNF_FLG_MANTER_PLANO_EX_EMP  CHAR(1),
    BNF_DAT_EXCL_PROG            DATE,
    BNF_DAT_COMPET_EXCL_PROG     NUMBER(6, 0),
    BNF_IND_MOTIVO_EXCL_PROG     NUMBER(2, 0),
    BNF_DES_OBS_EXCL_PROG        VARCHAR2(500 CHAR),
    BNF_IND_MOTIVO_PROG_EXCL     NUMBER(2, 0),
    BNF_DAT_CIENCIA_PLANO_EX_EMP DATE,
    BNF_IND_COBRCA               CHAR(1)           DEFAULT 'A',
    BNF_FLG_EX_EMP               CHAR(1)           DEFAULT 'N',
    BNF_IND_ORIG_PTU             VARCHAR2(4 CHAR),
    BNF_DAT_CPT_MED_ONC          DATE,
    BNF_FLG_CPT_MED_ONC          CHAR(1),
    BNF_FLG_EXISTE_CPT           VARCHAR2(1 CHAR),
    BNF_COBNCA_MULTA_EXCL        VARCHAR2(1 CHAR),
    BNF_VAL_COBNCA_MULTA_EXCL    NUMBER(15, 2),
    BNF_WEB_LOTE                 NUMBER(10, 0),
    BNF_WEB_MVTO                 NUMBER(10, 0),
    BNF_DAT_INIC_CONTRI          DATE,
    OPCAO_COD_CARENC             NUMBER(10, 0),
    BNF_DAT_INIC_UNIMED          DATE,
    BNF_IND_MOTIVO_INCL_INTERN   VARCHAR2(1 CHAR)  DEFAULT 'M',
    BNF_SE_COD                   NUMBER(10, 0),
    BNF_DAT_DIGIT_INCL           DATE,
    BNF_IND_PORTAB_ESP           VARCHAR2(1 CHAR),
    BNF_GRAGG_COD                NUMBER(6, 0),
    BNF_DAT_INI_COMP_RISCO       DATE,
    BNF_FLG_REEMB_FEA            CHAR(1)           DEFAULT 'S',
    BNF_MOTIVO_REEMB_FEA         VARCHAR2(100 CHAR),
    BNF_DAT_REMISSAO_INI_FEA     DATE,
    BNF_DAT_REMISSAO_FIM_FEA     DATE,
    BNF_DAT_COMPET_REMISSAO_FEA  NUMBER(6, 0),
    BNF_DAT_SOLIC_EXCL           DATE,
    BNF_DAT_SOLIC_REINCL         DATE,
    BNF_NRO_DIA_VENCTO_PROX      NUMBER(2, 0),
    BNF_NRO_DIA_BASE_INIC_COB    NUMBER(2, 0),
    BNF_IND_COBRCA_PRIM_MENSLD   VARCHAR2(1 CHAR),
    BNF_DAT_REINCL_COBRCA        DATE,
    BNF_FLG_NOVAS_COBERTURAS     CHAR(1),
    BNF_FLG_CARENC_CUMPRIDAS     CHAR(1),
    BNF_IND_EXG_DCLR_SAUDE       VARCHAR2(1 CHAR),
    BNF_IND_PRNCH_DCLR_SAUDE     VARCHAR2(1 CHAR),
    BNF_AMC_ID                   VARCHAR2(10 CHAR) DEFAULT null,
    BNF_QTD_MESES_VENCTO         NUMBER(3, 0),
    BNF_ID                       NUMBER(12, 0),
    BNF_IND_FORMUL_IMPSAO_CART   NUMBER(10, 0),
    DT_CARGA                     TIMESTAMP
) TABLESPACE TABS_DAT;


CREATE TABLE PRD_STG.ODS_DBU_BNFRIO (
    CV_NRO                       NUMBER(10, 0),
    BNF_COD_PESSOA               NUMBER(10, 0),
    BNF_DAT_INIC_VIGEN           DATE,
    UNI_COD_RESPON               NUMBER(4, 0),
    BNF_COD_CNTRAT_CART          NUMBER(4, 0),
    BNF_COD                      NUMBER(6, 0),
    BNF_COD_DEPNTE               NUMBER(2, 0),
    BNF_TIP_PCIENT               NUMBER(2, 0)      DEFAULT 1,
    BNF_FLG_AGRAVO               CHAR(1),
    BNF_FLG_OUTRO_PLANO          CHAR(1),
    OPLS_COD                     NUMBER(4, 0),
    BNF_DAT_EXCL_CNTRAT_ANT      DATE,
    BNF_COD_OUTRO_PLANO          VARCHAR2(20 CHAR),
    BNF_DAT_EFETIV_CADAST        DATE,
    BNF_DAT_RECBTO_DOC           DATE,
    BNF_DAT_ADMISS               DATE,
    BNF_NRO_MATCLA_COLDOR        VARCHAR2(20 CHAR),
    EMPCN_COD                    NUMBER(10, 0),
    EMPCA_COD_INTRNO             NUMBER(10, 0),
    EMPCC_COD                    VARCHAR2(10 CHAR),
    BNF_COD_PESSOA_RESPON        NUMBER(10, 0),
    BNF_DAT_COMPET_INCL          NUMBER(6, 0),
    BNF_COD_UNIMED_COBRCA        NUMBER(4, 0),
    BNF_COD_CNTRAT_COBRCA        NUMBER(4, 0),
    BNF_COD_BNFRIO_COBRCA        NUMBER(6, 0),
    BNF_COD_DEPNTE_COBRCA        NUMBER(2, 0),
    BNF_FLG_MIGCAO               CHAR(1),
    BNF_FLG_DESTIN_TRANSF        CHAR(1),
    BNF_FLG_PAG_COMISS_VENDOR    CHAR(1),
    BNF_DAT_TRANSF               DATE,
    BNF_DAT_EMIS_CART            DATE,
    BNF_DAT_VALDE_CART           DATE,
    BNF_DAT_COMPET_EXCL          NUMBER(6, 0),
    BNF_DAT_EXCL                 DATE,
    BNF_DAT_OBITO                DATE,
    BNF_DAT_COMPET_REINCL        NUMBER(6, 0),
    BNF_DAT_REINCL               DATE,
    BNF_FLG_INCL_MOTIV           CHAR(1),
    BNF_IND_COLDOR               CHAR(1),
    BNF_COD_UNIMED_DESTIN        NUMBER(4, 0),
    BNF_COD_CNTRAT_DESTIN        NUMBER(4, 0),
    BNF_COD_BNFRIO_DESTIN        NUMBER(6, 0),
    BNF_COD_DEPNTE_DESTIN        NUMBER(2, 0),
    BNF_COD_UNIMED_ORIG          NUMBER(4, 0),
    BNF_COD_CNTRAT_ORIG          NUMBER(4, 0),
    BNF_COD_BNFRIO_ORIG          NUMBER(6, 0),
    BNF_DAT_EMIS_FORMUL_CADAST   DATE,
    BNF_NRO_CNTRAT_VENDA_COBRCA  NUMBER(10, 0),
    BNF_IND_MOTIVO_OBITO         NUMBER(2, 0),
    BNF_IND_MOTIVO_EXCL_BNFRIO   NUMBER(2, 0),
    BNF_COD_DEPNTE_ORIG          NUMBER(2, 0),
    BNF_IND_GRAU_DEPCIA          CHAR(18),
    BNF_IND_GRAU_PARTSC          CHAR(2),
    CARGA_NRO_SEQ                NUMBER,
    BNF_DES_OBS_EXCL             VARCHAR2(4000 CHAR),
    BNF_DES_COMENT_EXCL          VARCHAR2(256 CHAR),
    BNF_DES_OBS                  VARCHAR2(4000 CHAR),
    BNF_DAT_INIC_CARENC          DATE,
    BNF_IND_FAT                  CHAR(1)           DEFAULT 'E',
    BNF_NRO_DIA_VENCTO           NUMBER(2, 0),
    BNF_COD_PESSOA_FINANC        NUMBER(10, 0),
    BNF_IND_GRAU_PARTSC_FINANC   CHAR(2),
    BNF_IND_ORIG_INCL            CHAR(1),
    BNF_IND_RPRVTA_CARENC_ANT    CHAR(1)           DEFAULT 'N',
    BNF_IND_PORTAB               NUMBER(1, 0),
    BNF_IND_MOTIVO_INCL          NUMBER(2, 0)      DEFAULT 15,
    BNF_FLG_TITLAR_CAD           CHAR(1),
    BNF_COD_CCO                  NUMBER(10, 0),
    BNF_COD_CCO_DV               NUMBER(2, 0),
    BNF_IND_JUST_INTRNA_EXCL     NUMBER(2, 0),
    BNF_DAT_SOLIC_INCL           DATE,
    BNF_DAT_ADOCAO               DATE,
    BNF_FLG_TITLAR               CHAR(1),
    BNF_COD_UNIMED_REPASS        NUMBER(4, 0),
    BNF_COD_CNTRAT_REPASS        NUMBER(4, 0),
    BNF_COD_BNFRIO_REPASS        NUMBER(6, 0),
    BNF_COD_DEPNTE_REPASS        NUMBER(2, 0),
    BNF_FLG_INSCAO_APOS_TITLAR   CHAR(1),
    BNF_FLG_REMIDO_FEA_BF        CHAR(1),
    BNF_NRO_REPAD                VARCHAR2(20 CHAR),
    BNF_IND_MOTIVO_DESLIG_EMP    NUMBER(2, 0),
    BNF_QTD_MESES_CONTRIB_PLANO  NUMBER(3, 0),
    BNF_FLG_MANTER_PLANO_EX_EMP  CHAR(1),
    BNF_DAT_EXCL_PROG            DATE,
    BNF_DAT_COMPET_EXCL_PROG     NUMBER(6, 0),
    BNF_IND_MOTIVO_EXCL_PROG     NUMBER(2, 0),
    BNF_DES_OBS_EXCL_PROG        VARCHAR2(500 CHAR),
    BNF_IND_MOTIVO_PROG_EXCL     NUMBER(2, 0),
    BNF_DAT_CIENCIA_PLANO_EX_EMP DATE,
    BNF_IND_COBRCA               CHAR(1)           DEFAULT 'A',
    BNF_FLG_EX_EMP               CHAR(1)           DEFAULT 'N',
    BNF_IND_ORIG_PTU             VARCHAR2(4 CHAR),
    BNF_DAT_CPT_MED_ONC          DATE,
    BNF_FLG_CPT_MED_ONC          CHAR(1),
    BNF_FLG_EXISTE_CPT           VARCHAR2(1 CHAR),
    BNF_COBNCA_MULTA_EXCL        VARCHAR2(1 CHAR),
    BNF_VAL_COBNCA_MULTA_EXCL    NUMBER(15, 2),
    BNF_WEB_LOTE                 NUMBER(10, 0),
    BNF_WEB_MVTO                 NUMBER(10, 0),
    BNF_DAT_INIC_CONTRI          DATE,
    OPCAO_COD_CARENC             NUMBER(10, 0),
    BNF_DAT_INIC_UNIMED          DATE,
    BNF_IND_MOTIVO_INCL_INTERN   VARCHAR2(1 CHAR)  DEFAULT 'M',
    BNF_SE_COD                   NUMBER(10, 0),
    BNF_DAT_DIGIT_INCL           DATE,
    BNF_IND_PORTAB_ESP           VARCHAR2(1 CHAR),
    BNF_GRAGG_COD                NUMBER(6, 0),
    BNF_DAT_INI_COMP_RISCO       DATE,
    BNF_FLG_REEMB_FEA            CHAR(1)           DEFAULT 'S',
    BNF_MOTIVO_REEMB_FEA         VARCHAR2(100 CHAR),
    BNF_DAT_REMISSAO_INI_FEA     DATE,
    BNF_DAT_REMISSAO_FIM_FEA     DATE,
    BNF_DAT_COMPET_REMISSAO_FEA  NUMBER(6, 0),
    BNF_DAT_SOLIC_EXCL           DATE,
    BNF_DAT_SOLIC_REINCL         DATE,
    BNF_NRO_DIA_VENCTO_PROX      NUMBER(2, 0),
    BNF_NRO_DIA_BASE_INIC_COB    NUMBER(2, 0),
    BNF_IND_COBRCA_PRIM_MENSLD   VARCHAR2(1 CHAR),
    BNF_DAT_REINCL_COBRCA        DATE,
    BNF_FLG_NOVAS_COBERTURAS     CHAR(1),
    BNF_FLG_CARENC_CUMPRIDAS     CHAR(1),
    BNF_IND_EXG_DCLR_SAUDE       VARCHAR2(1 CHAR),
    BNF_IND_PRNCH_DCLR_SAUDE     VARCHAR2(1 CHAR),
    BNF_AMC_ID                   VARCHAR2(10 CHAR) DEFAULT null,
    BNF_QTD_MESES_VENCTO         NUMBER(3, 0),
    BNF_ID                       NUMBER(12, 0),
    BNF_IND_FORMUL_IMPSAO_CART   NUMBER(10, 0),
    DT_CARGA                     TIMESTAMP
) TABLESPACE TABS_DATS;