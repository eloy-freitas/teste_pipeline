CREATE TABLE HMG_STG.ODS_AUTSC2_SOLICITACOES_ERRO (
	ERRO_COD                    NUMBER,
	CD_SOLICITACAO              NUMBER(30,0),
	DS_MSG_ERRO_ADICIONAL       VARCHAR2(300 CHAR),
	DT_CARGA                    TIMESTAMP
) TABLESPACE TABS_DAT;

CREATE TABLE PRD_STG.ODS_AUTSC2_SOLICITACOES_ERRO (
	ERRO_COD                    NUMBER,
	CD_SOLICITACAO              NUMBER(30,0),
	DS_MSG_ERRO_ADICIONAL       VARCHAR2(300 CHAR),
	DT_CARGA                    TIMESTAMP
) TABLESPACE TABS_DAT;