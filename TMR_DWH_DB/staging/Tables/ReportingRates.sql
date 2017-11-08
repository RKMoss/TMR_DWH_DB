CREATE TABLE [staging].[ReportingRates] (
    [rid]                INT             IDENTITY (1, 1) NOT NULL,
    [AccountingCurrency] NVARCHAR (3)    NULL,
    [ConversionCurrency] NVARCHAR (3)    NULL,
    [FXDate]             DATE            NULL,
    [ReportingPeriod]    DECIMAL (5)     NULL,
    [MothendRate]        DECIMAL (15, 8) NULL,
    [MonthlyAverageRate] DECIMAL (15, 8) NULL,
    [FK_BuildID]         INT             NULL,
    PRIMARY KEY CLUSTERED ([rid] ASC),
    CONSTRAINT [UNCINDX_StagingReportingRates_NaturalKey] UNIQUE NONCLUSTERED ([AccountingCurrency] ASC, [ConversionCurrency] ASC, [FXDate] ASC, [ReportingPeriod] ASC)
);

