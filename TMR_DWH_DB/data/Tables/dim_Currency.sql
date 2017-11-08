CREATE TABLE [data].[dim_Currency] (
    [PK_CurrencyID] INT           IDENTITY (0, 1) NOT NULL,
    [BK_Currency]   NVARCHAR (3)  NOT NULL,
    [CurrencyName]  NVARCHAR (40) NULL,
    [CreateDate]    DATETIME      DEFAULT (getdate()) NULL,
    [UpdateDate]    DATETIME      NULL,
    [FK_BuildID]    INT           NULL,
    CONSTRAINT [PK_CurrencyID] PRIMARY KEY CLUSTERED ([PK_CurrencyID] ASC)
);

