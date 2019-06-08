use master
go


if exists(select * from sysdatabases where name = 'webContest')
drop database webContest
go

create database webContest
go

use webContest
go

if exists(select * from dbo.sysobjects where name='userInfo')  
drop table userInfo  
go


if exists(select * from dbo.sysobjects where name='writeInfo')  
drop table writeInfo  
go

if exists(select * from dbo.sysobjects where name='dealInfo')  
drop table dealInfo  
go

create table userInfo
(
	uid int primary key identity(1,1),
	stuNumber int not null unique,
	password varchar(16) not null,
	stuName varchar(20),
	realName varchar(10) not null,
	sex int  not null,
	tel varchar(11),
	classes varchar(50),
	dormitory varchar(50)
)
go

create table writeInfo
(
	wid int primary key identity(101,1),
	userNumber int REFERENCES userInfo(stuNumber),
	title varchar(50) not null,
	creatTime DateTime,
	content varchar(255)
)
go

create table dealInfo
(
	cid int primary key identity(1001,1),
	userNumber int REFERENCES userInfo(stuNumber),
	cName varchar(50) not null,
	type varchar(20),
	money float not null,
	remarks varchar(255),
	savepath varchar(255),
)
go


select * from userInfo
select * from writeInfo
select * from dealInfo


insert into writeInfo values(2018104396,'炎热的夏天1',GETDATE(),'又到了一年之间最热的时候，也是高中考的日子，不知道最后那些孩子是失落还是激动，到最后还是要快乐地走下去3'),
							(2018104396,'炎热的夏天2',GETDATE(),'又到了一年之间最热的时候，也是高中考的日子，不知道最后那些孩子是失落还是激动，到最后还是要快乐地走下去4'),
							(2018104403,'炎热的夏天3',GETDATE(),'又到了一年之间最热的时候，也是高中考的日子，不知道最后那些孩子是失落还是激动，到最后还是要快乐地走下去5'),
							(2018104396,'炎热的夏天4',GETDATE(),'又到了一年之间最热的时候，也是高中考的日子，不知道最后那些孩子是失落还是激动，到最后还是要快乐地走下去6'),
							(2018104403,'炎热的夏天5',GETDATE(),'又到了一年之间最热的时候，也是高中考的日子，不知道最后那些孩子是失落还是激动，到最后还是要快乐地走下去7'),
							(2018104396,'炎热的夏天6',GETDATE(),'又到了一年之间最热的时候，也是高中考的日子，不知道最后那些孩子是失落还是激动，到最后还是要快乐地走下去8'),
							(2018104403,'炎热的夏天7',GETDATE(),'又到了一年之间最热的时候，也是高中考的日子，不知道最后那些孩子是失落还是激动，到最后还是要快乐地走下去9'),
							(2018104396,'炎热的夏天8',GETDATE(),'又到了一年之间最热的时候，也是高中考的日子，不知道最后那些孩子是失落还是激动，到最后还是要快乐地走下去10')
							
select top 10 w.wid ,w.userNumber, w.title , u.stuName , w.creatTime , w.content from userInfo u,writeInfo w where w.userNumber = u.stuNumber order by w.creatTime DESC

select w.wid , w.title , w.creatTime , w.content from writeInfo w where w.userNumber = 2018104396 order by w.creatTime desc

select * from writeInfo