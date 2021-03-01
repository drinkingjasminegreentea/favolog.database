CREATE TABLE [dbo].[Category]
(
	[Id] INT IDENTITY(1,1) NOT NULL, 
	[Name] NVARCHAR(100) NOT NULL,
    CONSTRAINT [PK_Category] PRIMARY KEY (Id), 
    CONSTRAINT [AK_Category_Name] UNIQUE ([Name])
)
