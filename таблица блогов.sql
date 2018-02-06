USE [DfLessonsDb]
GO


CREATE TABLE [dbo].[blog](
	[BlogID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[CreationDate] [datetime] NOT NULL
) ON [PRIMARY]
GO

alter table  [dbo].[blog]
add constraint [DF_test_CreationDate] default (getdate()) for [CreationDate]
go

alter table blog
add constraint pk_test_BlogID primary key clustered (BlogID)
GO

alter table blog
alter column UserID int not null
go

alter table blog
with check add constraint FK_blog_BlogUser foreign key(UserID)
references BlogUser (UserID)
on update cascade
on delete cascade
go