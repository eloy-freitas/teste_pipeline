CREATE TABLE HMG_STG.ODS_DBU_PESSOA (
	PES_COD NUMBER(10,0),
	PAIS_COD NUMBER(10,0),
	PES_IND CHAR(1),
	PES_NOM_ABREV VARCHAR2(25 CHAR),
	PES_NOM_COMP VARCHAR2(120 CHAR),
	PES_NOM_MAE VARCHAR2(70 CHAR),
	PES_DAT_NASC DATE,
	PES_IND_SEXO VARCHAR2(1 CHAR),
	PES_NOM_FANT VARCHAR2(100 CHAR),
	PES_IND_ESTADO_CIVIL VARCHAR2(1 CHAR),
	CARGA_NRO_SEQ NUMBER,
	PES_FLG_NAO_POSSUI_CPF CHAR(1) DEFAULT 'N',
	PES_NOM_CPF VARCHAR2(120 CHAR),
	PES_FLG_EXC_NOM CHAR(1) DEFAULT 'N',
	PES_FLG_EXC_NOM_MAE CHAR(1) DEFAULT 'N',
	CIDADE_COD NUMBER(10,0),
	ESC_COD NUMBER(2,0),
	PES_DAT_NASC_CPF DATE,
	PES_PAIS_NACIONALIDADE NUMBER(10,0),
	PES_NOM_SOCIAL VARCHAR2(70 CHAR),
	ETNIA_COD NUMBER(2,0),
	PES_NOM_PAI VARCHAR2(70 CHAR),
	PES_FLG_APOSENTADO VARCHAR2(1 CHAR),
	PES_FLG_DEF_FISICA VARCHAR2(1 CHAR),
	PES_FLG_DEF_VISUAL VARCHAR2(1 CHAR),
	PES_FLG_DEF_AUDIT VARCHAR2(1 CHAR),
	PES_FLG_DEF_MENTAL VARCHAR2(1 CHAR),
	PES_FLG_DEF_INTEL VARCHAR2(1 CHAR),
	PES_FLG_TRAB_REAB_ADAP VARCHAR2(1 CHAR),
	PES_OBS_DEF VARCHAR2(255 CHAR),
	PES_DAT_ENTRADA_PAIS DATE,
	VISTO_COD NUMBER(2,0),
	PES_FLG_CASADO_BR VARCHAR2(1 CHAR),
	PES_FLG_FILHO_BR VARCHAR2(1 CHAR),
	PES_PAIS_EXT NUMBER(10,0),
	PES_CEP_EXT VARCHAR2(10 CHAR),
	PES_DES_CIDADE_EXT VARCHAR2(50 CHAR),
	PES_DES_BAIRRO_EXT VARCHAR2(60 CHAR),
	PES_DES_LOGRAD_EXT VARCHAR2(80 CHAR),
	PES_NRO_LOGRAD_EXT VARCHAR2(10 CHAR),
	PES_DES_CMPLMN_LOGRAD_EXT VARCHAR2(30 CHAR),
	PES_IND_TIPO_SOCIETARIO NUMBER(3,0),
	PES_COD_CLI_ERP VARCHAR2(20 CHAR),
	PES_DTH_INCL VARCHAR2(20 CHAR),
	PES_COD_FORNEC_ERP VARCHAR2(20 CHAR),
	PES_NOME_SOCIAL_CARTAO VARCHAR2(25 CHAR),
	PES_IND_TIPO_GENERO_SOCIAL VARCHAR2(1 CHAR),
	PES_FLG_EMP_INDIVIDUAL VARCHAR2(1 CHAR),
	DT_CARGA TIMESTAMP
                                    ) TABLESPACE TABS_DAT;


	CREATE TABLE PRD_STG.ODS_DBU_PESSOA (
	PES_COD NUMBER(10,0),
	PAIS_COD NUMBER(10,0),
	PES_IND CHAR(1),
	PES_NOM_ABREV VARCHAR2(25 CHAR),
	PES_NOM_COMP VARCHAR2(120 CHAR),
	PES_NOM_MAE VARCHAR2(70 CHAR),
	PES_DAT_NASC DATE,
	PES_IND_SEXO VARCHAR2(1 CHAR),
	PES_NOM_FANT VARCHAR2(100 CHAR),
	PES_IND_ESTADO_CIVIL VARCHAR2(1 CHAR),
	CARGA_NRO_SEQ NUMBER,
	PES_FLG_NAO_POSSUI_CPF CHAR(1) DEFAULT 'N',
	PES_NOM_CPF VARCHAR2(120 CHAR),
	PES_FLG_EXC_NOM CHAR(1) DEFAULT 'N',
	PES_FLG_EXC_NOM_MAE CHAR(1) DEFAULT 'N',
	CIDADE_COD NUMBER(10,0),
	ESC_COD NUMBER(2,0),
	PES_DAT_NASC_CPF DATE,
	PES_PAIS_NACIONALIDADE NUMBER(10,0),
	PES_NOM_SOCIAL VARCHAR2(70 CHAR),
	ETNIA_COD NUMBER(2,0),
	PES_NOM_PAI VARCHAR2(70 CHAR),
	PES_FLG_APOSENTADO VARCHAR2(1 CHAR),
	PES_FLG_DEF_FISICA VARCHAR2(1 CHAR),
	PES_FLG_DEF_VISUAL VARCHAR2(1 CHAR),
	PES_FLG_DEF_AUDIT VARCHAR2(1 CHAR),
	PES_FLG_DEF_MENTAL VARCHAR2(1 CHAR),
	PES_FLG_DEF_INTEL VARCHAR2(1 CHAR),
	PES_FLG_TRAB_REAB_ADAP VARCHAR2(1 CHAR),
	PES_OBS_DEF VARCHAR2(255 CHAR),
	PES_DAT_ENTRADA_PAIS DATE,
	VISTO_COD NUMBER(2,0),
	PES_FLG_CASADO_BR VARCHAR2(1 CHAR),
	PES_FLG_FILHO_BR VARCHAR2(1 CHAR),
	PES_PAIS_EXT NUMBER(10,0),
	PES_CEP_EXT VARCHAR2(10 CHAR),
	PES_DES_CIDADE_EXT VARCHAR2(50 CHAR),
	PES_DES_BAIRRO_EXT VARCHAR2(60 CHAR),
	PES_DES_LOGRAD_EXT VARCHAR2(80 CHAR),
	PES_NRO_LOGRAD_EXT VARCHAR2(10 CHAR),
	PES_DES_CMPLMN_LOGRAD_EXT VARCHAR2(30 CHAR),
	PES_IND_TIPO_SOCIETARIO NUMBER(3,0),
	PES_COD_CLI_ERP VARCHAR2(20 CHAR),
	PES_DTH_INCL VARCHAR2(20 CHAR),
	PES_COD_FORNEC_ERP VARCHAR2(20 CHAR),
	PES_NOME_SOCIAL_CARTAO VARCHAR2(25 CHAR),
	PES_IND_TIPO_GENERO_SOCIAL VARCHAR2(1 CHAR),
	PES_FLG_EMP_INDIVIDUAL VARCHAR2(1 CHAR),
	DT_CARGA TIMESTAMP

	                                          ) TABLESPACE TABS_DAT;