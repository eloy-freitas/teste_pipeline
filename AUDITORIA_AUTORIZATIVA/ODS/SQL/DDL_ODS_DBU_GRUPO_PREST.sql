CREATE TABLE HMG_STG.ODS_DBU_GRUPO_PREST (
	GRPRE_COD NUMBER(6,0),
	GRPRE_DES VARCHAR2(40 CHAR),
	GRPRE_IND_FORNEC VARCHAR2(1 CHAR) DEFAULT 'N',
	DT_CARGA TIMESTAMP

) TABLESPACE TABS_DAT;

CREATE TABLE HMG_PRD.ODS_DBU_GRUPO_PREST (
	GRPRE_COD NUMBER(6,0),
	GRPRE_DES VARCHAR2(40 CHAR),
	GRPRE_IND_FORNEC VARCHAR2(1 CHAR) DEFAULT 'N',
	DT_CARGA TIMESTAMP

) TABLESPACE TABS_DAT;