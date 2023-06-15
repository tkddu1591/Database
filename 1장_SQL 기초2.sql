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

select * from `User1`;
select * from `User1` where `uid` = 'A101';
select * from `User1` where `name` = '김춘추';
select * from `User1` where `age` <30;
select * from `User1` where `age` >= 30;
select `uid`, `name`, `age` From `User1`;

#실습 1-5
update `user1` set `hp` = '010-1234-4444' Where `uid` = 'A104';
update `user1` set `age` = 51 where `uid`= 'A105';
update `user1` set 
				 `hp` = '010-1234-1001',
				 `age` = 27
				 where
				 `uid`= 'A101';
#실습 1-6
delete from `user1` where `uid` = 'A101';
delete from `user1` where `uid` = 'A102' and `age` =25;
delete from `user1` where `uid` = `age` >= 30;


#실습 1-7

create table `Tb1User`(
`userId` varchar(10),
`userName` varchar(10),
`userHp` Char(13),
`userAge` tinyint,
`userAddr` varchar(20)
);
drop table `tb1user`;
create table `Tb1Product`(
`prdCode` Int,
`prdName` varchar(10),
`prdPrice` Int,
`prdAmount` int,
`prdCompany` varchar(10),
`prdMakeDate` date
);
drop table `Tb1product`;
#실습 1-8
insert into `Tb1user` value('p101','김유신','010-1234-1001',25,'서울시 중구');
insert into `Tb1user` value('p102','김춘추','010-1234-1002',23,'부산시 금정구');
insert into `Tb1user` (`userId`, `username`,`userAge`,`userAddr`) 
				value('p103','장보고','31','경기도 광주군');
insert into `Tb1user` set `UserId` = 'p104',
						`UserName` = '강감찬',
                        `UserAddr` = '경남 창원시';
insert into `Tb1user` set `UserId` = 'p105',
						`UserName` = '이순신',
                        `UserHp` = '010-1234-1005',
                        `UserAge` = 50;
                        
                        
insert into `Tb1product` value (1,'냉장고',800,10,'LG',date_format('20220106','%Y-%m-%d'));
insert into `tb1product` set `prdcode` = 2,
						`prdname` = '노트북',
                        `prdPrice` = 1200,
                        `prdAmount` = 20,
                        `prdCompany` = '삼성',
                        `prdMakeDate` = date_format(20220106,'%Y-%m-%d');
insert into `Tb1product` value (3,'TV',1400,6,'LG',date_format('20220106','%Y-%m-%d'));
insert into `Tb1product` value (4,'세탁기',1000,8,'LG',date_format('20220106','%Y-%m-%d'));
insert into `tb1product` set `prdcode` = 5,
						`prdname` = '컴퓨터',
                        `prdPrice` = 1100,
                        `prdAmount` = 0;
insert into `tb1product` set `prdcode` = 6,
						`prdname` = '휴대폰',
                        `prdPrice` = 900,
                        `prdAmount` = 102,
                        `prdCompany` = '삼성',
                        `prdMakeDate` = date_format(20220106,'%Y-%m-%d');
#실습 1-9

select * From `tb1user`;
select `userName` from `tb1User`;
select `userName`, `userHP` from `tb1user`;
select * from `tb1User` where `userId` = 'p102';
select * from `tb1User` where `userId` = 'p104' or `userId` = 'p105';
select * from `tb1User` where `userAddr` = '부산시 금정구';
select * from `tb1User` where `userAge` > 30;
select * from `tb1User` where `userHp` is Null;
update `tb1User` set `userAge` = 42 where `userID` = 'p104';
update `tb1User` set `userAddr` = '경남 김해시' where `userID` = 'p105';
delete from `Tb1User` where `userId` = 'p103';

select * from `tb1product`;
select `prdName` From `tb1product`;
select `prdName`, `prdPrice` FROM `tb1product`;
select * From `tb1product` where `prdCompany`= 'LG';
select * From `tb1product` where `prdCompany`= '삼성';
update `tb1product` set
					`prdCompany` = '삼성',
                    `prdmakeDate` = '2021-01-01'
                    where
                    `prdcode`=5;