--用户表
create table users(
    userid number(20) primary key,--用户编号
    uname varchar2(20) not null,  --用户名
    upwd varchar2(40) not null,   --密码
    uemail varchar2(20) not null, --邮箱
   	upicPath varchar2(40),  --头像路径
    uintroduce varchar2(100),    --个人简介
    ucondition int default 1, --账号状态 1可用 0不可用
    uvip int default 0,  --会员状态 1是   0否
  	mark varchar2(100)   ----预留字段 
);

alter table users modify uemail varchar2(40);

--drop table users;

insert into users select seq_users_uid.nextval,
dbms_random.string('1',dbms_random.value(4,10)),
'3b3690fba8bd08059eae130425396eb05ded1b7d',
'123456@qq.com',
'','挺好!',1,1,'' from dual connect by level <100;

select * from users;


--管理员
create table admin(
	aid varchar2(20) primary key,--管理员id
	aname varchar2(20) not null,--管理员姓名
	apwd varchar2(40) not null,--管理员密码
	acondition int default 1, --账号状态 1可用 0不可用
	mark varchar2(100)   ----预留字段 
);

insert into admin select seq_aid.nextval,
dbms_random.string('1',dbms_random.value(4,10)),
'3b3690fba8bd08059eae130425396eb05ded1b7d',
1,'' from dual connect by level <10;

select * from admin;

drop table admin;


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

-- drop table singer;


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
       lgid number(20) not null,--音乐语种编号
       msid number(20) not null, --音乐类型编号
       soduration varchar2(20) not null,       --单曲时长
       vipDownload varchar2(10) default '否',    --是否是会员才能下载
       mark varchar2(100)       --预留字段
);

--drop table song;

--音乐语种表
create table languages(
	lgid number(20) primary key, --编号
	language varchar2(20)       --语种
);

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

--drop table mv;

--评论表
create table comments(
       cid number(20) primary key,--评论编号
       soid number(20) not null, --被评论的歌曲编号
       userid number(20) not null,  --评论人编号
       content varchar2(100)not null, --评论内容
       commentTime date not null,   --评论时间
       mark varchar2(100)     --预留字段  
);

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
--drop sequence seq_aid;
create sequence seq_aid start with 10001;
create sequence seq_msid start with 10001;
create sequence seq_lgid start with 10001;
create sequence seq_users_uid start with 10001;
create sequence seq_single_sgid start with 10001;
create sequence seq_special_spid start with 10001;
create sequence seq_song_soid start with 10001;
create sequence seq_mv_mvid start with 10001;
create sequence seq_comments_cid start with 10001;
create sequence seq_collect_coid start with 10001;






