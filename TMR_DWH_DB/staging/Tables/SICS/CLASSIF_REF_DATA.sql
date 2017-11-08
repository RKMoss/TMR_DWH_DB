﻿CREATE TABLE [staging].[CLASSIF_REF_DATA](
	[FRK_REF_DATA] [char](15) NOT NULL,
	[FSK_REF_DATA] [int] NOT NULL,
	[FK_CLASSIFICATION] [char](32) NOT NULL,
	[SUBCLASS] [char](2) NOT NULL,
	[REF_NAME] [varchar](60) NULL,
	[BuildID] [int] NULL,
) ON [PRIMARY]
;
