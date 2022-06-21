CREATE TABLE HMG_STG.ODS_DBU_PREST (
	PREST_COD NUMBER(10,0),
	PREST_COD_PESSOA NUMBER(10,0),
	TIPPR_COD NUMBER(10,0),
	PREST_COD_UNI NUMBER(4,0),
	PREST_COD_CRM NUMBER(15,0),
	PREST_COD_UF_CRM VARCHAR2(2 CHAR),
	PREST_TIP_ATO NUMBER(10,0),
	PREST_DAT_INIC_SERVIC DATE,
	PREST_DAT_INIC_CNTRAT DATE,
	PREST_DAT_EXCL DATE,
	PREST_COD_MOTIVO_EXCL VARCHAR2(2 CHAR),
	PREST_COD_CRM_RESPON_TEC VARCHAR2(15 CHAR),
	PREST_COD_UF_CRM_RESPON_TEC VARCHAR2(2 CHAR),
	PREST_COD_ALVARA_LOCALI VARCHAR2(20 CHAR),
	PREST_NOM_RESPON_TEC VARCHAR2(70 CHAR),
	PREST_COD_CNES NUMBER(8,0),
	PREST_COD_AGNCIA NUMBER(4,0),
	PREST_COD_ALVARA_SANIT VARCHAR2(20 CHAR),
	PREST_COD_CONTA_CORRNT VARCHAR2(15 CHAR),
	PREST_COD_BANCO NUMBER(4,0),
	PREST_IND_CSLL CHAR(1),
	PREST_COD_MOTIVO_CSLL VARCHAR2(2 CHAR),
	PREST_IND_PIS CHAR(1),
	PREST_COD_MOTIVO_PIS VARCHAR2(2 CHAR),
	PREST_IND_COFINS CHAR(1),
	PREST_COD_MOTIVO_COFINS VARCHAR2(2 CHAR),
	PREST_NRO_ISS VARCHAR2(15 CHAR),
	PREST_NRO_PRCSSO_JDCIAL VARCHAR2(15 CHAR),
	PREST_NRO_INSS VARCHAR2(15 CHAR),
	PREST_TIP_VINCL_INSS CHAR(1),
	PREST_PER_INSS_PF NUMBER(6,2),
	PREST_PER_INSS_PJ NUMBER(6,2),
	PREST_NRO_ANO_PRCSSO_JDCIAL NUMBER(4,0),
	PREST_QTD_DEPNTE NUMBER(3,0),
	PREST_IND_IR CHAR(1),
	PREST_COD_MOTIVO_IR VARCHAR2(2 CHAR),
	PREST_COD_MATRIZ NUMBER(10,0),
	PREST_DAT_EFETIV DATE,
	PREST_COD_AGRUP NUMBER(10,0),
	PREST_COD_EXTERN_UNIMED_ORIGEM NUMBER(10,0),
	PREST_IND_ACESSO_ITRNET CHAR(1) DEFAULT 'S',
	PREST_IND_EXPORT_DMTRTV_PORTAL CHAR(1) DEFAULT 'S',
	PREST_IND_AGRUP_MATMED_PORTAL CHAR(1) DEFAULT 'N',
	PREST_COD_CRTIFC_RGLRID VARCHAR2(10 CHAR),
	PREST_COD_NTRZ_FINAN VARCHAR2(10 CHAR),
	PREST_QTD_LEITO NUMBER(6,0),
	PREST_QTD_LEITO_CNTRAT NUMBER(6,0),
	PREST_QTD_LEITO_PSIQ NUMBER(6,0),
	PREST_QTD_LEITO_UTI NUMBER(6,0),
	PREST_QTD_LEITO_UTI_NEONAT NUMBER(6,0),
	PREST_QTD_LEITO_UTI_PDIATR NUMBER(6,0),
	PREST_TIP_EXTERN NUMBER(2,0),
	PREST_DAT_INIC_VIGEN_COOPER DATE,
	PREST_QTD_LEITO_CLINICO NUMBER(6,0),
	PREST_QTD_LEITO_CIRURGICO NUMBER(6,0),
	PREST_QTD_LEITO_OBSTETRICO NUMBER(6,0),
	PREST_QTD_LEITO_PDIATR NUMBER(6,0),
	PREST_QTD_LEITO_UTI_INT_NEONAT NUMBER(6,0),
	PREST_COD_CGC_CPF_R402 NUMBER(15,0),
	PREST_COD_UNI_R402 NUMBER(4,0),
	PREST_QTD_LEITOS_HOSP_DIA NUMBER(6,0),
	PREST_COD_GRUPO NUMBER(6,0),
	PREST_FLG_FORNEC VARCHAR2(1 CHAR) DEFAULT 'N' ,
	PREST_NR_LEITO_CLINIC_EXCT_UTI NUMBER(6,0),
	PREST_NR_LEITO_CIRUR_EXCT_UTI NUMBER(6,0),
	PREST_NR_LEITO_OBSTR_EXCT_UTI NUMBER(6,0),
	PREST_NR_LEITO_PSIQU_EXCT_UTI NUMBER(6,0),
	PREST_COD_SEGMENT NUMBER(6,0),
	PREST_IND_ISS VARCHAR2(1 CHAR),
	PREST_COD_MOTIVO_ISS VARCHAR2(2 CHAR),
	PREST_DV_CONTA_CORRNT VARCHAR2(2 CHAR),
	PREST_FLG_FORNEC_UNIMED VARCHAR2(1 CHAR) DEFAULT 'N' ,
	PREST_IND_CAMARA_CMPSAO NUMBER(2,0),
	PREST_COD_FORNEC_ERP VARCHAR2(20 CHAR),
	PREST_IND_PUBLICA_ANS CHAR(1),
	PREST_QTD_LEITO_UTI_INT NUMBER(6,0),
	PREST_DAT_ALVARA_SANIT DATE,
	PREST_DAT_ALVARA_LOCALI DATE,
	PREST_DAT_CRTIFC_RGLRID DATE,
	PREST_GRPVP_COD NUMBER(10,0),
	PREST_DAT_VENCTO_ALVARA DATE,
	PREST_PRTCLO_ALVARA VARCHAR2(10 CHAR),
	PREST_DAT_PRTCLO_ALVARA DATE,
	PREST_DAT_VENCTO_ALVARA_LOCAL DATE,
	PREST_PRTCLO_ALVARA_LOCAL VARCHAR2(10 CHAR),
	PREST_DAT_PRTCLO_ALVARA_LOCAL DATE,
	PREST_SIGLA_CONSEL_PROFIS VARCHAR2(45 CHAR),
	PREST_IND_FORMA_PAG VARCHAR2(1 CHAR),
	PREST_NOME_PREST_EXTERNO VARCHAR2(120 CHAR),
	PREST_DOCUMENTO_PREST_EXTERNO VARCHAR2(45 CHAR),
	PREST_DAT_EXPED_DOC_OC DATE,
	PREST_DAT_VALIDADE_DOC_OC DATE,
	PREST_IND_VINC_CREDITORIO VARCHAR2(1 CHAR) DEFAULT 'N',
	PREST_COD_NRO_CBO_RESPON_TEC NUMBER(6,0),
	PREST_DAT_CERTIF_9001 DATE,
	PREST_DAT_VALID_9001 DATE,
	PREST_ORGAO_DOC_OC NUMBER(10,0),
	PREST_OBS VARCHAR2(250 CHAR),
	PREST_CPF_RESPON_TEC NUMBER(11,0),
	PREST_IND_NIVEL_DISP NUMBER(3,0),
	PREST_IND_UTI VARCHAR2(2 CHAR),
	PREST_IND_SADT VARCHAR2(1 CHAR),
	PREST_TP_ACREDITACAO NUMBER(3,0),
	PREST_TIP_PESSOA_FONTE_RCURSO VARCHAR2(1 CHAR),
	PREST_NRO_DOC_FONTE_RCURSO VARCHAR2(14 CHAR),
	PREST_TIP_DOC_PREST_EXTERNO NUMBER(10,0),
	DT_CARGA TIMESTAMP
                             ) TABLESPACE TABS_DAT;

