CREATE TABLE HMG_STG.ODS_DTC_CM_PREST (
	CD_CM_PREST NUMBER(20,0),
	CD_PREST_EXTERNO NUMBER(20,0),
	PREST_COD NUMBER(10,0),
	NM_PREST  VARCHAR2(70 CHAR),
	CD_PRESTADOR NUMBER(30,0),
	CD_UNIMED NUMBER(4,0),
	CD_ADM_EXTERNO2 NUMBER(30,0),
	CD_ADM_EXTERNO_OLD NUMBER(30,0),
	CD_FORNECEDOR NUMBER(30,0),
	TP_CM_PREST  VARCHAR2(1 CHAR) DEFAULT 'P',
	DT_CARGA TIMESTAMP
                                      ) TABLESPACE TABS_DAT;

CREATE TABLE PRD_STG.ODS_DTC_CM_PREST (
	CD_CM_PREST NUMBER(20,0),
	CD_PREST_EXTERNO NUMBER(20,0),
	PREST_COD NUMBER(10,0),
	NM_PREST  VARCHAR2(70 CHAR),
	CD_PRESTADOR NUMBER(30,0),
	CD_UNIMED NUMBER(4,0),
	CD_ADM_EXTERNO2 NUMBER(30,0),
	CD_ADM_EXTERNO_OLD NUMBER(30,0),
	CD_FORNECEDOR NUMBER(30,0),
	TP_CM_PREST  VARCHAR2(1 CHAR) DEFAULT 'P',
	DT_CARGA TIMESTAMP
                                      ) TABLESPACE TABS_DAT;