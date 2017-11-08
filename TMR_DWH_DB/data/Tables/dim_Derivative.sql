CREATE TABLE [data].[dim_Derivative] (
    [PK_DerivativeID] INT            IDENTITY (0, 1) NOT NULL,
    [BK_Derivative]   NVARCHAR (1)   NOT NULL,
    [DerivativeName]  NVARCHAR (100) NULL,
    [CreateDate]      DATETIME       NULL,
    [UpdateDate]      DATETIME       NULL,
    [FK_BuildID]      INT            NULL,
    CONSTRAINT [PK_DerivativeID] PRIMARY KEY CLUSTERED ([PK_DerivativeID] ASC)
);

