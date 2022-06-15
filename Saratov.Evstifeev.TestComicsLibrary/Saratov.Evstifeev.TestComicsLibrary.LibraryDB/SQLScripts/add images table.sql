use [Saratov.Evstifeev.TestComicsLibrary.LibraryDB]

drop table if exists dbo.Images

create table Images (
	Id uniqueidentifier PRIMARY KEY,
	Name nvarchar(250) not null,
	CreatedAt datetime not null,
	IsDeleted bit null DEFAULT 0,
	CreatedBy uniqueidentifier not null
)