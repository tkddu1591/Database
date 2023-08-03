#날짜 : 2023/06/16
#이름 : 김상엽
#내용 : 1. SQL 기초

CREATE DATABASE `UserDB`;
DROP DATABASE `UserDB`;

CREATE TABLE `User3`(
`uid` VARCHAR (10),
`name` VARCHAR(10),
`hp` CHAR (13),
`age` INT
);

DROP TABLE `User3`;

INSERT INTO `User3` VALUES ('A101', '김유신', '010-1234-1111',25);
INSERT INTO `User3` VALUES ('A102', '김춘추', '010-1234-2222',23);
INSERT INTO `User3` VALUES ('A103', '장보고', '010-1234-3333',43);
INSERT INTO `User3` (`uid`,`name`,`age`)VALUES ('A104', '강감찬',45);
INSERT INTO `User3` SET 
`uid` = 'A105',
`name` = '이순신',
`hp` = '010-1234-5555';

SELECT * FROM `User3`;
SELECT * FROM `User3` WHERE `uid` = 'A101';
SELECT * FROM `User3` WHERE `name` = '김춘추';
SELECT * FROM `User3` WHERE `age` < 30;
SELECT * FROM `User3` WHERE `AGE` >= 30;
SELECT `uid`, `name`,`age` FROM `User3`;

UPDATE `User3` SET `hp` = '010-1234-4444' WHERE `uid` = 'A104';
UPDATE `User3` SET `AGE` = 51 WHERE `uid` = 'A105';
UPDATE `User3` SET `hp` = '010-1234-1001', `age`=27 WHERE `uid` = 'A101';


Select * from `User3` where `uid`='?';
DELETE FROM `User3` WHERE `uid` = 'A101';
DELETE FROM `User3` WHERE `uid` = 'A102' AND `age`= 25;
DELETE FROM `User3` WHERE `age` >= 30;



CREATE TABLE `tblUser` (
	`userid` 	VARCHAR(10),
	`username` 	VARCHAR(10),
	`userhp` 	CHAR(13),
	`userage` 	TINYINT,
	`userAddr` 	VARCHAR(20)
	);

CREATE TABLE `tblProduct`(
	`prdCode`		INT,
	`prdname`		VARCHAR(10),
	`prdPrice`		INT,
	`prdAmount`		INT,
	`prdCompany`	VARCHAR(10),
	`prdMakeDate`	DATE
);

DROP TABLE `tblProduct`;
DROP TABLE `tblUser`;

INSERT INTO `tblUser` VALUES ('p102','김춘추','010-1234-1002',23,'부산시 금정구');
INSERT INTO `tblUser` VALUES ('p101','김유신','010-1234-1001',25,'서울시 중구');
INSERT INTO `tblUser` (`userId`,`userName`,`userAge`,`userAddr`) VALUES ('p103','장보고',31,'경기도 광주군');
INSERT INTO `tblUser` (`userId`,`userName`,`userAddr`) VALUES ('p104','강감찬','경남 창원시');
INSERT INTO `tblUser` (`userId`,`userName`,`userhp`,`userAge`) VALUES ('p103','이순신','010-1234-1005',50);


INSERT INTO `tblProduct` VALUES (1,'냉장고',800,10,'LG','2022-01-06');
INSERT INTO `tblProduct` VALUES (2,'노트북',1200,20,'삼성','2022-01-06');
INSERT INTO `tblProduct` VALUES (3,'TV',1400,6,'LG','2022-01-06');
INSERT INTO `tblProduct` VALUES (4,'세탁기',1000,8,'LG','2022-01-06');
INSERT INTO `tblProduct` SET
		`prdCode` 	= 5,
		`prdName` 	= '컴퓨터',
		`prdPrice` 	= 1100,
		`prdAmount` = 0;
INSERT INTO `tblProduct` VALUES (6,'휴대폰',900,102,'삼성','2022-01-06');

 SELECT * FROM `TblUser`;
 SELECT `userName` FROM `TblUser`;
 SELECT `userName`, `userHp` FROM `TblUser`;
 SELECT * FROM `TblUser` WHERE `userId`='p102';
 SELECT * FROM `TblUser` WHERE `userId`='p104' OR `userId`='p105';
 SELECT * FROM `TblUser` WHERE `userAddr`='부산시 금정구';
 SELECT * FROM `TblUser` WHERE `userAge` > 30;
 SELECT * FROM `TblUser` WHERE `userHP` IS NULL;
 UPDATE `TblUser` SET `userAge`=42 WHERE `userID`='p104';
 UPDATE `TblUser` SET `userAddr`='경남 김해시' WHERE `userId`='p105';
 DELETE FROM `TblUser` WHERE `userId`='p103';

 SELECT * FROM `TblProduct`;
 SELECT `prdName` FROM `TblProduct`;
 SELECT `prdName`, `prdPrice` FROM `TblProduct`;
 SELECT * FROM `TblProduct` WHERE `prdCompany`='LG';
 SELECT * FROM `TblProduct` WHERE `prdCompany`='삼성';
 
 UPDATE `TblProduct` SET

`prdCompany`='삼성',
`prdMakeDate`='2021-01-01'
WHERE
`prdCode`=5;

