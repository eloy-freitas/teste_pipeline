/*
    Foi excedido a quantidade de caracteres para o nome da tabela

     Antes: ODS_DTC_AUTSC2_SOLIC_ITENS_ERRO
    Depois: ODS_AUTSC2_SOLIC_ITENS_ERRO
*/


CREATE TABLE HMG_STG.ODS_AUTSC2_SOLIC_ITENS_ERRO (
	ERRO_COD				NUMBER
	, CD_SOLICITACAO		NUMBER(30, 0)
	, NR_SEQ_ITEM			NUMBER
	, DS_MSG_ERRO_ADICIONAL VARCHAR2(300 CHAR)
	, DT_DIGITACAO			DATE
	, DT_CARGA				TIMESTAMP
) TABLESPACE TABS_DAT;


CREATE TABLE PRD_STG.ODS_AUTSC2_SOLIC_ITENS_ERRO (
	ERRO_COD				NUMBER
	, CD_SOLICITACAO		NUMBER(30, 0)
	, NR_SEQ_ITEM			NUMBER
	, DS_MSG_ERRO_ADICIONAL VARCHAR2(300 CHAR)
	, DT_DIGITACAO			DATE
	, DT_CARGA				TIMESTAMP
) TABLESPACE TABS_DAT;

