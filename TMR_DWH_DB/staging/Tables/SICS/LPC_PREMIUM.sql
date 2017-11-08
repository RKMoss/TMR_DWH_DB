﻿CREATE TABLE [staging].[LPC_PREMIUM](
	[OBJECT_ID] [char](32) NOT NULL,
	[FRK_OPTIONAL_FIELD] [char](15) NULL,
	[FSK_OPTIONAL_FIELD] [int] NULL,
	[FRK_CONDITION_PER] [char](15) NULL,
	[FSK_CONDITION_PER] [int] NULL,
	[FK_CONDITION] [char](32) NULL,
	[IS_ORIGINAL] [char](1) NULL,
	[IS_ADDED] [char](1) NULL,
	[IS_SUM] [char](1) NULL,
	[FACTOR] [int] NULL,
	[BASE_AMOUNT] [numeric](22, 2) NULL,
	[ANNUAL_AMOUNT] [numeric](22, 2) NULL,
	[HISTORIC_AMOUNT] [numeric](22, 2) NULL,
	[INSURED_AMOUNT] [numeric](22, 2) NULL,
	[CURRENT_AMOUNT] [numeric](22, 2) NULL,
	[RATE_RAT] [numeric](20, 5) NULL,
	[RATE_FCT] [int] NULL,
	[HIST_RATE_RAT] [numeric](20, 5) NULL,
	[HIST_RATE_FCT] [int] NULL,
	[SUBCLASS] [int] NULL,
	[BuildID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OBJECT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
