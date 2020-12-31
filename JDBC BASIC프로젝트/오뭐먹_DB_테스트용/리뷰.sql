--------------------------------------------------------
--  ������ ������ - �����-12��-24-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "DDIT"."REVIEW" 
   (	"RES_ID" NUMBER, 
	"USER_ID" VARCHAR2(30 BYTE), 
	"R_CONTENT" VARCHAR2(100 CHAR), 
	"GRADE" NUMBER, 
	"RE_NO" NUMBER(4,0), 
	"RE_DATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "DDIT"."REVIEW"."RES_ID" IS '����ID';
   COMMENT ON COLUMN "DDIT"."REVIEW"."USER_ID" IS '����ID';
   COMMENT ON COLUMN "DDIT"."REVIEW"."R_CONTENT" IS '���䳻��';
   COMMENT ON COLUMN "DDIT"."REVIEW"."GRADE" IS '����';
   COMMENT ON COLUMN "DDIT"."REVIEW"."RE_NO" IS '���������ȣ';
   COMMENT ON COLUMN "DDIT"."REVIEW"."RE_DATE" IS '�ۼ��ð�';
REM INSERTING into DDIT.REVIEW
SET DEFINE OFF;
Insert into DDIT.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (1,'user','�Ƶ� ���� �Ⱑ������',4,1,to_date('2020/12/24','RRRR/MM/DD'));
Insert into DDIT.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (1,'user2','���̿��� �ϰ��־��ٱ�',5,2,to_date('2020/12/24','RRRR/MM/DD'));
Insert into DDIT.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (2,'user','�ʹ��ʳ׿�',3,4,to_date('2020/12/24','RRRR/MM/DD'));
Insert into DDIT.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (1,'user3','�����׿�..',2,3,to_date('2020/12/24','RRRR/MM/DD'));
Insert into DDIT.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (2,'user2','�����̺�Ʈ �����մϴ�.',5,5,to_date('2020/12/24','RRRR/MM/DD'));
Insert into DDIT.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (3,'user3','��Ѱ͸� ���� ����������',4,6,to_date('2020/12/24','RRRR/MM/DD'));
Insert into DDIT.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (3,'user2','�ʹ� ��γ׿�;;',3,7,to_date('2020/12/24','RRRR/MM/DD'));
Insert into DDIT.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (4,'user3','������ ��',4,8,to_date('2020/12/24','RRRR/MM/DD'));
Insert into DDIT.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (5,'user','���� �ְ�',5,9,to_date('2020/12/24','RRRR/MM/DD'));
Insert into DDIT.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (6,'user','�޴��� ���Ϲٲ�׿� ���θ����ϰ� ���ƿ�',4,10,to_date('2020/12/24','RRRR/MM/DD'));
Insert into DDIT.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (7,'user2','�������̾�� ���Ծ���',1,11,to_date('2020/12/24','RRRR/MM/DD'));
Insert into DDIT.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (8,'user3','�޴��� ������ ������ ������',4,12,to_date('2020/12/24','RRRR/MM/DD'));
Insert into DDIT.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (9,'user','«�ͻӾƴ϶� ¥�嵵 ���־��',5,13,to_date('2020/12/24','RRRR/MM/DD'));
Insert into DDIT.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (10,'user','��ó���� ���Ͻ�',2,14,to_date('2020/12/24','RRRR/MM/DD'));
--------------------------------------------------------
--  DDL for Index REVIEW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DDIT"."REVIEW_PK" ON "DDIT"."REVIEW" ("RE_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "DDIT"."REVIEW" ADD CONSTRAINT "REVIEW_PK" PRIMARY KEY ("RE_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "DDIT"."REVIEW" MODIFY ("RE_NO" NOT NULL ENABLE);
  ALTER TABLE "DDIT"."REVIEW" MODIFY ("RES_ID" NOT NULL ENABLE);
