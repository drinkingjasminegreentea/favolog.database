CREATE TABLE [dbo].[Catalog]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[Name] NVARCHAR(1000) NOT NULL, 	
	[UserId] INT NOT NULL, 
    CONSTRAINT [PK_Catalog] PRIMARY KEY ([Id]),
    CONSTRAINT [AK_Catalog_Name_UserId] UNIQUE ([Name], [UserId]), 
    CONSTRAINT [FK_Catalog_User] FOREIGN KEY ([UserId]) REFERENCES [User]([Id])    
)
