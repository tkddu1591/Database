# 날짜 : 2023/06/15
# 이름 : 김상엽
# 내용 : 2장 테이블 제약조건 실습하기

#실습 2-1
drop table `User2`;
create table `User2`(
	`uid`	varchar(10) primary key, #primary key = 기본 키(중복 값 입력 불가)
	`name`	varchar(10),
	`hp`	char(13) ,
	`age`	int
);
#실습 2-2
insert into `User2` values('A101','김유신','010-1234-1001','23');
insert into `User2` values('A102','김춘추','010-1234-1002','21');
insert into `User2` values('A103','장보고','010-1234-1003','31');
insert into `User2` values('A104','강감찬','010-1234-1001','41');

#실습 2-3
drop table `User3`;
create table `User3`(
	`uid`	varchar(10) primary key, #primary key = 기본 키(Null, 중복 값 입력 불가)
	`name`	varchar(10),
	`hp`	char(13) unique, #unique 고유키(대체키) = (Null 값 허용(중복 값 입력 불가)
	`age`	int
);
#실습 2-4
insert into `User3` values('A101','김유신','010-1234-1001','23');
insert into `User3` (`uid`, `name`, `hp`,`age`) values('A102','김춘추','010-1234-1002','21');
insert into `User3` set
`uid` = 'A103',
`name` = '장보고',
`hp` = '010-1234-1003',
`age` = 31;
insert into `User3` values('A104','강감찬','010-1234-1001','41');
insert into `User3` (`uid`,`name`,`age`)values ('A104','강감찬','41');
insert into `User3` (`uid`,`name`,`age`)values ('A105','이순신','51');


#외래키(foreign key 다른 테이블의 키 참조 (primanry Key or Unique 만 사용 가능)
#실습 2-5
drop table `Parent`;
create table `Parent`(
	`pid`   varchar(10) primary key,
	`name` varchar(10), 
	`hp` char(13) unique
);
drop table `Child`;
create table `Child`(
	`cid`   varchar(10) primary key,
	`name` varchar(10), 
	`hp` char(13) unique,
    `pid` varchar(10),
    foreign key(`pid`) references `parent` (`pid`)
);

#실습 2-6
insert into `Parent` values('p101','홍길동','010-1234-1001');
insert into `parent` values('p102','임꺽정','010-1234-1002');
insert into `parent` values('p103','이성계','010-1234-1003');

insert into`child` values('c101','홍길남','010-1234-2001','p101');
insert into`child` values('c102','임철수','010-1234-2002','p102');
insert into`child` values('c103','이방원','010-1234-2003','p103');


#실습 2-7
drop table `User4`;
create table `User4`(
	`seq`		int auto_increment primary key,
	`name` 		varchar(10),
	`gender` 	tinyint,
	`age` 		tinyint,
	`addr` 		varchar(255)
);

#실습 2-8
Insert into `User4`(`name`,`gender`,`age`,`addr`) values('김유신', 1,23,'김해시');

#실습 2-9
drop table `User5`;
create table `User5` (
	`name` 		varchar(10) NOT null,
	`gender` 	tinyint,
	`age` 		int default 1,
	`addr` 		varchar(10)
);

#실습 2-10
insert into `User5` values('김유신','1','23','김해시');
insert into `User5` (`name`, `addr`) values('김유신','김해시');
insert into `User5` set
`name` = '이순신',
`gender` = '2',
`addr` = '강릉시';


#실습 2-11
alter table `User5` add `hp` varchar(20);
alter table `User5` add `birth` char(10) default '0000-00-00' after `name`;

#실습 2-12
alter table `User5` modify `hp` char(13);
alter table `User5` modify `age` tinyint;

#실습 2-13
alter table `User5` change column `addr` `address` varchar(100);

#실습 2-14
alter table `User5` drop `gender`;


#실습 2-15
create table `User6` like `User5` ;

#실습 2-16
insert into `User6` select*from `User5`;