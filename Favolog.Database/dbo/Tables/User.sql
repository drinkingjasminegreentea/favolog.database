CREATE TABLE [dbo].[User]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[Username] VARCHAR(100) NOT NULL,
	[ProfileImage] VARCHAR(200) NULL, 
    [FirstName] NVARCHAR(100) NULL,
    [LastName] NVARCHAR(100) NULL, 
    [EmailAddress] VARCHAR(250) NOT NULL,    
    [Bio] VARCHAR(250) NULL,    
    [Website] VARCHAR(250) NULL,
    [ExternalId] VARCHAR(50) NOT NULL, 
    CONSTRAINT [PK_User] PRIMARY KEY ([Id])    
)

GO
CREATE UNIQUE INDEX [IX_User_Username] ON [dbo].[User] ([Username])

GO
CREATE UNIQUE INDEX [IX_User_ExternalId] ON [dbo].[User] ([ExternalId])
