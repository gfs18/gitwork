drop table users;
drop table singer;
drop table special;
drop table song;
drop table mv;
drop table languages;
drop table musicStyle;
drop table comments;
drop table collects;
drop table admin;

--用户表
create table users(
    userid number(20) primary key,--用户编号
    uname varchar2(20) not null,  --用户名
    upwd varchar2(40) not null,   --密码
    uemail varchar2(40) not null, --邮箱
   	upicPath varchar2(40),  --头像路径
    uintroduce varchar2(100),    --个人简介
    ucondition int default 1, --账号状态 1可用 0不可用
    uvip int default 0,  --会员状态 1是   0否
  	mark varchar2(100)   ----预留字段 
);
--select * from users;
--alter table users modify uemail varchar2(40);
--insert into users values(seq_users_uid.nextval,'哈哈哈哈','3b3690fba8bd08059eae130425396eb05ded1b7d','qq.com','images/bg.png','很美啊',0,1,null);
--insert into users values(seq_users_uid.nextval,'admin','3b3690fba8bd08059eae130425396eb05ded1b7d','qq.com','picpath','很美啊',1,0,null);


--drop table users;

insert into users select seq_users_uid.nextval,dbms_random.string('1',dbms_random.value(4,10)),
'3b3690fba8bd08059eae130425396eb05ded1b7d','123456@qq.com',
'','挺好!',1,1,'' from dual connect by level <10;
--insert into users values(seq_users_uid.nextval,'admin','3b3690fba8bd08059eae130425396eb05ded1b7d','qq.com','picpath','很美啊',1,0,null);

--select * from users;
--delete users where userid=10184


--管理员
create table admin(
	aid varchar2(20) primary key,--管理员id
	aname varchar2(20) not null,--管理员姓名
	apwd varchar2(40) not null,--管理员密码
	acondition int default 1, --账号状态 1可用 0不可用
	mark varchar2(100)   ----预留字段 
);

insert into admin select seq_aid.nextval,dbms_random.string('1',dbms_random.value(4,10)),'3b3690fba8bd08059eae130425396eb05ded1b7d',
1,'' from dual connect by level <10;

--select * from admin;

--drop table admin;


--歌手表
create table singer(
       sgid number(20) primary key,     --歌手编号
       sgname varchar2(20) not null,  --歌手名
       sgEname varchar2(20) not null, --歌手英文名
       sgnation varchar2(20),  --国籍
       lgid number(20) not null,--音乐语种编号
       sggender varchar2(10) not null,  --性别
       sgpicPath varchar2(40) not null, --头像路径
       sgintroduce varchar2(400)not null,     --歌手介绍
       mark varchar2(100)       --预留字段
);
insert into singer values(seq_singer_sgid.nextval,'夏婉安','X','中国',10001,'女','images/xwa.jpg','夏婉安,黑龙江哈尔滨人,最有潜力的90后网络原创歌手。\r\n','');
insert into singer values(seq_singer_sgid.nextval,'韩红','H','中国',10001,'女','images/hh.jpg','韩红，全国政协委员，华录百纳娱乐公司董事长兼CEO。\r\n','');
insert into singer values(seq_singer_sgid.nextval,'张杰','Z','中国',10002,'男','images/zhangjie.jpg', '张杰，1982年12月20日出生于四川成都，毕业于四川师范大学，中国内地流行歌手。\r\n','');
insert into singer values(seq_singer_sgid.nextval,'金沙','J','中国',10003,'女','images/jinsha.jpg', '金莎（Kym），出生于中国上海，曾就读于星海音乐学院、新加坡东亚商学院','');
--select * from singer;
-- drop table singer;
select * from singer;

--专辑表
create table special(
      spid number(20) primary key,     --专辑编号
      sgid number(20) not null, --歌手编号
      spname varchar2(50)not null,     --专辑名
      lgid number(20) not null,--语种编号
      sppicPath varchar2(100) not null,   --封面图片路径
      sppubTime date not null,   --出版时间
      spclick number(20), --点击量
      mark varchar2(100)       --预留字段
);

