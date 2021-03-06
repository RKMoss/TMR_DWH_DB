﻿CREATE TABLE [staging].[BUS_PARTNER_CAT](
	[FK_PARTNER] [char](32) NOT NULL,
	[FRK_CATEGORY] [char](15) NOT NULL,
	[FSK_CATEGORY] [int] NOT NULL,
	[BuildID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FK_PARTNER] ASC,
	[FRK_CATEGORY] ASC,
	[FSK_CATEGORY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
;
