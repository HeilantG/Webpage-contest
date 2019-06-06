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
	stuNumber int not null,
	password varchar(16) not null,
	stuName varchar(20) not null,
	realName varchar(10) not null,
	sex int  not null,
	tel varchar(11),
	classes varchar(50),
	dormitory varchar(50) -- 宿舍
)
go

create table writeInfo
(
	wid int primary key identity(101,1),
	userNumber int REFERENCES userInfo(uid),
	title varchar(50) not null,
	creatTime DateTime,
	content varchar(255)	
)
go

create table dealInfo
(
	cid int primary key identity(1001,1),
	userNumber int REFERENCES userInfo(uid),
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