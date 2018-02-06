USE [DfLessonsDb]
GO



CREATE TABLE [dbo].[test](
	[UserLogin] [varchar](30) NOT NULL,
	[UserPassword] [varchar](30) NOT NULL,
	[FirstName] [nvarchar](30) NOT NULL,
	[LastName] [nvarchar](30) NOT NULL,
	[Patronymic] [nvarchar](30) NULL,
	[Email] [varchar](30) NOT NULL,
	[RegistrationDate] [datetime] not null
) 
GO

alter table  [dbo].[test]
add constraint [DF_test_RegistrationDate] default (getdate()) for [RegistrationDate]
go

alter table [dbo].[test]
add constraint [DF_test_UserLogin_Unique] Unique (UserLogin)
go

alter table [dbo].[test]
add constraint [DF_test_Email_Unique] Unique (Email)
go

alter table test
add UserID int identity (1,1)
go

alter table test
add constraint pk_test_UserID primary key clustered (UserID)
GO

