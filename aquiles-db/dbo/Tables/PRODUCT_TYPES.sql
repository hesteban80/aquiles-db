CREATE TABLE [dbo].[PRODUCT_TYPES] (
    [Id]          UNIQUEIDENTIFIER NOT NULL,
    [Name]        NVARCHAR (250)   NOT NULL,
    [Description] NVARCHAR (250)   NULL,
    [IsActive]    INT              NULL,
    [IsIntensive] BIT              DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_PRODUCT_TYPES] PRIMARY KEY CLUSTERED ([Id] ASC)
);

