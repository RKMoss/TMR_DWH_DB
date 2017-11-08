CREATE TABLE [data].[dim_EarningMethod] (
    [PK_EarningMethodID] INT            IDENTITY (1, 1) NOT NULL,
    [BK_Earningmethod]   NVARCHAR (5)   NOT NULL,
    [EarningMethodName]  NVARCHAR (255) NOT NULL,
    [Active]             BIT            DEFAULT ((1)) NOT NULL,
    [CreateDate]         DATETIME2 (7)  DEFAULT (getdate()) NOT NULL,
    [UpdateDate]         DATETIME2 (7)  DEFAULT (getdate()) NOT NULL,
    [FK_BuildID]         INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([PK_EarningMethodID] ASC),
    UNIQUE NONCLUSTERED ([BK_Earningmethod] ASC),
    UNIQUE NONCLUSTERED ([EarningMethodName] ASC)
);

