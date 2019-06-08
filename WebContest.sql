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


insert into writeInfo values(2018104396,'���ȵ�����1',GETDATE(),'�ֵ���һ��֮�����ȵ�ʱ��Ҳ�Ǹ��п������ӣ���֪�������Щ������ʧ�仹�Ǽ������������Ҫ���ֵ�����ȥ3'),
							(2018104396,'���ȵ�����2',GETDATE(),'�ֵ���һ��֮�����ȵ�ʱ��Ҳ�Ǹ��п������ӣ���֪�������Щ������ʧ�仹�Ǽ������������Ҫ���ֵ�����ȥ4'),
							(2018104403,'���ȵ�����3',GETDATE(),'�ֵ���һ��֮�����ȵ�ʱ��Ҳ�Ǹ��п������ӣ���֪�������Щ������ʧ�仹�Ǽ������������Ҫ���ֵ�����ȥ5'),
							(2018104396,'���ȵ�����4',GETDATE(),'�ֵ���һ��֮�����ȵ�ʱ��Ҳ�Ǹ��п������ӣ���֪�������Щ������ʧ�仹�Ǽ������������Ҫ���ֵ�����ȥ6'),
							(2018104403,'���ȵ�����5',GETDATE(),'�ֵ���һ��֮�����ȵ�ʱ��Ҳ�Ǹ��п������ӣ���֪�������Щ������ʧ�仹�Ǽ������������Ҫ���ֵ�����ȥ7'),
							(2018104396,'���ȵ�����6',GETDATE(),'�ֵ���һ��֮�����ȵ�ʱ��Ҳ�Ǹ��п������ӣ���֪�������Щ������ʧ�仹�Ǽ������������Ҫ���ֵ�����ȥ8'),
							(2018104403,'���ȵ�����7',GETDATE(),'�ֵ���һ��֮�����ȵ�ʱ��Ҳ�Ǹ��п������ӣ���֪�������Щ������ʧ�仹�Ǽ������������Ҫ���ֵ�����ȥ9'),
							(2018104396,'���ȵ�����8',GETDATE(),'�ֵ���һ��֮�����ȵ�ʱ��Ҳ�Ǹ��п������ӣ���֪�������Щ������ʧ�仹�Ǽ������������Ҫ���ֵ�����ȥ10')
							
select top 10 w.wid ,w.userNumber, w.title , u.stuName , w.creatTime , w.content from userInfo u,writeInfo w where w.userNumber = u.stuNumber order by w.creatTime DESC

select w.wid , w.title , w.creatTime , w.content from writeInfo w where w.userNumber = 2018104396 order by w.creatTime desc

select * from writeInfo