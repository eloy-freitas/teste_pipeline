CREATE TABLE HMG_STG.ODS_DTC_CM_GUIAS (
	CD_GUIA                     NUMBER(20,0),
	CD_CM_ATEND_SOLIC           NUMBER(20,0),
	CD_GUIA_PAI                 NUMBER(20,0),
	DM_TP_GUIA                  NUMBER(2,0),
	CD_CM_ATEND_EXEC            NUMBER(20,0),
	NR_GUIA                     VARCHAR2(20 CHAR),
	DT_EMISSAO_GUIA             DATE,
	DT_AUTORIZACAO              DATE,
	NR_SENHA                    VARCHAR2(20 CHAR),
	DT_VALIDADE_SENHA           DATE,
	DS_OBSERVACAO               VARCHAR2(1000 CHAR),
	CD_AUTSC_SOLIC              NUMBER(20,0),
	DM_CD_SITUACAO_AUTRIZ       NUMBER,
	CD_ORIGEM                   NUMBER(20,0),
	CD_GUIA_PARCIAL             NUMBER(20,0),
	DT_IMPRESSAO_GUIA           DATE,
	DT_PROC_PRECIF              DATE,
	NR_VERSAO                   VARCHAR2(7 CHAR),
	FG_ATENDIMENTO_RN           VARCHAR2(1 CHAR),
	NR_GUIA_PRESTADOR           VARCHAR2(20 CHAR),
	DS_JUSTIF_TECNICA_OPME      VARCHAR2(2000 CHAR),
	DS_ESPEC_MATERIAL_OPME      VARCHAR2(500 CHAR),
	DS_OBSERVACAO_SOLIC         VARCHAR2(1000 CHAR),
	FG_TIPO_ENTRADA             NUMBER(1,0),
	NR_REGULACAO                VARCHAR2(12 CHAR),
	CD_GUIA_TERCEIRIZADA        NUMBER(20,0),
	FG_LIMINAR_JUDICIAL         CHAR(1),
	CD_CM_PREST_PRINC_EXEC      NUMBER(20,0),
	CD_PROTOCOLO                NUMBER(20,0),
	FG_ENVIO_PRODUCAO           NUMBER(1,0),
	NR_VERSAO_EXECUCAO          NUMBER,
	FG_EXIGE_AUDITORIA          NUMBER(1,0),
	CD_TOKEN                    VARCHAR2(10 CHAR),
	DT_MIN_EXEC                 DATE,
	FG_SADT_VINCULO             NUMBER(1,0),
	DT_CARGA                    TIMESTAMP
) TABLESPACE TABS_DAT;

CREATE TABLE PRD_STG.ODS_DTC_CM_GUIAS (
	CD_GUIA                     NUMBER(20,0),
	CD_CM_ATEND_SOLIC           NUMBER(20,0),
	CD_GUIA_PAI                 NUMBER(20,0),
	DM_TP_GUIA                  NUMBER(2,0),
	CD_CM_ATEND_EXEC            NUMBER(20,0),
	NR_GUIA                     VARCHAR2(20 CHAR),
	DT_EMISSAO_GUIA             DATE,
	DT_AUTORIZACAO              DATE,
	NR_SENHA                    VARCHAR2(20 CHAR),
	DT_VALIDADE_SENHA           DATE,
	DS_OBSERVACAO               VARCHAR2(1000 CHAR),
	CD_AUTSC_SOLIC              NUMBER(20,0),
	DM_CD_SITUACAO_AUTRIZ       NUMBER,
	CD_ORIGEM                   NUMBER(20,0),
	CD_GUIA_PARCIAL             NUMBER(20,0),
	DT_IMPRESSAO_GUIA           DATE,
	DT_PROC_PRECIF              DATE,
	NR_VERSAO                   VARCHAR2(7 CHAR),
	FG_ATENDIMENTO_RN           VARCHAR2(1 CHAR),
	NR_GUIA_PRESTADOR           VARCHAR2(20 CHAR),
	DS_JUSTIF_TECNICA_OPME      VARCHAR2(2000 CHAR),
	DS_ESPEC_MATERIAL_OPME      VARCHAR2(500 CHAR),
	DS_OBSERVACAO_SOLIC         VARCHAR2(1000 CHAR),
	FG_TIPO_ENTRADA             NUMBER(1,0),
	NR_REGULACAO                VARCHAR2(12 CHAR),
	CD_GUIA_TERCEIRIZADA        NUMBER(20,0),
	FG_LIMINAR_JUDICIAL         CHAR(1),
	CD_CM_PREST_PRINC_EXEC      NUMBER(20,0),
	CD_PROTOCOLO                NUMBER(20,0),
	FG_ENVIO_PRODUCAO           NUMBER(1,0),
	NR_VERSAO_EXECUCAO          NUMBER,
	FG_EXIGE_AUDITORIA          NUMBER(1,0),
	CD_TOKEN                    VARCHAR2(10 CHAR),
	DT_MIN_EXEC                 DATE,
	FG_SADT_VINCULO             NUMBER(1,0),
	DT_CARGA                    TIMESTAMP
) TABLESPACE TABS_DAT;