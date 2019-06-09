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

insert into userInfo values(2018104396,'123456','star','������',0,'18791288755','����HP4','618'),
							(2018104403,'123456','�»�','��Ƽ�',0,'12345678','����HP4','618')


create table writeInfo
(
	wid int primary key identity(101,1),
	userNumber int REFERENCES userInfo(stuNumber),
	title varchar(50) not null,
	creatTime DateTime,
	content varchar(255)
)
go

insert into writeInfo values(2018104396,'���ȵ�����1',GETDATE(),'�ֵ���һ��֮�����ȵ�ʱ��Ҳ�Ǹ��п������ӣ���֪�������Щ������ʧ�仹�Ǽ������������Ҫ���ֵ�����ȥ3'),
							(2018104396,'���ȵ�����2',GETDATE(),'�ֵ���һ��֮�����ȵ�ʱ��Ҳ�Ǹ��п������ӣ���֪�������Щ������ʧ�仹�Ǽ������������Ҫ���ֵ�����ȥ4'),
							(2018104403,'���ȵ�����3',GETDATE(),'�ֵ���һ��֮�����ȵ�ʱ��Ҳ�Ǹ��п������ӣ���֪�������Щ������ʧ�仹�Ǽ������������Ҫ���ֵ�����ȥ5'),
							(2018104396,'���ȵ�����4',GETDATE(),'�ֵ���һ��֮�����ȵ�ʱ��Ҳ�Ǹ��п������ӣ���֪�������Щ������ʧ�仹�Ǽ������������Ҫ���ֵ�����ȥ6'),
							(2018104403,'���ȵ�����5',GETDATE(),'�ֵ���һ��֮�����ȵ�ʱ��Ҳ�Ǹ��п������ӣ���֪�������Щ������ʧ�仹�Ǽ������������Ҫ���ֵ�����ȥ7'),
							(2018104396,'���ȵ�����6',GETDATE(),'�ֵ���һ��֮�����ȵ�ʱ��Ҳ�Ǹ��п������ӣ���֪�������Щ������ʧ�仹�Ǽ������������Ҫ���ֵ�����ȥ8'),
							(2018104403,'���ȵ�����7',GETDATE(),'�ֵ���һ��֮�����ȵ�ʱ��Ҳ�Ǹ��п������ӣ���֪�������Щ������ʧ�仹�Ǽ������������Ҫ���ֵ�����ȥ9'),
							(2018104396,'���ȵ�����8',GETDATE(),'�ֵ���һ��֮�����ȵ�ʱ��Ҳ�Ǹ��п������ӣ���֪�������Щ������ʧ�仹�Ǽ������������Ҫ���ֵ�����ȥ10')


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

insert into dealInfo values(2018104396,'����','�����Ʒ',89,'���˸����ֻ�����','123',getdate()),
							(2018104396,'�ֻ�','�����Ʒ',2199,'���˸��򣬵���֮ǰ�ĺ���','123',getdate()),
							(2018104403,'����','�����Ʒ',89,'����Ҫ��','123',getdate()),
							(2018104396,'����1','�����Ʒ',89,'���˸����ֻ�����1','123',getdate()),
							(2018104396,'����2','�����Ʒ',89,'���˸����ֻ�����2','123',getdate()),
							(2018104396,'����3','�����Ʒ',89,'���˸����ֻ�����3','123',getdate()),
							(2018104403,'����4','�����Ʒ',89,'���˸����ֻ�����4','123',getdate()),
							(2018104403,'����5','�����Ʒ',89,'���˸����ֻ�����5','123',getdate()),
							(2018104396,'����6','�����Ʒ',89,'���˸����ֻ�����6','123',getdate()),
							(2018104403,'����7','�����Ʒ',89,'���˸����ֻ�����7','123',getdate()),
							(2018104396,'����8','�����Ʒ',89,'���˸����ֻ�����8','123',getdate())


select * from userInfo
select * from writeInfo
select * from dealInfo