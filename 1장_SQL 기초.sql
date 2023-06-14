# 날짜 : 2023/06/14
# 이름 : 김상엽
# 내용 : 1장 SQL 기초

#실습 1-1
create database `UserDB`;
drop database `UserDB`;
#실습 1-2

create table `User1`(
`uid` varchar(20),
`name` varchar(10),
`hp` CHAR(13),
`age` tinyint);

drop table `User1`;

#실습 1-3
insert into `User1` value('A101','김유신','010-1234-1111',25);
insert into `User1` value('A102','김춘추','010-1234-2222',23);
insert into `User1` value('A103','장보고','010-1234-3333',32);
insert into `User1` (`uid`, `name`, `age`) values('A104','강감찬',45);
insert into `User1` set `uid` = 'A105', `name` = '이순신', `hp`='101-1234-5555';

#실습 1-4
#실습 1-5
#실습 1-6
delete from `user1` where `uid` = 'A101';
delete from `user1` where `uid` = 'A102' and `age` =25;
delete from `user1` where `uid` = `age` >= 30;


#실습 1-7
#실습 1-8
#실습 1-9