use [Saratov.Evstifeev.TestComicsLibrary.LibraryDB]

drop table if exists dbo.UserRoles

create table UserRoles (
	Id uniqueidentifier PRIMARY KEY,
	Name nvarchar(250) not null,
	CreatedAt datetime not null,
	CreatedBy uniqueidentifier not null,
	IsDeleted bit null
)