CREATE TABLE [dbo].[USERS] (
    [Id]       UNIQUEIDENTIFIER NOT NULL,
    [Name]     NVARCHAR (250)   NULL,
    [Surname]  NVARCHAR (250)   NULL,
    [Email]    NVARCHAR (250)   NULL,
    [Rol]      NVARCHAR (250)   NULL,
    [Password] NVARCHAR (250)   NULL,
    CONSTRAINT [PK_USERS] PRIMARY KEY CLUSTERED ([Id] ASC)
);

