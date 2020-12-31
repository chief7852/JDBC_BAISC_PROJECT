--------------------------------------------------------
--  ������ ������ - �����-12��-24-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BOX_ORDER
--------------------------------------------------------

  CREATE TABLE "DDIT"."BOX_ORDER" 
   (	"BOX_NAME" VARCHAR2(60 BYTE), 
	"USER_ID" VARCHAR2(20 BYTE), 
	"ORDER_DATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "DDIT"."BOX_ORDER"."BOX_NAME" IS '���ö�����ID';
   COMMENT ON COLUMN "DDIT"."BOX_ORDER"."USER_ID" IS '����ID';
   COMMENT ON COLUMN "DDIT"."BOX_ORDER"."ORDER_DATE" IS '�ֹ���¥';
REM INSERTING into DDIT.BOX_ORDER
SET DEFINE OFF;
Insert into DDIT.BOX_ORDER (BOX_NAME,USER_ID,ORDER_DATE) values ('�������ö�','user',to_date('2020/12/24','RRRR/MM/DD'));
Insert into DDIT.BOX_ORDER (BOX_NAME,USER_ID,ORDER_DATE) values ('�������ö�','user2',to_date('2020/12/24','RRRR/MM/DD'));
--------------------------------------------------------
--  Constraints for Table BOX_ORDER
--------------------------------------------------------

  ALTER TABLE "DDIT"."BOX_ORDER" MODIFY ("BOX_NAME" NOT NULL ENABLE);
