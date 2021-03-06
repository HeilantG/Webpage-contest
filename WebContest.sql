﻿use master
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

insert into userInfo values(2018101001,'admin','admin','admin',0,'123456','HP','教师公寓'),
							(2018104396,'123456','star','王航航',0,'18791288755','高软HP4','教师公寓618'),
							(2018104399,'123456','滑稽','弓桐伟',0,'18791288756','高软HP4','教师公寓615'),
							(2018104403,'123456','唐机辰红豆','田科技',0,'18791288757','高软HP4','教师公寓618'),
							(2018104388,'123456','浅忆','高玉鹏',0,'18791288758','高软HP4','教师公寓618')


create table writeInfo
(
	wid int primary key identity(101,1),
	userNumber int REFERENCES userInfo(stuNumber),
	title varchar(50) not null,
	creatTime DateTime,
	content varchar(255)
)
go

insert into writeInfo values(2018104399,'JAVA常用类-String1',GETDATE(),'.indexOf(all) 根据字符查找下标(从左向右找到该字符第一次出现的下标)。用法和charAt()相同。.lastindexOf(all)根据字符查找下标，不过是从右向左找。'),
							(2018104396,'学习闲聊',GETDATE(),'转眼间就大一快结束了，在明年的这个时候我们就快离开了，所以很快出去的你们学的还好吗？'),
							(2018104399,'JAVA常用类-String2',GETDATE(),'.replace(String oldStr , String new Str)字符替换。然后返回一个String类型的数据(并不是改变原数据)。需要注意的是，replace并不会改变原来的String数据。.split(String str)使用制定的字符，分割字符串，得到字符串数组。'),
							(2018104403,'来游戏组队呀',GETDATE(),'和平精英，CFM都可以的'),
							(2018104388,'这个夏天，感觉怎么样?',GETDATE(),'想起去年雨中踢正步了吗（手动滑稽）'),
							(2018104399,'JAVA常用类-String3',GETDATE(),'.concat(String str) 字符串拼接。返回一个String类型。在拼接过程中，( )内的数组会被放在前面。.contains(String str)字符串是否包含指定字符，返回Boolean类型。.equals(“”,String str) 比较字符串是否相等，返回Boolean类型。'),
							(2018104388,'王者荣耀组队有没有',GETDATE(),'来星耀五排了解一哈'),
							(2018104396,'发Java的那个',GETDATE(),'在这里分享这些是认真的吗？'),
							(2018104399,'JAVA常用类-String4',GETDATE(),'.subString(int beginIndex,int endIndex)从制定下标开始接取到指定位置，如果不写结束位置，会截取到结束。.toLowerCase().toUpperCase() 转换大小写'),
							(2018104399,'JAVA常用类-String5',GETDATE(),'当字符串需要被修改(增改插)时，一般的String类已经不能满足要求，这时就需要使用StringBuffer和StringBuilder类，他们和String不同的是，可以被多次修改，且不产生新的对象(直接修改，而不是返回值)。')


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

insert into dealInfo values(2018104396,'RTX2080Ti','数码产品',50,'GeForceRTX2080Ti是NVIDIA全新推出的旗舰款显卡.现在只要50包邮,50块你买不了吃亏,50块,你买不了上当.','123',getdate()),
							(2018104396,'锤子TNT','数码产品',9999,'锤子科技的谢幕之作,宣传口号是,定义未来十年的PC于交互方式,但是,它现在都没有发货,还是真心希望锤科能挺过这次难关','123',getdate()),
							(2018104403,'天才在左,疯子在右','书籍',60.5,'本书以访谈录的形式记载了生活在另一个角落的人群（精神病患者、心理障碍者等边缘人）深刻、视角独特的所思所想，让人们可以了解到疯子抑或天才真正的内心世界。此书是国内第一本具有人文情怀的精神病患谈访录,看完了,想分享给更多人','123',getdate()),
							(2018104396,'QQ号码','虚拟物品',998,'这是一个神奇的qq号,它可能有好多好多好友,有好牛逼好牛逼的原始用户,但是我们在没有征得原始用户同意的情况下出售这个QQ号,购买后可以联系此QQ进行获取','123',getdate()),
							(2018104396,'女朋友','特殊物品',99999999.9,'女朋友分广义和狭义之分：广义的女朋友指自己女性部分的朋友；狭义的女朋友指跟自己谈恋爱的，如果情行发展下去有可能成为妻子的女孩的那个人.我们这个女朋友呢,你买了肯定会被打死','123',getdate()),
							(2018104396,'耳机','数码产品',89,'万魔声学科技有限公司以精湛的工程学、严苛的检测体系，打造出色的音频产品与优雅的美学设计。我们以匠心超越国界，它凝聚了北欧的工业设计，南欧的定调风格，全球品牌策略以及原创的设计与制造.','123',getdate()),
							(2018104403,'OnePlus7Pro','数码产品',2999,'这是OnePlus的最新旗舰机,这是首发买的,最高配置,并不打算卖,就是给你们看一下,我买到了.OnePlus真香.','123',getdate()),
							(2018104403,'索尼音响','虚拟物品',150,'索尼（日语：ソニー株式会社，英语：Sony Corporation），是日本一家全球知名的大型综合性跨国企业集团。总部设于日本东京都港区港南1-7-1','123',getdate()),
							(2018104396,'演唱会门票','数码产品',0,'好不容易买到的演唱会门票,但是现在没有时间去了,所以卖给有缘人,购买者需要回答我的几个问题,只要回答上来了,那么就免费送给你','123',getdate()),
							(2018104403,'这是一箱猪饲料','实体物品',89,'这是之前在淘宝买的一项零食(真的不是猪饲料),因为最近闹肚子,所以打算买了猪饲料去给猪看病,不讲价.','123',getdate())


select * from userInfo
select * from writeInfo
select * from dealInfo