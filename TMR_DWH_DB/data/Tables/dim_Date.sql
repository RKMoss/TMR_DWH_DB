CREATE TABLE [data].[dim_Date] (
    [PK_DateID]        INT           NOT NULL,
    [Date]             DATE          NOT NULL,
    [Genius]           INT           NOT NULL,
    [Date_Short]       NVARCHAR (25) NULL,
    [Date_Long]        NVARCHAR (25) NULL,
    [Week_Num]         INT           NULL,
    [Week_Short]       NVARCHAR (25) NULL,
    [Week_Long]        NVARCHAR (25) NULL,
    [Week_Sort]        INT           NULL,
    [Month]            NVARCHAR (25) NULL,
    [Month_Num]        INT           NULL,
    [Month_Short]      NVARCHAR (25) NULL,
    [Month_Long]       NVARCHAR (25) NULL,
    [Month_Sort]       INT           NULL,
    [Quarter]          NVARCHAR (25) NULL,
    [Quarter_Num]      INT           NULL,
    [Quarter_Short]    NVARCHAR (25) NULL,
    [Quarter_Long]     NVARCHAR (25) NULL,
    [Quarter_Sort]     INT           NULL,
    [Year]             INT           NULL,
    [Fin_Month_Num]    INT           NULL,
    [Fin_Month]        NVARCHAR (25) NULL,
    [Fin_Month_Sort]   INT           NULL,
    [Fin_Quarter_Num]  INT           NULL,
    [Fin_Quarter]      NVARCHAR (25) NULL,
    [Fin_Quarter_Sort] INT           NULL,
    [Fin_Year]         INT           NULL,
    [Fin_Year_Label]   NVARCHAR (7)  NULL,
    [Day_Of_Week]      NVARCHAR (25) NULL,
    [Week_Day]         BIT           NULL,
    [Week_End]         BIT           NULL,
    [Holiday]          BIT           NULL,
    CONSTRAINT [PK_DateID] PRIMARY KEY CLUSTERED ([PK_DateID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [NCINDX_DataDimDate_Date]
    ON [data].[dim_Date]([Date] ASC);

