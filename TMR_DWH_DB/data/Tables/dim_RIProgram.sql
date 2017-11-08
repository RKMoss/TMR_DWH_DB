CREATE TABLE [data].[dim_RIProgram] (
    [PK_RIProgramID]   INT            IDENTITY (0, 1) NOT NULL,
    [BK_RIProgram]     NVARCHAR (3)   NOT NULL,
    [GP_RIProgramCode] NVARCHAR (67)  NOT NULL,
    [RIProgramName]    NVARCHAR (30)  NULL,
    [CreateDate]       DATETIME       DEFAULT (getdate()) NOT NULL,
    [UpdateDate]       DATETIME       NULL,
    [FK_BuildID]       INT            NULL,
    [GP_RIProgramName] NVARCHAR (100) NULL,
    CONSTRAINT [PK_RIProgramID] PRIMARY KEY CLUSTERED ([PK_RIProgramID] ASC)
);

