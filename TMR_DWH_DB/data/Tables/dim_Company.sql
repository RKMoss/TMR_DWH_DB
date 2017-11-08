CREATE TABLE [data].[dim_Company] (
    [PK_CompanyID]       INT           IDENTITY (0, 1) NOT NULL,
    [BK_Cell]            NVARCHAR (8)  NOT NULL,
    [CellName]           NVARCHAR (25) NULL,
    [BK_Company]         NVARCHAR (8)  NOT NULL,
    [CompanyName]        NVARCHAR (25) NULL,
    [AccountingCurrency] NVARCHAR (3)  NULL,
    [BaseCurrency]       NVARCHAR (3)  NULL,
    [TSM_Company]        NVARCHAR (1)  NULL,
    [CreateDate]         DATETIME      DEFAULT (getdate()) NOT NULL,
    [UpdateDate]         DATETIME      NULL,
    [FK_BuildID]         INT           NULL,
    CONSTRAINT [PK_CompanyID] PRIMARY KEY CLUSTERED ([PK_CompanyID] ASC)
);

