INSERT INTO `Students` VALUES ('20101001',10,'P10101','정우성','760121-1234567','010-1101-7601',NULL,'서울');
INSERT INTO `Students` VALUES ('20101002',10,'P10101','이정재','760611-1234567','010-1102-7506',NULL ,'서울');
INSERT INTO `Students` VALUES ('20111011',11,'P11103','전지현','890530-1234567','010-1103-8905','jjh@naver.com' ,'대전');
INSERT INTO `Students` VALUES ('20111013',11,'P11103','이나영','790413-1234567','010-2101-7904','lee@nver.com' ,'대전');
INSERT INTO `Students` VALUES ('20111014',11,'P11104','원빈','660912-1234567','010-2104-6609','one@dume.net','대전');

INSERT INTO `Students` VALUES ('21221010',22,'P22110','장동건','790728-1234567','010-3101-7907','jang@naver.com','대구');
INSERT INTO `Students` VALUES ('21231002',23,'P23102','고소영','840615-1234567','010-4101-8406','goso@daum.net','대구');
INSERT INTO `Students` VALUES ('22311011',31,'P31104','김연아','651021-1234567','010-5101-6510','yuna@daum.net','대구');
INSERT INTO `Students` VALUES ('22311014',31,'P31104','유재석','721128-1234567','010-6101-7211',NULL ,'부산');
INSERT INTO `Students` VALUES ('22401001',40,'P40101','강호동','920907-1234567','010-7103-9209',NULL ,'부산');

INSERT INTO `Students` VALUES ('22401002',40,'P40101','조인성','891209-1234567','010-7104-8912','join@gamil.com' ,'광주');
INSERT INTO `Students` VALUES ('22421003',42,'P42103','강동원','770314-1234567','010-8101-7703','dong@naver.com','광주');


INSERT INTO  `Professors` VALUES ('P10101',10,'김유신','750120-1234567','010-1101-1976','kimys@hg.ac.kr','서울');
INSERT INTO  `Professors` VALUES ('P10102',10,'계백','740610-1234567','010-1102-1975','geavack@hg.ac.kr','서울');
INSERT INTO  `Professors` VALUES ('P11101',11,'김관창','880529-1234567','010-1103-1989','kwanch@hg.ac.kr','대전');
INSERT INTO  `Professors` VALUES ('P11103',11,'김춘추','780412-1234567','010-2101-1979','kimcc@hg.ac.kr','대전');
INSERT INTO  `Professors` VALUES ('P11104',11,'이사부','650911-1234567','010-2104-1966','leesabu@hg.ac.kr','대전');

INSERT INTO  `Professors` VALUES ('P22110',22,'장보고','780727-1234567','010-3101-1979','jangbg@hg.ac.kr','대구');
INSERT INTO  `Professors` VALUES ('P23102',23,'선덕여왕','830614-1234567','010-4101-1984','gueen@hg.ac.kr','대구');
INSERT INTO  `Professors` VALUES ('P31101',31,'강감찬','641021-1234567','010-5101-1965','kang@hg.ac.kr','대구');
INSERT INTO  `Professors` VALUES ('P31104',31,'신사임당','711127-1234567','010-6101-1972','sinsa@hg.ac.kr','부산');
INSERT INTO  `Professors` VALUES ('P40101',40,'이이','910906-1234567','010-7103-1992','leelee@hg.ac.kr','부산');

INSERT INTO  `Professors` VALUES ('P40102',40,'이황','881208-1234567','010-7104-1989','hwang@hg.ac.kr','광주');
INSERT INTO  `Professors` VALUES ('P42103',42,'송상현','760313-1234567','010-8101-1977','ssh@hg.ac.kr','광주');

INSERT INTO `Department` VALUES (10,'국어국문학과','051-510-1010');
INSERT INTO `Department` VALUES (11,'영어영문학과','051-510-1011');
INSERT INTO `Department` VALUES (20,'경영학과','051-510-1020');
INSERT INTO `Department` VALUES (21,'경제학과','051-510-1021');
INSERT INTO `Department` VALUES (22,'정치외교학과','051-510-1022');

INSERT INTO `Department` VALUES (23,'사회복지학과','051-510-1023');
INSERT INTO `Department` VALUES (30,'수학과','051-510-1030');
INSERT INTO `Department` VALUES (31,'통계학과','051-510-1031');
INSERT INTO `Department` VALUES (32,'생명과학과','051-510-1032');
INSERT INTO `Department` VALUES (40,'기계공학과','051-510-1040');

