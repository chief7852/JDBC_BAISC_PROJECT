--------------------------------------------------------
--  ������ ������ - �����-12��-24-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BOXMENU
--------------------------------------------------------

  CREATE TABLE "DDIT"."BOXMENU" 
   (	"BOX_NAME" VARCHAR2(60 BYTE), 
	"BOX_MENU" VARCHAR2(300 BYTE), 
	"BOX_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "DDIT"."BOXMENU"."BOX_NAME" IS '���ö�����ID';
   COMMENT ON COLUMN "DDIT"."BOXMENU"."BOX_MENU" IS '���ö����Ը޴�';
   COMMENT ON COLUMN "DDIT"."BOXMENU"."BOX_DATE" IS '��¥��';
REM INSERTING into DDIT.BOXMENU
SET DEFINE OFF;
Insert into DDIT.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE) values ('�������ö�','������/�κα���/ġ�ڴܹ�����ħ/��ä����/���Ա�',to_date('2020/12/01','RRRR/MM/DD'));
Insert into DDIT.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE) values ('�������ö�','�����ġ����/��ũ������/�����о����/�񿣳�����/���屹',to_date('2020/12/02','RRRR/MM/DD'));
Insert into DDIT.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE) values ('�������ö�','�Թڽ�����ũ/�񿣳���/��������/������ġ/�̿���',to_date('2020/12/03','RRRR/MM/DD'));
Insert into DDIT.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE) values ('�������ö�','���/�ñ�ġ����/�Ķ�ũ��/�蹫ħ/���',to_date('2020/12/04','RRRR/MM/DD'));
Insert into DDIT.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE) values ('�������ö�','����������/�����й�ħ/��������/��ä�����/�κε��屹',to_date('2020/12/07','RRRR/MM/DD'));
Insert into DDIT.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE) values ('�������ö�','�Թڽ�����ũ/Ȳ�¹�ħ/���ֳ���/���ڹ�/�Ͼ���',to_date('2020/12/08','RRRR/MM/DD'));
Insert into DDIT.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE) values ('�������ö�','�����Ұ��/���ä����/�ع����ҽ�/�������/�ᳪ����',to_date('2020/12/09','RRRR/MM/DD'));
Insert into DDIT.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE) values ('�������ö�','������/�κα���/ġ�ڴܹ�����ħ/��ä����/���Ա�',to_date('2020/12/10','RRRR/MM/DD'));
Insert into DDIT.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE) values ('�������ö�','�����ġ����/��ũ������/�����о����/�񿣳�����/���屹',to_date('2020/12/11','RRRR/MM/DD'));
Insert into DDIT.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE) values ('�������ö�','�Թڽ�����ũ/�񿣳���/��������/������ġ/�̿���',to_date('2020/12/14','RRRR/MM/DD'));
Insert into DDIT.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE) values ('�������ö�','���/�ñ�ġ����/�Ķ�ũ��/�蹫ħ/���',to_date('2020/12/15','RRRR/MM/DD'));
Insert into DDIT.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE) values ('�������ö�','����������/�����й�ħ/��������/��ä�����/�κε��屹',to_date('2020/12/16','RRRR/MM/DD'));
Insert into DDIT.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE) values ('�������ö�','�Թڽ�����ũ/Ȳ�¹�ħ/���ֳ���/���ڹ�/�Ͼ���',to_date('2020/12/17','RRRR/MM/DD'));
Insert into DDIT.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE) values ('�������ö�','�����Ұ��/���ä����/�ع����ҽ�/�������/�ᳪ����',to_date('2020/12/18','RRRR/MM/DD'));
Insert into DDIT.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE) values ('�������ö�','������/�κα���/ġ�ڴܹ�����ħ/��ä����/���Ա�',to_date('2020/12/21','RRRR/MM/DD'));
Insert into DDIT.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE) values ('�������ö�','�����ġ����/��ũ������/�����о����/�񿣳�����/���屹',to_date('2020/12/22','RRRR/MM/DD'));
Insert into DDIT.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE) values ('�������ö�','�Թڽ�����ũ/�񿣳���/��������/������ġ/�̿���',to_date('2020/12/23','RRRR/MM/DD'));
Insert into DDIT.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE) values ('�������ö�','���/�ñ�ġ����/�Ķ�ũ��/�蹫ħ/���',to_date('2020/12/24','RRRR/MM/DD'));
Insert into DDIT.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE) values ('�������ö�','����������/�����й�ħ/��������/��ä�����/�κε��屹',to_date('2020/12/28','RRRR/MM/DD'));
Insert into DDIT.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE) values ('�������ö�','�Թڽ�����ũ/Ȳ�¹�ħ/���ֳ���/���ڹ�/�Ͼ���',to_date('2020/12/29','RRRR/MM/DD'));
Insert into DDIT.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE) values ('�������ö�','�����Ұ��/���ä����/�ع����ҽ�/�������/�ᳪ����',to_date('2020/12/30','RRRR/MM/DD'));
Insert into DDIT.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE) values ('�������ö�','�����/��ä����/�ᳪ����ħ/��������/���',to_date('2020/12/31','RRRR/MM/DD'));
--------------------------------------------------------
--  Constraints for Table BOXMENU
--------------------------------------------------------

  ALTER TABLE "DDIT"."BOXMENU" MODIFY ("BOX_DATE" NOT NULL ENABLE);