insert into special values (seq_special_spid.nextval,1002,'Water Under the Bridge (无法挽回)',
1001,'images/zj-2.jpg',to_date('2016-11-4','yyyy-mm-dd'),20,'');
insert into special values (seq_special_spid.nextval,1002,'Water Under the Bridge (无法挽回)',
1001,'images/zj-1.jpg',to_date('2016-11-4','yyyy-mm-dd'),20,'');
update  special  set sgid=10002  where sgid=1002;

insert into SPECIAL values(seq_special_spid.nextval,10001,'幻听',10001,'images/zj-2.jpg',to_date('2017-3-31','yyyy-mm-dd'),10.2,'');
insert into SPECIAL values(seq_special_spid.nextval,10002,'过滤',10001,'images/zj-1.jpg',to_date('2017-3-31','yyyy-mm-dd'),1.3,'');
insert into SPECIAL values(seq_special_spid.nextval,10003,'放心去飞',10003,'images/zj-3.jpg',to_date('2017-3-31','yyyy-mm-dd'),4.2,'');
insert into SPECIAL values(seq_special_spid.nextval,10001,'红蔷薇白玫瑰',10004,'images/zj-4jpg.jpg',to_date('2017-3-31','yyyy-mm-dd'),6.2,'');
insert into SPECIAL values(seq_special_spid.nextval,10004,'感动每一刻',10002,'images/zj-5.jpg',to_date('2017-3-31','yyyy-mm-dd'),8,'');
insert into SPECIAL values(seq_special_spid.nextval,10001,'我知道你离我不远',10002,'images/zj-5.jpg',to_date('2017-3-31','yyyy-mm-dd'),10.99,'');
insert into SPECIAL values(seq_special_spid.nextval,10004,'咔咔寿女',10002,'images/zj-5.jpg',to_date('2017-3-31','yyyy-mm-dd'),0.8,'');

insert into SPECIAL values(seq_special_spid.nextval,10001,'相信',10001,'images/zj-2.jpg',to_date('2017-2-20','yyyy-mm-dd'),10.3,'');
insert into SPECIAL values(seq_special_spid.nextval,10002,'过滤1',10001,'images/zj-1.jpg',to_date('2017-2-12','yyyy-mm-dd'),8.3,'');
insert into SPECIAL values(seq_special_spid.nextval,10003,'放心去飞1',10003,'images/zj-3.jpg',to_date('2017-2-12','yyyy-mm-dd'),6.8,'');
insert into SPECIAL values(seq_special_spid.nextval,10001,'红蔷薇白玫瑰1',10004,'images/zj-4jpg.jpg',to_date('2017-2-12','yyyy-mm-dd'),7.2,'');
insert into SPECIAL values(seq_special_spid.nextval,10004,'感动每一刻1',10002,'images/zj-5.jpg',to_date('2017-2-12','yyyy-mm-dd'),8.88,'');
insert into SPECIAL values(seq_special_spid.nextval,10001,'我知道你离我不远1',10002,'images/zj-5.jpg',to_date('2017-2-2','yyyy-mm-dd'),13.99,'');
insert into SPECIAL values(seq_special_spid.nextval,10004,'咔咔寿女1',10002,'images/zj-5.jpg',to_date('2017-2-11','yyyy-mm-dd'),0.98,'');
insert into SPECIAL values(seq_special_spid.nextval,10004,'感动每一刻2',10002,'images/zj-5.jpg',to_date('2017-2-12','yyyy-mm-dd'),8.88,'');
insert into SPECIAL values(seq_special_spid.nextval,10001,'我知道你离我不远2',10002,'images/zj-5.jpg',to_date('2017-2-2','yyyy-mm-dd'),13.99,'');
insert into SPECIAL values(seq_special_spid.nextval,10004,'咔咔寿女2',10002,'images/zj-5.jpg',to_date('2017-2-11','yyyy-mm-dd'),0.98,'');
select * from special;
--drop table special;

