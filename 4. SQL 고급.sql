#날짜 : 2023/06/16
#이름 : 김상엽
#내용 : 4.SQL 고급 실습하기

CREATE TABLE `Member`(
	`uid` VARCHAR(10) PRIMARY KEY,
	`name`VARCHAR(10) NOT NULL,
	`hp`	VARCHAR(13) NOT NULL,
	`pos` VARCHAR(10) DEFAULT '사원',
	`dep` INT,
	`rdata` DATETIME NOT NULL
	);
	
	
CREATE TABLE `Department`(
	`depNo` 	INT PRIMARY KEY,
	`name` 	VARCHAR(10) NOT NULL,
	`tel` 	VARCHAR(12) NOT NULL UNIQUE
	);

CREATE TABLE `Sales`(
	`seq`		INT AUTO_INCREMENT PRIMARY KEY,
	`uid`		VARCHAR(10) NOT NULL,
	`year`	YEAR NOT NULL,
	`month`	TINYINT NOT NULL,
	`sale`	INT NOT NULL
	);
	

DROP TABLE `Member`;
DROP TABLE `Department`;
DROP TABLE `Sales`;

INSERT INTO `Member` VALUES ('a101','박혁거세','010-1234-1001','부장',101,'2020-11-19 11:39:48');
INSERT INTO `Member` VALUES ('a102','김유신','010-1234-1002','차장',101,'2020-11-19 11:39:48');
INSERT INTO `Member` VALUES ('a103','김춘추','010-1234-1003','사원',101,'2020-11-19 11:39:48');
INSERT INTO `Member` VALUES ('a104','장보고','010-1234-1004','대림',102,'2020-11-19 11:39:48');
INSERT INTO `Member` VALUES ('a105','강감찬','010-1234-1005','과장',102,'2020-11-19 11:39:48');


INSERT INTO `Member` VALUES ('a106','이성계','010-1234-1006','차장',103,'2020-11-19 11:39:48');
INSERT INTO `Member` VALUES ('a107','정철','010-1234-1007','차장',103,'2020-11-19 11:39:48');
INSERT INTO `Member` VALUES ('a108','이순신','010-1234-1008','부장',104,'2020-11-19 11:39:48');
INSERT INTO `Member` VALUES ('a109','허균','010-1234-1009','부장',104,'2020-11-19 11:39:48');
INSERT INTO `Member` VALUES ('a110','정약용','010-1234-1010','사원',105,'2020-11-19 11:39:48');


INSERT INTO `Member` VALUES ('a111','박지원','010-1234-1011','사원',105,'2020-11-19 11:39:48');


INSERT INTO `Department` VALUES (101,'영업1부','051-512-1001');
INSERT INTO `Department` VALUES (102,'영업2부','051-512-1002');
INSERT INTO `Department` VALUES (103,'영업3부','051-512-1003');
INSERT INTO `Department` VALUES (104,'영업4부','051-512-1004');
INSERT INTO `Department` VALUES (105,'영업5부','051-512-1005');
INSERT INTO `Department` VALUES (106,'영업지원부','051-512-1006');
INSERT INTO `Department` VALUES (107,'인사부','051-512-1007');


INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a101',2018,1,98100);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a102',2018,1,136000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a103',2018,1,80100);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a104',2018,1,78000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a105',2018,1,93000);


INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a101',2018,2,23500);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a102',2018,2,126000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a103',2018,2,18500);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a105',2018,2,19000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a106',2018,2,53000);


INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a101',2019,1,24000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a102',2019,1,109000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a103',2019,1,101000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a104',2019,1,53500);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a107',2019,1,24000);


INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a102',2019,2,160000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a103',2019,2,101000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a104',2019,2,43000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a105',2019,2,24000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a106',2019,2,109000);


INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a102',2020,1,201000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a104',2020,1,63000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a105',2020,1,74000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a106',2020,1,122000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a107',2020,1,111000);


INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a102',2020,2,120000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a103',2020,2,93000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a104',2020,2,84000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a105',2020,2,180000);
INSERT INTO `Sales` (`uid`,`year`,`month`,`sale`) VALUES ('a106',2020,2,76000);  


SELECT * FROM `Member` WHERE `name`='김유신';
SELECT * FROM `Member` WHERE `pos`='차장' AND dep=101;
SELECT * FROM `Member` WHERE `pos`='차장' OR dep=101;
SELECT * FROM `Member` WHERE `name` != '김춘추';
SELECT * FROM `Member` WHERE `name` < '김춘추';
SELECT * FROM `Member` WHERE `pos`='사원' OR `pos`='대리';
SELECT * FROM `Member` WHERE `pos` IN('사원', '대리');
SELECT * FROM `Member` WHERE `dep` IN(101, 102, 103);
SELECT * FROM `Member` WHERE `name` LIKE '%신';
SELECT * FROM `Member` WHERE `name` LIKE '김%';
SELECT * FROM `Member` WHERE `name` LIKE '김_ _';
SELECT * FROM `Member` WHERE `name` LIKE '_성_';
SELECT * FROM `Member` WHERE `name` LIKE '정_';
SELECT * FROM `Sales` WHERE `sale`  50000;
SELECT * FROM `Sales` WHERE `sale` = 50000 AND `sale` < 100000 AND `month`=1;
SELECT * FROM `Sales` WHERE `sale` BETWEEN 50000 AND 100000;
SELECT * FROM `Sales` WHERE `sale` NOT BETWEEN 50000 AND 100000;
SELECT * FROM `Sales` WHERE `year` IN(2020);
SELECT * FROM `Sales` WHERE `month` IN(1, 2);
 
 
SELECT * FROM `Sales` ORDER BY `sale`;
SELECT * FROM `Sales` ORDER BY `sale` ASC;
SELECT * FROM `Sales` ORDER BY `sale` DESC;
SELECT * FROM `Member` ORDER BY `name`;
SELECT * FROM `Member` ORDER BY `name` DESC;
SELECT * FROM `Member` ORDER BY `rdate` ASC;
SELECT * FROM `Sales` WHERE `sale` 50000 ORDER BY `sale` DESC;
SELECT * FROM `Sales`
WHERE `sale` 50000
ORDER BY `year`, `month`, `sale` DESC;


SELECT * FROM Sales LIMIT 3;
SELECT * FROM Sales LIMIT 0, 3;
SELECT * FROM Sales LIMIT 1, 2;
SELECT * FROM Sales LIMIT 5, 3;
SELECT * FROM Sales ORDER BY `sale` DESC LIMIT 3, 5;
SELECT * FROM Sales WHERE `sale` < 50000 ORDER BY `sale` DESC LIMIT 3;
SELECT * FROM Sales
WHERE `sale` 50000
ORDER BY `year` DESC, `month`, `sale` DESC
LIMIT 5;