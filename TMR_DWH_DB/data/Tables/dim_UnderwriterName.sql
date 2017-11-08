CREATE TABLE [data].[dim_UnderwriterName] (
    [PK_UnderwriterNameID] INT            IDENTITY (1, 1) NOT NULL,
    [BK_UnderwriterName]   NVARCHAR (10)  NOT NULL,
    [UnderwriterName]      NVARCHAR (100) NULL,
    [Active]               BIT            NOT NULL,
    [CreateDate]           DATE           NOT NULL,
    [UpdateDate]           DATE           NOT NULL,
    [FK_BuildID]           INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([PK_UnderwriterNameID] ASC),
    CONSTRAINT [UNQ_dim_UnderwriterName_BK_UnderwriterName] UNIQUE NONCLUSTERED ([BK_UnderwriterName] ASC)
);

