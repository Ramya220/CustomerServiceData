CREATE TABLE [dbo].[Login] (
    [id]       INT          IDENTITY (1, 1) NOT NULL,
    [username] VARCHAR (50) NOT NULL,
    [password] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED ([id] ASC)
);

