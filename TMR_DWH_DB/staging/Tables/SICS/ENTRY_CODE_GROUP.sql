﻿CREATE TABLE [staging].[ENTRY_CODE_GROUP](
	[OBJECT_ID] [char](32) NOT NULL,
	[NAME] [char](30) NULL,
	[IS_ACTIVE] [char](1) NULL,
	[LADDER_STATS_VIEW] [char](1) NULL,
	[DEFAULT_STATS_VIEW] [char](1) NULL,
	[CODE] [char](30) NULL,
	[FK_CODE] [char](32) NULL,
	[FRK_GRP_CATEGORY] [char](15) NULL,
	[FSK_GRP_CATEGORY] [int] NULL,
	[FRK_EST_TYPE] [char](15) NULL,
	[FSK_EST_TYPE] [int] NULL,
	[VERSION] [int] NULL,
	[BuildID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OBJECT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;