use [Saratov.Evstifeev.TestComicsLibrary.LibraryDB]

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo' 
                 AND  TABLE_NAME = 'Users'))
BEGIN
	if (not exists (select top 1 Id from dbo.Users where Name = 'System'))
		insert into dbo.Users (Id, Name, CreatedAt, PasswordHashCode)
		values (NEWID(), 'System', GETDATE(), 1993068193)

	if (not exists (select top 1 Id from dbo.Users where Name = 'SuperUser'))
		insert into dbo.Users (Id, Name, CreatedAt, PasswordHashCode)
		values (NEWID(), 'SuperUser', GETDATE(), 2091418252)
END