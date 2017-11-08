﻿CREATE TABLE [staging].[CNU_CURRENCY](
	[ISO_ALPHA] [char](3) NOT NULL,
	[ISO_NUMERIC] [int] NULL,
	[ISO_NAME_ENGLISH] [char](50) NULL,
	[ISO_NAME_FRENCH] [char](50) NULL,
	[ALTERNATE_ID] [char](3) NULL,
	[IS_PRIMARY] [char](1) NULL,
	[IS_ACTIVE] [char](1) NULL,
	[IS_REPLACED] [char](1) NULL,
	[IS_OFTEN_USED] [char](1) NULL,
	[FACTOR] [numeric](15, 8) NULL,
	[WARNING_LMT_PCT] [numeric](7, 3) NULL,
	[NMBR_OF_DECIMALS] [int] NULL,
	[IS_FOREIGN_IN_PRIM] [char](1) NULL,
	[IS_EMU_CURR] [char](1) NULL,
	[EMU_DATE] [datetime] NULL,
	[VERSION] [int] NULL,
	[DESCRIPTION] [varchar](120) NULL,
	[BuildID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ISO_ALPHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
