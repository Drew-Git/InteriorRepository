create database db_5ts;
CREATE USER '5ts'@'localhost' IDENTIFIED BY '1111';

GRANT ALL PRIVILEGES on db_5ts.* TO '5ts'@'localhost';
FLUSH PRIVILEGES;

create table tb_blog(
  bnum integer not null,
  blog_img text,
  style varchar(50) not null,
  title varchar(30) not null,
  contents text,
  blog_userid varchar(50),
  blog_userid_img text,
  write_time timestamp default current_timestamp,
  hit_cnt integer default 0, 
  score integer default 0,
  constraint pk_blog_bnum primary key(bnum)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
alter table tb_blog modify bnum int not null auto_increment;

create table tb_review(
	bnum integer not null,
    contents text not null,
    reviewer_img text,
    review_userid varchar(50),
    blog_userid varchar(50),
    writed_bnum integer default 0,
    write_time timestamp default current_timestamp,
	constraint pk_review_bnum primary key(bnum)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
alter table tb_review modify bnum int not null auto_increment;

create table tb_score(
   bnum integer,
    userid varchar(50) not null,
    sex varchar(50),
    age integer,
    blog_userid varchar(50) not null,
    blog_bnum integer,
    blog_style varchar(50),
    constraint pk_score_bnum primary key(bnum)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
alter table tb_score modify bnum int not null auto_increment;

-- 테이블 생성 ( 회원가입 tb_user )
create table tb_user(
userid varchar(50) not null,
userpw varchar(20) not null,
birth_date date not null,
username varchar(10) not null,
sex varchar(10) not null,
img varchar(100),
style varchar(50)
) DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;