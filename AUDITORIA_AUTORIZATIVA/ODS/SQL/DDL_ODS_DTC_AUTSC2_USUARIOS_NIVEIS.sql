CREATE TABLE HMG_STG.ODS_DTC_AUTSC2_USUARIOS_NIVEIS (
	CD_USUARIO  NUMBER(5,0),
	CD_NIVEL    NUMBER(5,0),
	DT_CARGA    TIMESTAMP
) TABLESPACE TABS_DAT;

GRANT SELECT ON HMG_STG.ODS_DTC_AUTSC2_USUARIOS_NIVEIS TO USER_BI_DEV;


CREATE TABLE PRD_STG.ODS_DTC_AUTSC2_USUARIOS_NIVEIS (
	CD_USUARIO NUMBER(5,0),
	CD_NIVEL NUMBER(5,0),
	DT_CARGA    TIMESTAMP
) TABLESPACE TABS_DAT;

GRANT SELECT ON PRD_STG.ODS_DTC_AUTSC2_USUARIOS_NIVEIS TO USER_BI_DEV;