--------------------------------------------------------
--  파일이 생성됨 - 금요일-4월-28-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence BBS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HAVIT"."BBS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 150 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence COMMENTS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HAVIT"."COMMENTS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 15 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence HOBBY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HAVIT"."HOBBY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 11 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table BBS
--------------------------------------------------------

  CREATE TABLE "HAVIT"."BBS" 
   (	"IDX" NUMBER(4,0), 
	"NICKNAME" VARCHAR2(50 BYTE), 
	"BCONTENT" VARCHAR2(4000 BYTE), 
	"BDATE" DATE, 
	"HIT" NUMBER(4,0), 
	"SUBJECT" VARCHAR2(50 BYTE), 
	"CATEGORY" NUMBER(2,0), 
	"OPTDAY" VARCHAR2(30 BYTE), 
	"OPTAGE" VARCHAR2(30 BYTE), 
	"OPTGEN" VARCHAR2(20 BYTE), 
	"VIEWS" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table COMMENTS
--------------------------------------------------------

  CREATE TABLE "HAVIT"."COMMENTS" 
   (	"CIDX" VARCHAR2(50 BYTE), 
	"NICKNAME" VARCHAR2(50 BYTE), 
	"COMMENTS" VARCHAR2(450 BYTE), 
	"CDATE" DATE, 
	"IDX" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table HOBBY
--------------------------------------------------------

  CREATE TABLE "HAVIT"."HOBBY" 
   (	"IDX" NUMBER(4,0), 
	"ID" VARCHAR2(50 BYTE), 
	"CATEGORY" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "HAVIT"."MEMBER" 
   (	"NICKNAME" VARCHAR2(50 BYTE), 
	"ID" VARCHAR2(50 BYTE), 
	"PW" VARCHAR2(50 BYTE), 
	"GENDER" VARCHAR2(10 BYTE), 
	"BIRTH" DATE, 
	"EMAIL" VARCHAR2(100 BYTE), 
	"PHONE" VARCHAR2(30 BYTE), 
	"AREA" VARCHAR2(30 BYTE), 
	"ADDR" VARCHAR2(150 BYTE), 
	"SIGNUPDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HAVIT.BBS
SET DEFINE OFF;
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (138,'네이티브스피커','인원은 3~4명 여성분만 받습니다~',to_date('23/04/27','RR/MM/DD'),1,'토익스터디 만들어봐요',4,'평일오후','20','여자',0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (1,'뉴진스토끼','쉿 오늘도 개발중',to_date('23/04/20','RR/MM/DD'),null,'개발개발',16,null,null,null,60);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (139,'sad','sadsadsadsadsad',to_date('23/04/27','RR/MM/DD'),1,'232323223',2,'평일오후','10','남자',0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (145,'뉴진스토끼','찐리얼라스트낙타',to_date('23/04/28','RR/MM/DD'),1,'낙타5',16,null,null,null,0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (146,'뉴진스토끼','낙타기법을 사용합시다',to_date('23/04/28','RR/MM/DD'),1,'낙타7',16,null,null,null,0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (147,'뉴진스토끼','낙타기법을 사용합시다',to_date('23/04/28','RR/MM/DD'),1,'낙타7',16,null,null,null,0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (149,'뉴진스토끼','sad',to_date('23/04/28','RR/MM/DD'),1,'sadad',16,'평일오후','20','여자',0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (143,'asd','sdasadd',to_date('23/04/28','RR/MM/DD'),1,'test',2,'평일오전','10','남자',0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (148,'뉴진스토끼','ㅇㅌㅇㅌㅇㅌㅇㅌㅇㅌㅇㅌㅇㄷ',to_date('23/04/28','RR/MM/DD'),1,'ㄴㅌㄷㅌㅇㅌㅌ',16,null,null,null,0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (5,'kim8','아랄랄라',to_date('23/04/21','RR/MM/DD'),100,'게시글1',7,'평일 오전','10대','상관없음',1);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (3,'kim8','아랄랄라',to_date('23/04/21','RR/MM/DD'),1,'게시글2',8,'평일 오후','20대','상관없음',30);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (4,'kim8','아랄랄라',to_date('23/04/21','RR/MM/DD'),100,'게시글3',9,'평일 오전','30대','상관없음',20);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (10,'rabbit','강아지들 사회성을 기르기 위해서 강아지 산책을 함께하실 분을 찾아요~ 시간은 평일 오후에 하고, 아직 저희 강아지가 새끼라서 공격적인 성향의 반려견은 죄송하지만 조금 조심해주세요 ㅠㅠ',to_date('23/04/25','RR/MM/DD'),0,'낮에 강아지들 동반산책 함께하실분',14,'평일 오후','상관없음','여성만',null);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (6,'rabbit','제주도로 4/15일 출발 4박5일로 여행을 가실분을 찾습니다. 여성만 가능하며 강아지들과 함께 캠핑장에서 불멍하면서 놀아요~',to_date('23/04/21','RR/MM/DD'),3,'4/15 제주도 반려견동반 여행가실분',16,'상관없음','상관없음','여성만',2);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (9,'rabbit','구청 문화센터에서 주말 오전에 진행되는 강아지옷 공예반 같이 들으실분을 찾습니다~ 저도 처음하는거라서 실력에 상관없이 성실하게 같이 다니실분을 찾아요~',to_date('23/04/25','RR/MM/DD'),20,'주말 오전 강아지옷 만들기',1,'주말 오전','상관없음','여성만',null);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (7,'rabbit','5월10일 강아지를 위해서 직접 간식을 만들어볼 사람을 찾습니다. 레시피는 유튜브에서 찾아서 각자 재료를 가지고 와서 진행하려하구요. 간식 만드는 노하우가 있으신 분들에 많은 도움 부탁드립니다.',to_date('23/04/25','RR/MM/DD'),0,'5/10 강아지 간식 만들기 모집',8,'상관없음','상관없음','여성만',null);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (8,'rabbit','제가 곧 결혼을 하게 되었는데, 관련된 정보를 여러분들께 도움을 받고자 합니다. 도와주실 기혼자분 3분을 찾고 있구요. 보답으로 제가 저녁식사와 차를 대접해드리고자하니 많은 참여와 도움 부탁드립니다.',to_date('23/04/25','RR/MM/DD'),300,'5/20 결혼관련 정보 공유 모임',9,'평일 오후','상관없음','여성만',null);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (140,'asd','2',to_date('23/04/27','RR/MM/DD'),1,'asd',2,'평일오후','10','남자',0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (141,'ddss','sdsd',to_date('23/04/27','RR/MM/DD'),1,'sds',1,'평일오전','10','남자',0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (142,'asd','sadsada',to_date('23/04/27','RR/MM/DD'),1,'sad',2,'평일오전','10','남자',0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (115,'운동만','내일 평일오후에 한강뛰실분 
인원은 5명
천천히 뛸꺼니까 부담없이 댓글 남겨주세요',to_date('23/04/25','RR/MM/DD'),1,'내일 평일오후 한강뛰실분~',2,'평일오후','20','남자',null);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (127,'운동운동','구합니다',to_date('23/04/26','RR/MM/DD'),1,'주말에 헬스하실분',2,'평일오전','10','여자',0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (128,'운동합시다','열심히 해보아요',to_date('23/04/26','RR/MM/DD'),1,'주말에 한강뛰실분',2,'주말오후','10','남자',0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (129,'헬스합시다','웨이팅과 유산소 동시에 진행할께요',to_date('23/04/26','RR/MM/DD'),2,'헬스합시다헬스',2,'평일오후','20','여자',0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (132,'운동중독','빡씨게 뜁시다',to_date('23/04/26','RR/MM/DD'),1,'내일 개천 뛰실분~~',2,'주말오전','20','여자',0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (134,'헬창인생','헬스장에서 하체 빡씨게 하실분 댓글 남겨주세요',to_date('23/04/26','RR/MM/DD'),1,'하체 펌핑하실분 모집합니다',2,'주말오후','30','남자',0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (135,'헬스유망주','정직하게 운동할분 댓글주세요',to_date('23/04/26','RR/MM/DD'),1,'10대들의 건강한 웨이팅',2,'평일오후','10','남자',0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (136,'only 운동','내일 잠실에서 가볍게 석촌호수 런닝하실분~~ 댓글 남겨주세요',to_date('23/04/27','RR/MM/DD'),1,'가볍게 런닝하실분~',2,'평일오전','10','남자',0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (22,'뉴진스토끼1','쉿 오늘도 개발중1',to_date('23/04/21','RR/MM/DD'),6,'개발개발1',16,'평일오후','10대','여성만',23);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (23,'뉴진스토끼2','쉿 오늘도 개발중2',to_date('23/04/21','RR/MM/DD'),7,'개발개발2',16,'평일오후','10대','남성만',57);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (24,'뉴진스토끼3','쉿 오늘도 개발중3',to_date('23/04/21','RR/MM/DD'),31,'개발개발3',16,'평일오후','10대','여성만',35);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (25,'뉴진스토끼4','쉿 오늘도 개발중4',to_date('23/04/21','RR/MM/DD'),13,'개발개발4',16,'평일오후','10대','상관없음',21);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (26,'뉴진스토끼5','쉿 오늘도 개발중5',to_date('23/04/21','RR/MM/DD'),21,'개발개발5',16,'평일오후','10대','남성만',22);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (27,'뉴진스토끼6','쉿 오늘도 개발중6',to_date('23/04/21','RR/MM/DD'),11,'개발개발6',16,'평일오후','10대','여성만',40);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (28,'뉴진스토끼7','쉿 오늘도 개발중7',to_date('23/04/21','RR/MM/DD'),2,'개발개발7',16,'평일오후','10대','여성만',30);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (29,'뉴진스토끼8','쉿 오늘도 개발중8',to_date('23/04/21','RR/MM/DD'),3,'개발개발8',16,'평일오후','10대','상관없음',39);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (30,'뉴진스토끼9','쉿 오늘도 개발중9',to_date('23/04/21','RR/MM/DD'),2,'개발개발9',16,'평일오후','10대','남성만',17);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (31,'뉴진스토끼10','쉿 오늘도 개발중10',to_date('23/04/21','RR/MM/DD'),1,'개발개발10',16,'평일오후','10대','남성만',58);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (32,'뉴진스토끼11','쉿 오늘도 개발중11',to_date('23/04/21','RR/MM/DD'),1,'개발개발11',16,'평일오후','10대','남성만',63);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (33,'뉴진스토끼3','쉿 오늘도 개발중3',to_date('23/04/21','RR/MM/DD'),4,'개발개발1',16,'평일오후','10대','여성만',110);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (137,'운동girl','강남역 필라테스 학원 5:1 클래스로 같이 받을분 구합니다
댓글 많이 남겨주세용!!!',to_date('23/04/27','RR/MM/DD'),1,'필라테스 같이 받을분~',2,'평일오후','20','여자',0);
REM INSERTING into HAVIT.COMMENTS
SET DEFINE OFF;
Insert into HAVIT.COMMENTS (CIDX,NICKNAME,COMMENTS,CDATE,IDX) values ('1','kim8','첫글',to_date('23/04/21','RR/MM/DD'),1);
REM INSERTING into HAVIT.HOBBY
SET DEFINE OFF;
Insert into HAVIT.HOBBY (IDX,ID,CATEGORY) values (2,'havit',2);
Insert into HAVIT.HOBBY (IDX,ID,CATEGORY) values (3,'havit',16);
Insert into HAVIT.HOBBY (IDX,ID,CATEGORY) values (4,'havit',14);
Insert into HAVIT.HOBBY (IDX,ID,CATEGORY) values (5,'havit',9);
Insert into HAVIT.HOBBY (IDX,ID,CATEGORY) values (6,'havit',1);
Insert into HAVIT.HOBBY (IDX,ID,CATEGORY) values (8,'nara',8);
Insert into HAVIT.HOBBY (IDX,ID,CATEGORY) values (9,'nara',16);
Insert into HAVIT.HOBBY (IDX,ID,CATEGORY) values (10,'nara',14);
REM INSERTING into HAVIT.MEMBER
SET DEFINE OFF;
Insert into HAVIT.MEMBER (NICKNAME,ID,PW,GENDER,BIRTH,EMAIL,PHONE,AREA,ADDR,SIGNUPDATE) values ('join1','join1','2222','남자',to_date('00/01/01','RR/MM/DD'),'test@test.com','1012345678','서울
','주소',to_date('23/04/27','RR/MM/DD'));
Insert into HAVIT.MEMBER (NICKNAME,ID,PW,GENDER,BIRTH,EMAIL,PHONE,AREA,ADDR,SIGNUPDATE) values ('뉴진스토끼','havit','1234','여성',to_date('96/01/01','RR/MM/DD'),'test@test.com','01022222222','서울특별시 강남구역','삼동',null);
Insert into HAVIT.MEMBER (NICKNAME,ID,PW,GENDER,BIRTH,EMAIL,PHONE,AREA,ADDR,SIGNUPDATE) values ('join2','join2','2222','male',to_date('23/04/12','RR/MM/DD'),'test@test.com','11111111111','경기','도민',to_date('23/04/27','RR/MM/DD'));
Insert into HAVIT.MEMBER (NICKNAME,ID,PW,GENDER,BIRTH,EMAIL,PHONE,AREA,ADDR,SIGNUPDATE) values ('rabbit','nara','7845','여성',to_date('96/04/12','RR/MM/DD'),'rabit@naver.com','010-2212-0120','부산','부산 남구 성남동',null);
Insert into HAVIT.MEMBER (NICKNAME,ID,PW,GENDER,BIRTH,EMAIL,PHONE,AREA,ADDR,SIGNUPDATE) values ('labishi','bilsa','7452','여성',to_date('02/07/31','RR/MM/DD'),'labishi@daum.net','010-9632-8452','강원','강원도 ',null);
Insert into HAVIT.MEMBER (NICKNAME,ID,PW,GENDER,BIRTH,EMAIL,PHONE,AREA,ADDR,SIGNUPDATE) values ('john','wik','7777','남성',to_date('71/03/22','RR/MM/DD'),'john@gmail.com','010-4444-5555','서울','서울 중구 남동',null);
Insert into HAVIT.MEMBER (NICKNAME,ID,PW,GENDER,BIRTH,EMAIL,PHONE,AREA,ADDR,SIGNUPDATE) values ('kim8','kim88','8802','남성',to_date('88/02/24','RR/MM/DD'),'kim88@naver.com','010-9354-7842','경기','경기도 남구 부동',null);
Insert into HAVIT.MEMBER (NICKNAME,ID,PW,GENDER,BIRTH,EMAIL,PHONE,AREA,ADDR,SIGNUPDATE) values ('mrLee','leepr','7854','남성',to_date('56/10/12','RR/MM/DD'),'mrLee@naver.com','010-8574-1111','서울','서울 남구 방화동 ',null);
Insert into HAVIT.MEMBER (NICKNAME,ID,PW,GENDER,BIRTH,EMAIL,PHONE,AREA,ADDR,SIGNUPDATE) values ('hong','honggildong','1234','남성',to_date('94/05/06','RR/MM/DD'),'hong@gmail.com','010-9598-8545','서울','서울 영등포구 대림동',null);
Insert into HAVIT.MEMBER (NICKNAME,ID,PW,GENDER,BIRTH,EMAIL,PHONE,AREA,ADDR,SIGNUPDATE) values ('bbang','bred','5678','남성',to_date('70/08/09','RR/MM/DD'),'bbang@naver.com','010-0070-1131','경기','경기도 화성',null);
Insert into HAVIT.MEMBER (NICKNAME,ID,PW,GENDER,BIRTH,EMAIL,PHONE,AREA,ADDR,SIGNUPDATE) values ('hong2345','hongik','4589','여성',to_date('88/12/12','RR/MM/DD'),'hong2345@daum.net','010-8888-1174','인천','인천 남부',null);
Insert into HAVIT.MEMBER (NICKNAME,ID,PW,GENDER,BIRTH,EMAIL,PHONE,AREA,ADDR,SIGNUPDATE) values ('roach','witcher','1111','남성',to_date('00/11/11','RR/MM/DD'),'roach@naver.com','010-8102-7025','대전','대전 중구',null);
Insert into HAVIT.MEMBER (NICKNAME,ID,PW,GENDER,BIRTH,EMAIL,PHONE,AREA,ADDR,SIGNUPDATE) values ('toad','forgman','6666','여성',to_date('85/01/22','RR/MM/DD'),'toad@gmail.com','010-7452-1131','서울','서울 강남 역삼동',null);
Insert into HAVIT.MEMBER (NICKNAME,ID,PW,GENDER,BIRTH,EMAIL,PHONE,AREA,ADDR,SIGNUPDATE) values ('join4','join4','12344','male',to_date('22/11/23','RR/MM/DD'),'test1@test1.com','00000000000','강원','도북한',to_date('23/04/28','RR/MM/DD'));
Insert into HAVIT.MEMBER (NICKNAME,ID,PW,GENDER,BIRTH,EMAIL,PHONE,AREA,ADDR,SIGNUPDATE) values ('join3','join3','1234','male',to_date('23/04/14','RR/MM/DD'),'test@test.com','01012345678','인천','강북구',to_date('23/04/27','RR/MM/DD'));
--------------------------------------------------------
--  DDL for Index HOBBY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HAVIT"."HOBBY_PK" ON "HAVIT"."HOBBY" ("IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_BBS
--------------------------------------------------------

  CREATE UNIQUE INDEX "HAVIT"."PK_BBS" ON "HAVIT"."BBS" ("IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_MEMBER
--------------------------------------------------------

  CREATE UNIQUE INDEX "HAVIT"."PK_MEMBER" ON "HAVIT"."MEMBER" ("NICKNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_BBS
--------------------------------------------------------

  CREATE UNIQUE INDEX "HAVIT"."PK_BBS" ON "HAVIT"."BBS" ("IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index HOBBY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HAVIT"."HOBBY_PK" ON "HAVIT"."HOBBY" ("IDX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_MEMBER
--------------------------------------------------------

  CREATE UNIQUE INDEX "HAVIT"."PK_MEMBER" ON "HAVIT"."MEMBER" ("NICKNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table BBS
--------------------------------------------------------

  ALTER TABLE "HAVIT"."BBS" MODIFY ("CATEGORY" NOT NULL ENABLE);
  ALTER TABLE "HAVIT"."BBS" MODIFY ("SUBJECT" NOT NULL ENABLE);
  ALTER TABLE "HAVIT"."BBS" ADD CONSTRAINT "PK_BBS" PRIMARY KEY ("IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HAVIT"."BBS" MODIFY ("BDATE" NOT NULL ENABLE);
  ALTER TABLE "HAVIT"."BBS" MODIFY ("BCONTENT" NOT NULL ENABLE);
  ALTER TABLE "HAVIT"."BBS" MODIFY ("NICKNAME" NOT NULL ENABLE);
  ALTER TABLE "HAVIT"."BBS" MODIFY ("IDX" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "HAVIT"."COMMENTS" ADD CONSTRAINT "PK_COMMENTS" PRIMARY KEY ("CIDX", "NICKNAME", "IDX") DISABLE;
  ALTER TABLE "HAVIT"."COMMENTS" MODIFY ("CDATE" NOT NULL ENABLE);
  ALTER TABLE "HAVIT"."COMMENTS" MODIFY ("COMMENTS" NOT NULL ENABLE);
  ALTER TABLE "HAVIT"."COMMENTS" MODIFY ("NICKNAME" NOT NULL ENABLE);
  ALTER TABLE "HAVIT"."COMMENTS" MODIFY ("CIDX" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HOBBY
--------------------------------------------------------

  ALTER TABLE "HAVIT"."HOBBY" ADD CONSTRAINT "HOBBY_PK" PRIMARY KEY ("IDX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HAVIT"."HOBBY" MODIFY ("IDX" NOT NULL ENABLE);
  ALTER TABLE "HAVIT"."HOBBY" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "HAVIT"."MEMBER" MODIFY ("AREA" NOT NULL ENABLE);
  ALTER TABLE "HAVIT"."MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY ("NICKNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "HAVIT"."MEMBER" MODIFY ("PHONE" NOT NULL ENABLE);
  ALTER TABLE "HAVIT"."MEMBER" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "HAVIT"."MEMBER" MODIFY ("ADDR" NOT NULL ENABLE);
  ALTER TABLE "HAVIT"."MEMBER" MODIFY ("BIRTH" NOT NULL ENABLE);
  ALTER TABLE "HAVIT"."MEMBER" MODIFY ("GENDER" NOT NULL ENABLE);
  ALTER TABLE "HAVIT"."MEMBER" MODIFY ("PW" NOT NULL ENABLE);
  ALTER TABLE "HAVIT"."MEMBER" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "HAVIT"."MEMBER" MODIFY ("NICKNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BBS
--------------------------------------------------------

  ALTER TABLE "HAVIT"."BBS" ADD CONSTRAINT "FK_MEMBER_TO_BBS_1" FOREIGN KEY ("NICKNAME")
	  REFERENCES "HAVIT"."MEMBER" ("NICKNAME") DISABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "HAVIT"."COMMENTS" ADD CONSTRAINT "COMMENTS_FK1" FOREIGN KEY ("IDX")
	  REFERENCES "HAVIT"."BBS" ("IDX") ENABLE;
  ALTER TABLE "HAVIT"."COMMENTS" ADD CONSTRAINT "FK_MEMBER_TO_COMMENTS_1" FOREIGN KEY ("NICKNAME")
	  REFERENCES "HAVIT"."MEMBER" ("NICKNAME") DISABLE;

