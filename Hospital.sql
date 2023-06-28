#진료과

INSERT INTO `Department` VALUES ('101','소아과','김유신','051-123-0101');
INSERT INTO `Department` VALUES ('102','내과','김춘추','051-123-0102');
INSERT INTO `Department` VALUES ('103','외과','장보고','051-123-0103');
INSERT INTO `Department` VALUES ('104','피부과','선덕여왕','051-123-0104');
INSERT INTO `Department` VALUES ('105','이비인후과','강감찬','051-123-0105');

INSERT INTO `Department` VALUES ('106','산부인과','신사임당','051-123-0106');
INSERT INTO `Department` VALUES ('107','흉부외과','류성룡','051-123-0107');
INSERT INTO `Department` VALUES ('108','정형외과','송상현','051-123-0108');
INSERT INTO `Department` VALUES ('109','신경외과','이순신','051-123-0109');
INSERT INTO `Department` VALUES ('110','비뇨기과','정약용','051-123-0110');

INSERT INTO `Department` VALUES ('111','안과','박지원','051-123-0111');
INSERT INTO `Department` VALUES ('112','치과','전봉준','051-123-0112');


INSERT INTO `Doctors` VALUES('D101101','김유신','1976-01-21','M','101','과장','010-1101-1976','kimys@bw.com');
INSERT INTO `Doctors` VALUES('D101102','계백','1975-06-11','M','101','전문의','010-1102-1975','gaeback@bw.com');
INSERT INTO `Doctors` VALUES('D101103','김관창','1989-05-30','M','101','전문의','010-1103-1989','kwanch@bw.com');
INSERT INTO `Doctors` VALUES('D102101','김춘추','1979-04-13','M','102','과장','010-2101-1979','kimcc@bw.com');
INSERT INTO `Doctors` VALUES('D102104','이사부','1966-09-12','M','102','전문의','010-2104-1966','leesabu@bw.com');

INSERT INTO `Doctors` VALUES('D103101','장보고','1979-07-28','M','103','과장','010-3101-1979','jangbg@bw.com');
INSERT INTO `Doctors` VALUES('D104101','선덕여왕','1984-06-15','F','104','과장','010-4101-1984','gueen@bw.com');
INSERT INTO `Doctors` VALUES('D105101','강감찬','1965-10-21','M','105','과장','010-5101-1965','kang@bw.com');
INSERT INTO `Doctors` VALUES('D106101','신사임당','1972-11-28','F','106','과장','010-6101-1972','sinsa@bw.com');
INSERT INTO `Doctors` VALUES('D107103','이이','1992-09-07','M','107','전문의','010-7103-1992','leelee@bw.com');

INSERT INTO `Doctors` VALUES('D107104','이황','1989-12-09','M','107','전문의','010-7104-1989','hwang@bw.com');
INSERT INTO `Doctors` VALUES('D108101','송상현','1977-03-14','M','108','과장','010-8101-1977','ssh@bw.com');


INSERT INTO `Nurses` VALUES('N101101','송승헌','1976-02-21','M','101','수간호사','010-1101-7602','ssh@bw.com');
INSERT INTO `Nurses` VALUES('N102101','이영애','1975-07-11','F','102','수간호사','010-1102-7507','yung@bw.com');
INSERT INTO `Nurses` VALUES('N102102','엄정화','1989-06-30','F','102','주임','010-1103-8906','um@bw.com');
INSERT INTO `Nurses` VALUES('N102103','박명수','1979-05-13','M','102','주임','010-2101-7905','park@bw.com');
INSERT INTO `Nurses` VALUES('N103101','정준하','1966-10-12','M','103','주임','010-2104-6610','jung@bw.com');

INSERT INTO `Nurses` VALUES('N104101','김태희','1979-08-28','F','104','주임','010-3101-7908','taeh@bw.com');
INSERT INTO `Nurses` VALUES('N105101','송혜교','1984-07-15','F','105','주임','010-4101-8407','song@bw.com');
INSERT INTO `Nurses` VALUES('N106101','공유','1965-11-21','M','106','간호사','010-5101-6511','gong@bw.com');
INSERT INTO `Nurses` VALUES('N107101','이병헌','1972-12-28','M','107','간호사','010-6101-7212','byung@bw.com');
INSERT INTO `Nurses` VALUES('N108101','송중기','1992-10-07','M','108','간호사','010-7103-9210','jungi@bw.com');


INSERT INTO `Patients` VALUES('P102101','D102101','N102101','정우성','760121-1234567','M','서울','010-1101-7601',NULL,'배우');