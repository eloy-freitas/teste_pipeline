CREATE TABLE HMG_STG.ODS_DBU_ESPEC_MEDICA (
	ESPMD_COD NUMBER(3,0),
	ESPMD_DES VARCHAR2(30 CHAR),
	ESPMD_QTD_IDADE_LIMIT NUMBER(3,0),
	ESPMD_IND_ESPEC_GRUPO CHAR(5),
	ESPMD_COD_NRO_CBO NUMBER(6,0),
	DT_CARGA TIMESTAMP
)
TABLESPACE TABS_DAT;

CREATE TABLE PRD_STG.ODS_DBU_ESPEC_MEDICA (
	ESPMD_COD NUMBER(3,0),
	ESPMD_DES VARCHAR2(30 CHAR),
	ESPMD_QTD_IDADE_LIMIT NUMBER(3,0),
	ESPMD_IND_ESPEC_GRUPO CHAR(5),
	ESPMD_COD_NRO_CBO NUMBER(6,0),
	DT_CARGA TIMESTAMP
)
TABLESPACE TABS_DAT;