INSERT INTO `Department` VALUES (41,'전자공학과','051-510-1041');
INSERT INTO `Department` VALUES (42,'컴퓨터공학과','051-510-1042');

INSERT INTO `Lectures` VALUES ('101001','P10101','대학글쓰기',2,10,'본102');
INSERT INTO `Lectures` VALUES ('101002','P10102','한국어음운론',3,30,'본102');
INSERT INTO `Lectures` VALUES ('101003','P10102','한국현대문학사',3,30,'본103');
INSERT INTO `Lectures` VALUES ('111011','P11103','중세영문학',3,25,'본201');
INSERT INTO `Lectures` VALUES ('111012','P11104','영미시',3,25,'본201');

INSERT INTO `Lectures` VALUES ('231110','P23102','사회복지학개론',1,8,'별관103');
INSERT INTO `Lectures` VALUES ('311002','P31101','통계학의이해',2,16,'별관303');
INSERT INTO `Lectures` VALUES ('311003','P31104','기초 통계학',3,26,'별관303');
INSERT INTO `Lectures` VALUES ('401019','P40101','기계역학',3,36,'공학관102');
INSERT INTO `Lectures` VALUES ('421012','P42103','데이터베이스',3,32,'공학관103');

INSERT INTO `Register` (`stdNo`,`lecNo`,`proNo`) VALUES ('20101001','101001','P10101');
INSERT INTO `Register` VALUES ('20101001','101002','P10102',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `Register` VALUES ('20111013','111011','P11103',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `Register` VALUES ('21231002','231110','P23102',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `Register` VALUES ('22401001','401019','P40101',NULL,NULL,NULL,NULL,NULL,NULL);

INSERT INTO `Register` VALUES ('22401001','421012','P42103',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `Register` VALUES ('20101001','101003','P10102',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `Register` VALUES ('22421003','311003','P31104',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `Register` VALUES ('22421003','421012','P42103',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `Register` VALUES ('20111013','111012','P11104',NULL,NULL,NULL,NULL,NULL,NULL);

insert into `register`(`stdNo`,`lecNo`,`proNo`) values('20101001', '101001','P10101');
insert into `register`(`stdNo`,`lecNo`,`proNo`) values('20101001', '101002','P10102');
insert into `register`(`stdNo`,`lecNo`,`proNo`) values('20111013', '111011','P11103');
insert into `register`(`stdNo`,`lecNo`,`proNo`) values('21231002', '231110','P23102');
insert into `register`(`stdNo`,`lecNo`,`proNo`) values('22401001', '401019','P40101');
insert into `register`(`stdNo`,`lecNo`,`proNo`) values('22401001', '421012','P42103');
insert into `register`(`stdNo`,`lecNo`,`proNo`) values('20101001', '101003','P10102');
insert into `register`(`stdNo`,`lecNo`,`proNo`) values('22421003', '311003','P31104');
insert into `register`(`stdNo`,`lecNo`,`proNo`) values('22421003', '421012','P42103');
insert into `register`(`stdNo`,`lecNo`,`proNo`) values('20111013', '111012','P11104');

insert into `Students` values ('20101001', 10, 'P10101', '정우성', '760121-1234567', '010-1101-7601', null, '서울'); 
insert into `Students` values ('20101002', 10, 'P10101', '이정재', '750611-1234567', '010-1102-7506', null, '서울'); 
insert into `Students` values('20111011','11','P11103','전지현','890530-1234567','010-1103-8905','jjh@naver.com','대전');
insert into `Students` values('20111013','11','P11103','이나영','790413-1234567','010-2101-7904','lee@naver.com','대전');
insert into `Students` values('20111014','11','P11103','원빈','660912-1234567','010-2104-6609','one@naver.com','대전');
insert into `Students` values('21221010','22','P22110','장동건','790728-1234567','010-3101-7907','jang@naver.com','대구');
insert into `Students` values('21231002','23','P23102','고소영','840615-1234567','010-4101-8406','goso@daum.net','대구');
insert into `Students` values('22311011','31','P31104','김연아','651021-1234567','010-5101-6510','yuna@daum.net','대구');
insert into `Students` values ('22311014', 31, 'P31104', '유재석', '721128-1234567', '010-6101-7211', null, '부산');
insert into `Students` values ('22401001', 40, 'P40101', '강호동', '920907-1234567', '010-7103-9209', null, '부산');
insert into `Students` values('22401002','40','P40101','조인성','891209-1234567','010-7104-8912','join@gmail.com','광주');
insert into `Students` values('22421003','42','P42103','강동원','770314-1234567','010-8101-7703','dong@naver.com','광주');

SET foreign_key_checks=1;
#1
SELECT `stdNo`,`stdName`,`stdHp`,a.depNo,`depName` FROM `Students` AS a
JOIN `Department` AS b ON a.depNo=b.depNo ;
#2
SELECT a.proNo,a.proName,a.proHp,b.depNo,b.depName  FROM  `professors` AS a
JOIN `department` AS b ON a.depNo = b.depNo;

#3
SELECT a.lecNo,a.lecName,b.proName,b.proHp FROM `lectures` AS a
JOIN `professors` AS b ON a.proNo = b.proNo;

#4
SELECT a.lecNo,a.lecName,b.proNo,b.proName,b.proHp,c.depNo,c.depName FROM `lectures` AS a
JOIN `professors` AS b ON a.proNo = b.proNo
JOIN `department` AS c ON b.depNo = c.depNo;

#5
SELECT a.stdNo,b.stdName,d.depNo,d.depName,c.proNo,c.proName FROM `register` AS a
JOIN `students` AS b ON a.stdNo=b.stdNo
JOIN `professors` AS c ON c.proNo=a.proNo
JOIN `department` AS d ON c.depNo=d.depNo;

UPDATE `Register` SET
	`regAttenScore` 	= CEIL(RAND()*100),
	`regMidScore`	 	= CEIL(RAND()*100),
	`regFinalScore`	= CEIL(RAND()*100),
	`regEtcScore`		= CEIL(RAND()*100);
	
	
UPDATE `Register` 
SET `regAttenScore` =10, 
regMidScore = 20, 
regFinalScore = 20, 
regEtcScore=10
WHERE lecNo = '101001';

UPDATE `Register` 
SET `regAttenScore` =10, 
regMidScore = 30, 
regFinalScore = 20, 
regEtcScore=10
WHERE lecNo = '101002';

UPDATE `Register` 
SET `regAttenScore` =5, 
regMidScore = 20, 
regFinalScore = 20, 
regEtcScore=10
WHERE lecNo = '111011';

UPDATE `Register` 
SET `regAttenScore` =10, 
regMidScore = 30, 
regFinalScore = 30, 
regEtcScore=10
WHERE lecNo = '231110';

UPDATE `Register` 
SET `regAttenScore` =20, 
regMidScore = 30, 
regFinalScore = 40, 
regEtcScore=10
WHERE lecNo = '401019';


UPDATE `Register` 
SET `regAttenScore` =20, 
regMidScore = 30, 
regFinalScore = 30, 
regEtcScore=10
WHERE lecNo = '421012';

UPDATE `Register` 
SET `regAttenScore` =20, 
regMidScore = 30, 
regFinalScore = 40, 
regEtcScore=10
WHERE lecNo = '101003';

UPDATE `Register` 
SET `regAttenScore` =20, 
regMidScore = 20, 
regFinalScore = 20, 
regEtcScore=10
WHERE lecNo = '311003';

UPDATE `Register` 
SET `regAttenScore` =5, 
regMidScore = 30, 
regFinalScore = 30, 
regEtcScore=10
WHERE lecNo = '421012';

UPDATE `Register` 
SET `regAttenScore` =20, 
regMidScore = 30, 
regFinalScore = 20, 
regEtcScore=10
WHERE lecNo = '111012';



#7
UPDATE `Register` 
SET `regTotal` = (regAttenScore+regMidScore+regFinalScore+regEtcScore)/4;


#8
UPDATE `Register`
SET `regGrade` = if(regTotal<90,if(regTotal<80,if(regTotal<70,if(regTotal<60,if(regTotal<50,'F','E'),'D'),'C'),'B'),'A')
;

#9 테이블 총점이 가장 큰 점수
SELECT MAX(regTotal)  FROM `register`
ORDER BY `regTotal` DESC LIMIT 1;

# 수강신청 테이블에서 정우성의 총점의 평균을 구하시오
SELECT AVG(regTotal) AS '정우성 평균' FROM `register` AS a
JOIN `students` AS b ON a.stdNo= b.stdNo
WHERE b.stdName='정우성'
GROUP BY b.stdName ;