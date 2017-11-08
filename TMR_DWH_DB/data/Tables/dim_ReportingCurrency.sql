CREATE TABLE [data].[dim_ReportingCurrency] (
    [PK_Reporting_CurrencyID] INT            IDENTITY (0, 1) NOT NULL,
    [BK_Reporting_Currency]   NVARCHAR (100) NOT NULL,
    [ReportingCurrencyName]   NVARCHAR (100) NULL,
    [CreateDate]              DATETIME       DEFAULT (getdate()) NULL,
    [UpdateDate]              DATETIME       NULL,
    [FK_BuildID]              INT            NULL,
    CONSTRAINT [PK_Reporting_CurrencyID] PRIMARY KEY CLUSTERED ([PK_Reporting_CurrencyID] ASC)
);