--单曲表
create table song(
       soid number(20) primary key,     --单曲编号
       sgid number(20) not null, --歌手编号
       spid number(20),        --专辑编号
       soname varchar2(50)not null,      --单曲名
       sopicPath varchar2(40) not null,    --图片路径
       sopubTime date not null,            --出版时间
       solyricPath varchar2(40),      --歌词路径
       sopath varchar2(40) not null,  --单曲存储路径
       soduration varchar2(20) not null,       --单曲时长
       vipDownload varchar2(10) default '否',    --是否是会员才能下载
       mark varchar2(100)       --预留字段
);

--insert into song values (seq_song_soid.nextval,1,2,'生日那天','images/2_1.png',
--to_date('2017-04-03','yyyy-mm-dd'),'','F:\test','20','否','');
--insert into song values (seq_song_soid.nextval,1,2,'童话镇','images/2_1.png',
--to_date('2017-04-03','yyyy-mm-dd'),'','F:\test','20','否','');
--insert into song values (seq_song_soid.nextval,1,2,'烟火','images/2_1.png',
--to_date('2017-04-03','yyyy-mm-dd'),'','F:\test','20','否','');
--select * from song;
--drop table song;
update song set spid=10041 where  spid=10002;


update song set sgid=10001;


--音乐语种表
create table languages(
	lgid number(20) primary key, --编号
	language varchar2(20)       --语种
);

insert into LANGUAGES values(10001,'华语');
insert into LANGUAGES values(10002,'日韩');
insert into LANGUAGES values(10003,'欧美');
--音乐类型表
create table musicStyle(
	msid number(20) primary key,   --类型编号
    msstyle varchar2(20)          --风格类型
);

--drop table musicStyle;

create table mv(
       mvid number(20) primary key,        --mv编号
       mvname varchar2(50)not null, --mv名字
       sgid number(20) not null, --歌手编号
       soid number(20) not null,	--单曲编号
       mvduration varchar2(20)not null, --mv时长 
       mvpicPath varchar2(40)not null,  --图片路径
       mvpubTime date not null, --出版时间 
       mvpath varchar2(40)not null,   --mv存放路径
       mark varchar2(100)  --预留字段  
);
insert into mv select seq_mv_mvid.nextval,dbms_random.string('1',dbms_random.value(4,10)),
10018,10024,'210','f:/a',to_date('2017-04-03','yyyy-mm-dd'),
'f:/b','' from dual connect by level <10;

--drop table mv;

--评论表
create table comments(
       cid number(20) primary key,--评论编号
       userid number(20) not null,  --评论人编号
       content varchar2(100), --评论内容
       commentTime date not null,   --评论时间
       commentPicPath varchar2(100), --评论图片路径
       mark varchar2(100)     --预留字段  
);

insert into COMMENTS values (seq_comments_cid.nextval,10041,'我好喜欢童话这首歌錒！！！',to_date('2000-11-26 00:04','yyyy-mm-dd hh24:mi:ss'),'images/2_1.png','');
insert into comments values (seq_comments_cid.nextval,10001,'hh我好喜欢童话这首歌錒！！！',sysdate,'images/2_1.png','')
--select * from comments;
--drop table comments;

--用户收藏表
create table collects(
       coid number(20) primary key,    --收藏编号
       userid number(20) not null,       --用户编号
       soid number(20) not null,      --单曲编号
       mark varchar2(100)   --预留字段
);
--drop table collects;
--drop sequence seq_collect_coid;

--序列
--drop sequence seq_song_soid;
create sequence seq_aid start with 10001;
create sequence seq_msid start with 10001;
create sequence seq_lgid start with 10001;
create sequence seq_users_uid start with 10001;
create sequence seq_singer_sgid start with 10001;
create sequence seq_special_spid start with 10001;
create sequence seq_song_soid start with 10001;
create sequence seq_mv_mvid start with 10001;
create sequence seq_comments_cid start with 10001;
create sequence seq_collect_coid start with 10001;





