--------------------------------------------------------
--  ������ ������ - �ݿ���-4��-28-2023   
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
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (138,'����Ƽ�꽺��Ŀ','�ο��� 3~4�� �����и� �޽��ϴ�~',to_date('23/04/27','RR/MM/DD'),1,'���ͽ��͵� ��������',4,'���Ͽ���','20','����',0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (1,'�������䳢','�� ���õ� ������',to_date('23/04/20','RR/MM/DD'),null,'���߰���',16,null,null,null,60);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (139,'sad','sadsadsadsadsad',to_date('23/04/27','RR/MM/DD'),1,'232323223',2,'���Ͽ���','10','����',0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (145,'�������䳢','�𸮾��Ʈ��Ÿ',to_date('23/04/28','RR/MM/DD'),1,'��Ÿ5',16,null,null,null,0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (146,'�������䳢','��Ÿ����� ����սô�',to_date('23/04/28','RR/MM/DD'),1,'��Ÿ7',16,null,null,null,0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (147,'�������䳢','��Ÿ����� ����սô�',to_date('23/04/28','RR/MM/DD'),1,'��Ÿ7',16,null,null,null,0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (149,'�������䳢','sad',to_date('23/04/28','RR/MM/DD'),1,'sadad',16,'���Ͽ���','20','����',0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (143,'asd','sdasadd',to_date('23/04/28','RR/MM/DD'),1,'test',2,'���Ͽ���','10','����',0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (148,'�������䳢','����������������������������',to_date('23/04/28','RR/MM/DD'),1,'��������������',16,null,null,null,0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (5,'kim8','�ƶ�����',to_date('23/04/21','RR/MM/DD'),100,'�Խñ�1',7,'���� ����','10��','�������',1);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (3,'kim8','�ƶ�����',to_date('23/04/21','RR/MM/DD'),1,'�Խñ�2',8,'���� ����','20��','�������',30);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (4,'kim8','�ƶ�����',to_date('23/04/21','RR/MM/DD'),100,'�Խñ�3',9,'���� ����','30��','�������',20);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (10,'rabbit','�������� ��ȸ���� �⸣�� ���ؼ� ������ ��å�� �Բ��Ͻ� ���� ã�ƿ�~ �ð��� ���� ���Ŀ� �ϰ�, ���� ���� �������� ������ �������� ������ �ݷ����� �˼������� ���� �������ּ��� �Ф�',to_date('23/04/25','RR/MM/DD'),0,'���� �������� ���ݻ�å �Բ��ϽǺ�',14,'���� ����','�������','������',null);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (6,'rabbit','���ֵ��� 4/15�� ��� 4��5�Ϸ� ������ ���Ǻ��� ã���ϴ�. ������ �����ϸ� ��������� �Բ� ķ���忡�� �Ҹ��ϸ鼭 ��ƿ�~',to_date('23/04/21','RR/MM/DD'),3,'4/15 ���ֵ� �ݷ��ߵ��� ���డ�Ǻ�',16,'�������','�������','������',2);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (9,'rabbit','��û ��ȭ���Ϳ��� �ָ� ������ ����Ǵ� �������� ������ ���� �����Ǻ��� ã���ϴ�~ ���� ó���ϴ°Ŷ� �Ƿ¿� ������� �����ϰ� ���� �ٴϽǺ��� ã�ƿ�~',to_date('23/04/25','RR/MM/DD'),20,'�ָ� ���� �������� �����',1,'�ָ� ����','�������','������',null);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (7,'rabbit','5��10�� �������� ���ؼ� ���� ������ ���� ����� ã���ϴ�. �����Ǵ� ��Ʃ�꿡�� ã�Ƽ� ���� ��Ḧ ������ �ͼ� �����Ϸ��ϱ���. ���� ����� ���Ͽ찡 ������ �е鿡 ���� ���� ��Ź�帳�ϴ�.',to_date('23/04/25','RR/MM/DD'),0,'5/10 ������ ���� ����� ����',8,'�������','�������','������',null);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (8,'rabbit','���� �� ��ȥ�� �ϰ� �Ǿ��µ�, ���õ� ������ �����е鲲 ������ �ް��� �մϴ�. �����ֽ� ��ȥ�ں� 3���� ã�� �ֱ���. �������� ���� ����Ļ�� ���� �����ص帮�����ϴ� ���� ������ ���� ��Ź�帳�ϴ�.',to_date('23/04/25','RR/MM/DD'),300,'5/20 ��ȥ���� ���� ���� ����',9,'���� ����','�������','������',null);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (140,'asd','2',to_date('23/04/27','RR/MM/DD'),1,'asd',2,'���Ͽ���','10','����',0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (141,'ddss','sdsd',to_date('23/04/27','RR/MM/DD'),1,'sds',1,'���Ͽ���','10','����',0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (142,'asd','sadsada',to_date('23/04/27','RR/MM/DD'),1,'sad',2,'���Ͽ���','10','����',0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (115,'���','���� ���Ͽ��Ŀ� �Ѱ��ٽǺ� 
�ο��� 5��
õõ�� �۲��ϱ� �δ���� ��� �����ּ���',to_date('23/04/25','RR/MM/DD'),1,'���� ���Ͽ��� �Ѱ��ٽǺ�~',2,'���Ͽ���','20','����',null);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (127,'��','���մϴ�',to_date('23/04/26','RR/MM/DD'),1,'�ָ��� �ｺ�ϽǺ�',2,'���Ͽ���','10','����',0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (128,'��սô�','������ �غ��ƿ�',to_date('23/04/26','RR/MM/DD'),1,'�ָ��� �Ѱ��ٽǺ�',2,'�ָ�����','10','����',0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (129,'�ｺ�սô�','�����ð� ����� ���ÿ� �����Ҳ���',to_date('23/04/26','RR/MM/DD'),2,'�ｺ�սô��ｺ',2,'���Ͽ���','20','����',0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (132,'��ߵ�','������ �ݽô�',to_date('23/04/26','RR/MM/DD'),1,'���� ��õ �ٽǺ�~~',2,'�ָ�����','20','����',0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (134,'��â�λ�','�ｺ�忡�� ��ü ������ �ϽǺ� ��� �����ּ���',to_date('23/04/26','RR/MM/DD'),1,'��ü �����ϽǺ� �����մϴ�',2,'�ָ�����','30','����',0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (135,'�ｺ������','�����ϰ� ��Һ� ����ּ���',to_date('23/04/26','RR/MM/DD'),1,'10����� �ǰ��� ������',2,'���Ͽ���','10','����',0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (136,'only �','���� ��ǿ��� ������ ����ȣ�� �����ϽǺ�~~ ��� �����ּ���',to_date('23/04/27','RR/MM/DD'),1,'������ �����ϽǺ�~',2,'���Ͽ���','10','����',0);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (22,'�������䳢1','�� ���õ� ������1',to_date('23/04/21','RR/MM/DD'),6,'���߰���1',16,'���Ͽ���','10��','������',23);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (23,'�������䳢2','�� ���õ� ������2',to_date('23/04/21','RR/MM/DD'),7,'���߰���2',16,'���Ͽ���','10��','������',57);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (24,'�������䳢3','�� ���õ� ������3',to_date('23/04/21','RR/MM/DD'),31,'���߰���3',16,'���Ͽ���','10��','������',35);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (25,'�������䳢4','�� ���õ� ������4',to_date('23/04/21','RR/MM/DD'),13,'���߰���4',16,'���Ͽ���','10��','�������',21);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (26,'�������䳢5','�� ���õ� ������5',to_date('23/04/21','RR/MM/DD'),21,'���߰���5',16,'���Ͽ���','10��','������',22);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (27,'�������䳢6','�� ���õ� ������6',to_date('23/04/21','RR/MM/DD'),11,'���߰���6',16,'���Ͽ���','10��','������',40);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (28,'�������䳢7','�� ���õ� ������7',to_date('23/04/21','RR/MM/DD'),2,'���߰���7',16,'���Ͽ���','10��','������',30);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (29,'�������䳢8','�� ���õ� ������8',to_date('23/04/21','RR/MM/DD'),3,'���߰���8',16,'���Ͽ���','10��','�������',39);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (30,'�������䳢9','�� ���õ� ������9',to_date('23/04/21','RR/MM/DD'),2,'���߰���9',16,'���Ͽ���','10��','������',17);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (31,'�������䳢10','�� ���õ� ������10',to_date('23/04/21','RR/MM/DD'),1,'���߰���10',16,'���Ͽ���','10��','������',58);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (32,'�������䳢11','�� ���õ� ������11',to_date('23/04/21','RR/MM/DD'),1,'���߰���11',16,'���Ͽ���','10��','������',63);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (33,'�������䳢3','�� ���õ� ������3',to_date('23/04/21','RR/MM/DD'),4,'���߰���1',16,'���Ͽ���','10��','������',110);
Insert into HAVIT.BBS (IDX,NICKNAME,BCONTENT,BDATE,HIT,SUBJECT,CATEGORY,OPTDAY,OPTAGE,OPTGEN,VIEWS) values (137,'�girl','������ �ʶ��׽� �п� 5:1 Ŭ������ ���� ������ ���մϴ�
��� ���� �����ּ���!!!',to_date('23/04/27','RR/MM/DD'),1,'�ʶ��׽� ���� ������~',2,'���Ͽ���','20','����',0);
REM INSERTING into HAVIT.COMMENTS
SET DEFINE OFF;
Insert into HAVIT.COMMENTS (CIDX,NICKNAME,COMMENTS,CDATE,IDX) values ('1','kim8','ù��',to_date('23/04/21','RR/MM/DD'),1);
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
Insert into HAVIT.MEMBER (NICKNAME,ID,PW,GENDER,BIRTH,EMAIL,PHONE,AREA,ADDR,SIGNUPDATE) values ('join1','join1','2222','����',to_date('00/01/01','RR/MM/DD'),'test@test.com','1012345678','����
','�ּ�',to_date('23/04/27','RR/MM/DD'));
Insert into HAVIT.MEMBER (NICKNAME,ID,PW,GENDER,BIRTH,EMAIL,PHONE,AREA,ADDR,SIGNUPDATE) values ('�������䳢','havit','1234','����',to_date('96/01/01','RR/MM/DD'),'test@test.com','01022222222','����Ư���� ��������','�ﵿ',null);
Insert into HAVIT.MEMBER (NICKNAME,ID,PW,GENDER,BIRTH,EMAIL,PHONE,AREA,ADDR,SIGNUPDATE) values ('join2','join2','2222','male',to_date('23/04/12','RR/MM/DD'),'test@test.com','11111111111','���','����',to_date('23/04/27','RR/MM/DD'));
Insert into HAVIT.MEMBER (NICKNAME,ID,PW,GENDER,BIRTH,EMAIL,PHONE,AREA,ADDR,SIGNUPDATE) values ('rabbit','nara','7845','����',to_date('96/04/12','RR/MM/DD'),'rabit@naver.com','010-2212-0120','�λ�','�λ� ���� ������',null);
Insert into HAVIT.MEMBER (NICKNAME,ID,PW,GENDER,BIRTH,EMAIL,PHONE,AREA,ADDR,SIGNUPDATE) values ('labishi','bilsa','7452','����',to_date('02/07/31','RR/MM/DD'),'labishi@daum.net','010-9632-8452','����','������ ',null);
Insert into HAVIT.MEMBER (NICKNAME,ID,PW,GENDER,BIRTH,EMAIL,PHONE,AREA,ADDR,SIGNUPDATE) values ('john','wik','7777','����',to_date('71/03/22','RR/MM/DD'),'john@gmail.com','010-4444-5555','����','���� �߱� ����',null);
Insert into HAVIT.MEMBER (NICKNAME,ID,PW,GENDER,BIRTH,EMAIL,PHONE,AREA,ADDR,SIGNUPDATE) values ('kim8','kim88','8802','����',to_date('88/02/24','RR/MM/DD'),'kim88@naver.com','010-9354-7842','���','��⵵ ���� �ε�',null);
Insert into HAVIT.MEMBER (NICKNAME,ID,PW,GENDER,BIRTH,EMAIL,PHONE,AREA,ADDR,SIGNUPDATE) values ('mrLee','leepr','7854','����',to_date('56/10/12','RR/MM/DD'),'mrLee@naver.com','010-8574-1111','����','���� ���� ��ȭ�� ',null);
Insert into HAVIT.MEMBER (NICKNAME,ID,PW,GENDER,BIRTH,EMAIL,PHONE,AREA,ADDR,SIGNUPDATE) values ('hong','honggildong','1234','����',to_date('94/05/06','RR/MM/DD'),'hong@gmail.com','010-9598-8545','����','���� �������� �븲��',null);
Insert into HAVIT.MEMBER (NICKNAME,ID,PW,GENDER,BIRTH,EMAIL,PHONE,AREA,ADDR,SIGNUPDATE) values ('bbang','bred','5678','����',to_date('70/08/09','RR/MM/DD'),'bbang@naver.com','010-0070-1131','���','��⵵ ȭ��',null);
Insert into HAVIT.MEMBER (NICKNAME,ID,PW,GENDER,BIRTH,EMAIL,PHONE,AREA,ADDR,SIGNUPDATE) values ('hong2345','hongik','4589','����',to_date('88/12/12','RR/MM/DD'),'hong2345@daum.net','010-8888-1174','��õ','��õ ����',null);
Insert into HAVIT.MEMBER (NICKNAME,ID,PW,GENDER,BIRTH,EMAIL,PHONE,AREA,ADDR,SIGNUPDATE) values ('roach','witcher','1111','����',to_date('00/11/11','RR/MM/DD'),'roach@naver.com','010-8102-7025','����','���� �߱�',null);
Insert into HAVIT.MEMBER (NICKNAME,ID,PW,GENDER,BIRTH,EMAIL,PHONE,AREA,ADDR,SIGNUPDATE) values ('toad','forgman','6666','����',to_date('85/01/22','RR/MM/DD'),'toad@gmail.com','010-7452-1131','����','���� ���� ���ﵿ',null);
Insert into HAVIT.MEMBER (NICKNAME,ID,PW,GENDER,BIRTH,EMAIL,PHONE,AREA,ADDR,SIGNUPDATE) values ('join4','join4','12344','male',to_date('22/11/23','RR/MM/DD'),'test1@test1.com','00000000000','����','������',to_date('23/04/28','RR/MM/DD'));
Insert into HAVIT.MEMBER (NICKNAME,ID,PW,GENDER,BIRTH,EMAIL,PHONE,AREA,ADDR,SIGNUPDATE) values ('join3','join3','1234','male',to_date('23/04/14','RR/MM/DD'),'test@test.com','01012345678','��õ','���ϱ�',to_date('23/04/27','RR/MM/DD'));
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

