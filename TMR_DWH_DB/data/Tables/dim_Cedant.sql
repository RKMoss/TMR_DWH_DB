CREATE TABLE [data].[dim_Cedant] (
    [PK_CedantID] INT            IDENTITY (0, 1) NOT NULL,
    [BK_Cedant]   NVARCHAR (8)   NOT NULL,
    [CedantName]  NVARCHAR (160) NOT NULL,
    [CreateDate]  DATETIME       DEFAULT (getdate()) NOT NULL,
    [UpdateDate]  DATETIME       DEFAULT (getdate()) NOT NULL,
    [FK_BuildID]  INT            NOT NULL,
    CONSTRAINT [PK_Cedant] PRIMARY KEY CLUSTERED ([PK_CedantID] ASC),
    CONSTRAINT [UNQ_DimCedant_BKCedant] UNIQUE NONCLUSTERED ([BK_Cedant] ASC)
);