CREATE TABLE PRD_STG.ODS_DBU_PREST (
	PREST_COD NUMBER(10,0),
	PREST_COD_PESSOA NUMBER(10,0),
	TIPPR_COD NUMBER(10,0),
	PREST_COD_UNI NUMBER(4,0),
	PREST_COD_CRM NUMBER(15,0),
	PREST_COD_UF_CRM VARCHAR2(2 CHAR),
	PREST_TIP_ATO NUMBER(10,0),
	PREST_DAT_INIC_SERVIC DATE,
	PREST_DAT_INIC_CNTRAT DATE,
	PREST_DAT_EXCL DATE,
	PREST_COD_MOTIVO_EXCL VARCHAR2(2 CHAR),
	PREST_COD_CRM_RESPON_TEC VARCHAR2(15 CHAR),
	PREST_COD_UF_CRM_RESPON_TEC VARCHAR2(2 CHAR),
	PREST_COD_ALVARA_LOCALI VARCHAR2(20 CHAR),
	PREST_NOM_RESPON_TEC VARCHAR2(70 CHAR),
	PREST_COD_CNES NUMBER(8,0),
	PREST_COD_AGNCIA NUMBER(4,0),
	PREST_COD_ALVARA_SANIT VARCHAR2(20 CHAR),
	PREST_COD_CONTA_CORRNT VARCHAR2(15 CHAR),
	PREST_COD_BANCO NUMBER(4,0),
	PREST_IND_CSLL CHAR(1),
	PREST_COD_MOTIVO_CSLL VARCHAR2(2 CHAR),
	PREST_IND_PIS CHAR(1),
	PREST_COD_MOTIVO_PIS VARCHAR2(2 CHAR),
	PREST_IND_COFINS CHAR(1),
	PREST_COD_MOTIVO_COFINS VARCHAR2(2 CHAR),
	PREST_NRO_ISS VARCHAR2(15 CHAR),
	PREST_NRO_PRCSSO_JDCIAL VARCHAR2(15 CHAR),
	PREST_NRO_INSS VARCHAR2(15 CHAR),
	PREST_TIP_VINCL_INSS CHAR(1),
	PREST_PER_INSS_PF NUMBER(6,2),
	PREST_PER_INSS_PJ NUMBER(6,2),
	PREST_NRO_ANO_PRCSSO_JDCIAL NUMBER(4,0),
	PREST_QTD_DEPNTE NUMBER(3,0),
	PREST_IND_IR CHAR(1),
	PREST_COD_MOTIVO_IR VARCHAR2(2 CHAR),
	PREST_COD_MATRIZ NUMBER(10,0),
	PREST_DAT_EFETIV DATE,
	PREST_COD_AGRUP NUMBER(10,0),
	PREST_COD_EXTERN_UNIMED_ORIGEM NUMBER(10,0),
	PREST_IND_ACESSO_ITRNET CHAR(1) DEFAULT 'S',
	PREST_IND_EXPORT_DMTRTV_PORTAL CHAR(1) DEFAULT 'S',
	PREST_IND_AGRUP_MATMED_PORTAL CHAR(1) DEFAULT 'N',
	PREST_COD_CRTIFC_RGLRID VARCHAR2(10 CHAR),
	PREST_COD_NTRZ_FINAN VARCHAR2(10 CHAR),
	PREST_QTD_LEITO NUMBER(6,0),
	PREST_QTD_LEITO_CNTRAT NUMBER(6,0),
	PREST_QTD_LEITO_PSIQ NUMBER(6,0),
	PREST_QTD_LEITO_UTI NUMBER(6,0),
	PREST_QTD_LEITO_UTI_NEONAT NUMBER(6,0),
	PREST_QTD_LEITO_UTI_PDIATR NUMBER(6,0),
	PREST_TIP_EXTERN NUMBER(2,0),
	PREST_DAT_INIC_VIGEN_COOPER DATE,
	PREST_QTD_LEITO_CLINICO NUMBER(6,0),
	PREST_QTD_LEITO_CIRURGICO NUMBER(6,0),
	PREST_QTD_LEITO_OBSTETRICO NUMBER(6,0),
	PREST_QTD_LEITO_PDIATR NUMBER(6,0),
	PREST_QTD_LEITO_UTI_INT_NEONAT NUMBER(6,0),
	PREST_COD_CGC_CPF_R402 NUMBER(15,0),
	PREST_COD_UNI_R402 NUMBER(4,0),
	PREST_QTD_LEITOS_HOSP_DIA NUMBER(6,0),
	PREST_COD_GRUPO NUMBER(6,0),
	PREST_FLG_FORNEC VARCHAR2(1 CHAR) DEFAULT 'N' ,
	PREST_NR_LEITO_CLINIC_EXCT_UTI NUMBER(6,0),
	PREST_NR_LEITO_CIRUR_EXCT_UTI NUMBER(6,0),
	PREST_NR_LEITO_OBSTR_EXCT_UTI NUMBER(6,0),
	PREST_NR_LEITO_PSIQU_EXCT_UTI NUMBER(6,0),
	PREST_COD_SEGMENT NUMBER(6,0),
	PREST_IND_ISS VARCHAR2(1 CHAR),
	PREST_COD_MOTIVO_ISS VARCHAR2(2 CHAR),
	PREST_DV_CONTA_CORRNT VARCHAR2(2 CHAR),
	PREST_FLG_FORNEC_UNIMED VARCHAR2(1 CHAR) DEFAULT 'N' ,
	PREST_IND_CAMARA_CMPSAO NUMBER(2,0),
	PREST_COD_FORNEC_ERP VARCHAR2(20 CHAR),
	PREST_IND_PUBLICA_ANS CHAR(1),
	PREST_QTD_LEITO_UTI_INT NUMBER(6,0),
	PREST_DAT_ALVARA_SANIT DATE,
	PREST_DAT_ALVARA_LOCALI DATE,
	PREST_DAT_CRTIFC_RGLRID DATE,
	PREST_GRPVP_COD NUMBER(10,0),
	PREST_DAT_VENCTO_ALVARA DATE,
	PREST_PRTCLO_ALVARA VARCHAR2(10 CHAR),
	PREST_DAT_PRTCLO_ALVARA DATE,
	PREST_DAT_VENCTO_ALVARA_LOCAL DATE,
	PREST_PRTCLO_ALVARA_LOCAL VARCHAR2(10 CHAR),
	PREST_DAT_PRTCLO_ALVARA_LOCAL DATE,
	PREST_SIGLA_CONSEL_PROFIS VARCHAR2(45 CHAR),
	PREST_IND_FORMA_PAG VARCHAR2(1 CHAR),
	PREST_NOME_PREST_EXTERNO VARCHAR2(120 CHAR),
	PREST_DOCUMENTO_PREST_EXTERNO VARCHAR2(45 CHAR),
	PREST_DAT_EXPED_DOC_OC DATE,
	PREST_DAT_VALIDADE_DOC_OC DATE,
	PREST_IND_VINC_CREDITORIO VARCHAR2(1 CHAR) DEFAULT 'N',
	PREST_COD_NRO_CBO_RESPON_TEC NUMBER(6,0),
	PREST_DAT_CERTIF_9001 DATE,
	PREST_DAT_VALID_9001 DATE,
	PREST_ORGAO_DOC_OC NUMBER(10,0),
	PREST_OBS VARCHAR2(250 CHAR),
	PREST_CPF_RESPON_TEC NUMBER(11,0),
	PREST_IND_NIVEL_DISP NUMBER(3,0),
	PREST_IND_UTI VARCHAR2(2 CHAR),
	PREST_IND_SADT VARCHAR2(1 CHAR),
	PREST_TP_ACREDITACAO NUMBER(3,0),
	PREST_TIP_PESSOA_FONTE_RCURSO VARCHAR2(1 CHAR),
	PREST_NRO_DOC_FONTE_RCURSO VARCHAR2(14 CHAR),
	PREST_TIP_DOC_PREST_EXTERNO NUMBER(10,0),
	DT_CARGA TIMESTAMP
                             ) TABLESPACE TABS_DAT;