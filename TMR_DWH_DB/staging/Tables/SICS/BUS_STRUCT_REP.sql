﻿CREATE TABLE [staging].[BUS_STRUCT_REP](
	[OBJECT_ID] [char](32) NOT NULL,
	[FK_BUSINESS] [char](32) NULL,
	[FK_INS_PERIOD] [char](32) NULL,
	[FK_LC_PHASE] [char](32) NULL,
	[FK_LC_STATUS_CURR] [char](32) NULL,
	[FK_LC_STATUS_PREV] [char](32) NULL,
	[FK_SOC] [char](32) NULL,
	[FK_SOC_CLASSIFIC] [char](32) NULL,
	[FK_COND_CONT] [char](32) NULL,
	[FK_IBR_CONT] [char](32) NULL,
	[FK_AMENDMENT] [char](32) NULL,
	[FK_IP_TIMESPAN] [char](32) NULL,
	[FK_PCLF_ACCOUNTS] [char](32) NULL,
	[FK_PCLF_USERDEF] [char](32) NULL,
	[FK_PCLF_USERDEF_L2] [char](32) NULL,
	[FK_PCLF_USERDEF_L3] [char](32) NULL,
	[FK_PCLF_USERDEF_L4] [char](32) NULL,
	[FK_PCLF_USERDEF_L5] [char](32) NULL,
	[FK_PC_ESTIMATE] [char](32) NULL,
	[FK_PROT_ASS] [char](32) NULL,
	[FK_NP_PROT_ASS] [char](32) NULL,
	[FK_XL_CA] [char](32) NULL,
	[FK_PP_PROP_TTY] [char](32) NULL,
	[FK_PP_XL] [char](32) NULL,
	[FK_PP_SL] [char](32) NULL,
	[FK_PORTF_PROG] [char](32) NULL,
	[FK_PP_AL] [char](32) NULL,
	[IS_CURRENT_LCP] [char](1) NULL,
	[INSRD_PERIOD_START] [datetime] NULL,
	[INSRD_PERIOD_END] [datetime] NULL,
	[LAYER_NUMBER] [int] NULL,
	[SEQUENCE_NUMBER] [int] NULL,
	[IP_IS_CEASE_ACC] [char](1) NULL,
	[IP_FORMER_ID] [char](50) NULL,
	[IP_ORIG_FORMER_ID] [char](20) NULL,
	[IS_DIRECT] [char](1) NULL,
	[UNDERWR_YEAR] [int] NULL,
	[IS_IP_PLACEM_COMP] [char](1) NULL,
	[IS_IP_ACTIVE] [char](1) NULL,
	[FRK_IP_REN_OPTION] [char](15) NULL,
	[FSK_IP_REN_OPTION] [int] NULL,
	[FK_IP_OF_CED_CONT] [char](32) NULL,
	[FK_IP_PNC] [char](32) NULL,
	[FK_IP_OCC] [char](32) NULL,
	[IS_IP_LATEST] [char](1) NULL,
	[FK_IP_CANC] [char](32) NULL,
	[FRK_IP_CANC_STATUS] [char](15) NULL,
	[FSK_IP_CANC_STATUS] [int] NULL,
	[IDENTIFIER] [char](36) NULL,
	[ID_PREFIX] [char](29) NULL,
	[ID_SUFFIX] [char](1) NULL,
	[ID_SERIE_NO] [numeric](10, 0) NULL,
	[FORMER_IDENTIFIER] [char](50) NULL,
	[INCEPTION_DATE] [datetime] NULL,
	[CANCELLATION_DATE] [datetime] NULL,
	[IS_SINGLE_RETRO] [char](1) NULL,
	[FRK_TYPE_OF_BUS] [char](15) NULL,
	[FSK_TYPE_OF_BUS] [int] NULL,
	[FRK_LEVEL_OF_BUS] [char](15) NULL,
	[FSK_LEVEL_OF_BUS] [int] NULL,
	[FK_MERGER_GRP] [char](32) NULL,
	[FRK_ACCESS_CODE] [char](15) NULL,
	[FSK_ACCESS_CODE] [int] NULL,
	[FRK_ACCOUNT_GROUP] [char](15) NULL,
	[FSK_ACCOUNT_GROUP] [int] NULL,
	[LST_CMPL_ACC_YEAR] [int] NULL,
	[FK_BROKER] [char](32) NULL,
	[FK_CEDENT] [char](32) NULL,
	[FK_INSURED] [char](32) NULL,
	[FK_REINSURER] [char](32) NULL,
	[BROKER_REF] [char](50) NULL,
	[CEDENT_REF] [char](50) NULL,
	[INSURED_REF] [char](50) NULL,
	[REINSURER_REF] [char](50) NULL,
	[BROKER_COUNTRY] [char](3) NULL,
	[CEDENT_COUNTRY] [char](3) NULL,
	[INSURED_COUNTRY] [char](3) NULL,
	[REINSURER_COUNTRY] [char](3) NULL,
	[IS_CURRENT_AM] [char](1) NULL,
	[AMNDMNT_NMBR] [int] NULL,
	[EFF_START_TMSTMP] [datetime] NULL,
	[EFF_END_TMSTMP] [datetime] NULL,
	[IS_CRNT_STATUS] [char](1) NULL,
	[IS_CRNT_BASIC_STAT] [char](1) NULL,
	[ACTION_WITHIN_CURR] [datetime] NULL,
	[ACTION_WITHIN_PREV] [datetime] NULL,
	[QUOTE_VALIDTO_CURR] [datetime] NULL,
	[QUOTE_VALIDTO_PREV] [datetime] NULL,
	[RESPND_WITHIN_DATE] [datetime] NULL,
	[IDENTIFIER_CURR] [char](20) NULL,
	[IDENTIFIER_PREV] [char](20) NULL,
	[FRK_BASICSTAT_CURR] [char](15) NULL,
	[FSK_BASICSTAT_CURR] [int] NULL,
	[FRK_BASICSTAT_PREV] [char](15) NULL,
	[FSK_BASICSTAT_PREV] [int] NULL,
	[FRK_LC_STAT_CURR] [char](15) NULL,
	[FSK_LC_STAT_CURR] [int] NULL,
	[FRK_LC_STAT_PREV] [char](15) NULL,
	[FSK_LC_STAT_PREV] [int] NULL,
	[FRK_LC_SUBST_CURR] [char](15) NULL,
	[FSK_LC_SUBST_CURR] [int] NULL,
	[FRK_LC_SUBST_PREV] [char](15) NULL,
	[FSK_LC_SUBST_PREV] [int] NULL,
	[FK_UNDERW_PREV] [char](32) NULL,
	[FK_UNDERW_CURR] [char](32) NULL,
	[FK_SOC_CURRENCY] [char](3) NULL,
	[SOC_IS_ACTIVE] [char](1) NULL,
	[PARENT_PCT] [numeric](10, 6) NULL,
	[HIERARCHY_LEVEL] [int] NULL,
	[FK_PARENT_SOC] [char](32) NULL,
	[SOC_SORT_STRING] [char](15) NULL,
	[SOC_IS_LEAF] [char](1) NULL,
	[FK_PC_CANC] [char](32) NULL,
	[FK_PC_SHARE] [char](32) NULL,
	[FK_PC_CALC_RULE] [char](32) NULL,
	[FK_PC_CLAUSE] [char](32) NULL,
	[FK_PC_CLAIM] [char](32) NULL,
	[FK_PC_DEDUCT] [char](32) NULL,
	[FK_PC_DEDUCT2] [char](32) NULL,
	[FK_PC_DEDUCT3] [char](32) NULL,
	[FK_PC_DEPOSIT] [char](32) NULL,
	[FK_PC_RESERVE] [char](32) NULL,
	[FK_PC_PORTFOLIO] [char](32) NULL,
	[FK_PC_INT_PREM_RES] [char](32) NULL,
	[FK_PC_FAC_REB] [char](32) NULL,
	[FK_PC_IX_CLAUSE] [char](32) NULL,
	[FK_PC_INST] [char](32) NULL,
	[FK_PC_INURING] [char](32) NULL,
	[FK_PC_LIM_PREM] [char](32) NULL,
	[FK_PC_PREM] [char](32) NULL,
	[FK_PC_INST_COND] [char](32) NULL,
	[FK_PC_ADJUST_COND] [char](32) NULL,
	[FK_PC_LOSS_PART] [char](32) NULL,
	[FK_PC_PROFIT_COMM] [char](32) NULL,
	[FK_PC_REINST] [char](32) NULL,
	[FK_PC_NO_CL_BON] [char](32) NULL,
	[FK_PC_MAX_TABLE] [char](32) NULL,
	[FK_PC_PORT_RES] [char](32) NULL,
	[SOC_SUBCLASS] [int] NULL,
	[FK_PC_CM_RES] [char](32) NULL,
	[IS_MULTI_YEAR] [char](1) NULL,
	[TITLE] [varchar](60) NULL,
	[UPPERCASE_TITLE] [varchar](60) NULL,
	[TOB_REF_NM] [varchar](60) NULL,
	[LOB_REF_NM] [varchar](60) NULL,
	[ACC_REF_NM] [varchar](60) NULL,
	[BROKER_NAME] [varchar](80) NULL,
	[CEDENT_NAME] [varchar](80) NULL,
	[INSURED_NAME] [varchar](80) NULL,
	[REINSURER_NAME] [varchar](80) NULL,
	[ABS_CURR_REF_NM] [varchar](60) NULL,
	[ABS_PREV_REF_NM] [varchar](60) NULL,
	[ALCS_CURR_REF_NM] [varchar](60) NULL,
	[ALCS_PREV_REF_NM] [varchar](60) NULL,
	[ALCSS_CURR_REF_NM] [varchar](60) NULL,
	[ALCSS_PREV_REF_NM] [varchar](60) NULL,
	[CLASSIFIC_NAME] [varchar](80) NULL,
	[FK_PC_USERDEF_L6] [char](32) NULL,
	[FK_PC_USERDEF_L7] [char](32) NULL,
	[FK_PC_USERDEF_L8] [char](32) NULL,
	[FK_PC_USERDEF_L9] [char](32) NULL,
	[FK_PC_USERDEF_L10] [char](32) NULL,
	[BuildID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OBJECT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
