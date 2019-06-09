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

insert into userInfo values(2018104396,'123456','star','王航航',0,'18791288755','高软HP4','618'),
							(2018104403,'123456','柯基','田科技',0,'12345678','高软HP4','618')


create table writeInfo
(
	wid int primary key identity(101,1),
	userNumber int REFERENCES userInfo(stuNumber),
	title varchar(50) not null,
	creatTime DateTime,
	content varchar(255)
)
go

insert into writeInfo values(2018104396,'炎热的夏天1',GETDATE(),'又到了一年之间最热的时候，也是高中考的日子，不知道最后那些孩子是失落还是激动，到最后还是要快乐地走下去3'),
							(2018104396,'炎热的夏天2',GETDATE(),'又到了一年之间最热的时候，也是高中考的日子，不知道最后那些孩子是失落还是激动，到最后还是要快乐地走下去4'),
							(2018104403,'炎热的夏天3',GETDATE(),'又到了一年之间最热的时候，也是高中考的日子，不知道最后那些孩子是失落还是激动，到最后还是要快乐地走下去5'),
							(2018104396,'炎热的夏天4',GETDATE(),'又到了一年之间最热的时候，也是高中考的日子，不知道最后那些孩子是失落还是激动，到最后还是要快乐地走下去6'),
							(2018104403,'炎热的夏天5',GETDATE(),'又到了一年之间最热的时候，也是高中考的日子，不知道最后那些孩子是失落还是激动，到最后还是要快乐地走下去7'),
							(2018104396,'炎热的夏天6',GETDATE(),'又到了一年之间最热的时候，也是高中考的日子，不知道最后那些孩子是失落还是激动，到最后还是要快乐地走下去8'),
							(2018104403,'炎热的夏天7',GETDATE(),'又到了一年之间最热的时候，也是高中考的日子，不知道最后那些孩子是失落还是激动，到最后还是要快乐地走下去9'),
							(2018104396,'炎热的夏天8',GETDATE(),'又到了一年之间最热的时候，也是高中考的日子，不知道最后那些孩子是失落还是激动，到最后还是要快乐地走下去10')


create table dealInfo
(
	cid int primary key identity(1001,1),
	userNumber int REFERENCES userInfo(stuNumber),
	cName varchar(50) not null,
	type varchar(20),
	money float not null,
	remarks varchar(255),
	savepath varchar(255),
	createTime Datetime,
)
go

insert into dealInfo values(2018104396,'耳机','数码产品',89,'本人刚买，手机坏了','123',getdate()),
							(2018104396,'手机','数码产品',2199,'本人刚买，但是之前的好了','123',getdate()),
							(2018104403,'音响','数码产品',89,'不想要了','123',getdate()),
							(2018104396,'耳机1','数码产品',89,'本人刚买，手机坏了1','123',getdate()),
							(2018104396,'耳机2','数码产品',89,'本人刚买，手机坏了2','123',getdate()),
							(2018104396,'耳机3','数码产品',89,'本人刚买，手机坏了3','123',getdate()),
							(2018104403,'耳机4','数码产品',89,'本人刚买，手机坏了4','123',getdate()),
							(2018104403,'耳机5','数码产品',89,'本人刚买，手机坏了5','123',getdate()),
							(2018104396,'耳机6','数码产品',89,'本人刚买，手机坏了6','123',getdate()),
							(2018104403,'耳机7','数码产品',89,'本人刚买，手机坏了7','123',getdate()),
							(2018104396,'耳机8','数码产品',89,'本人刚买，手机坏了8','123',getdate())


select * from userInfo
select * from writeInfo
select * from dealInfo