--------------------------------------------------------
--  ������ ������ - ������-12��-30-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BOARD
--------------------------------------------------------

  CREATE TABLE "ADMIN"."BOARD" 
   (	"TITLE" VARCHAR2(30 BYTE), 
	"CONTENT" VARCHAR2(120 BYTE), 
	"USER_ID" VARCHAR2(30 BYTE), 
	"B_DATE" DATE DEFAULT SYSDATE, 
	"BOARD_NO" NUMBER, 
	"CATEGORY" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ADMIN"."BOARD"."TITLE" IS '����';
   COMMENT ON COLUMN "ADMIN"."BOARD"."CONTENT" IS '�Խ���';
   COMMENT ON COLUMN "ADMIN"."BOARD"."USER_ID" IS '����ID';
   COMMENT ON COLUMN "ADMIN"."BOARD"."B_DATE" IS '�ۼ��ð�';
   COMMENT ON COLUMN "ADMIN"."BOARD"."BOARD_NO" IS '�۰�����ȣ';
   COMMENT ON COLUMN "ADMIN"."BOARD"."CATEGORY" IS '����';
--------------------------------------------------------
--  DDL for Table BOX_ORDER
--------------------------------------------------------

  CREATE TABLE "ADMIN"."BOX_ORDER" 
   (	"BOX_NAME" VARCHAR2(60 BYTE), 
	"USER_ID" VARCHAR2(20 BYTE), 
	"ORDER_DATE" DATE DEFAULT SYSDATE, 
	"ORDER_NUM" NUMBER(5,0), 
	"PRICE" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ADMIN"."BOX_ORDER"."BOX_NAME" IS '���ö�����ID';
   COMMENT ON COLUMN "ADMIN"."BOX_ORDER"."USER_ID" IS '����ID';
   COMMENT ON COLUMN "ADMIN"."BOX_ORDER"."ORDER_DATE" IS '�ֹ���¥';
--------------------------------------------------------
--  DDL for Table BOX_RES
--------------------------------------------------------

  CREATE TABLE "ADMIN"."BOX_RES" 
   (	"BOX_NAME" VARCHAR2(30 BYTE), 
	"BOX_TEL" VARCHAR2(15 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BOXMENU
--------------------------------------------------------

  CREATE TABLE "ADMIN"."BOXMENU" 
   (	"BOX_NAME" VARCHAR2(60 BYTE), 
	"BOX_MENU" VARCHAR2(300 BYTE), 
	"BOX_DATE" DATE, 
	"PRICE" NUMBER(5,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ADMIN"."BOXMENU"."BOX_NAME" IS '���ö�����ID';
   COMMENT ON COLUMN "ADMIN"."BOXMENU"."BOX_MENU" IS '���ö����Ը޴�';
   COMMENT ON COLUMN "ADMIN"."BOXMENU"."BOX_DATE" IS '��¥��';
   COMMENT ON COLUMN "ADMIN"."BOXMENU"."PRICE" IS '���ö� �ݾ�
';
--------------------------------------------------------
--  DDL for Table CART
--------------------------------------------------------

  CREATE TABLE "ADMIN"."CART" 
   (	"CART_NO" NUMBER(5,0), 
	"USER_ID" VARCHAR2(20 BYTE), 
	"RES_ID" NUMBER, 
	"FOOD" VARCHAR2(50 BYTE), 
	"QTY" NUMBER, 
	"RESERVE_NO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ADMIN"."CART"."CART_NO" IS '��ٱ��Ϲ�ȣ';
   COMMENT ON COLUMN "ADMIN"."CART"."USER_ID" IS '����ID';
   COMMENT ON COLUMN "ADMIN"."CART"."RES_ID" IS '����ID';
   COMMENT ON COLUMN "ADMIN"."CART"."FOOD" IS '�޴���';
   COMMENT ON COLUMN "ADMIN"."CART"."QTY" IS '����';
   COMMENT ON COLUMN "ADMIN"."CART"."RESERVE_NO" IS '�����ȣ';
--------------------------------------------------------
--  DDL for Table MENU
--------------------------------------------------------

  CREATE TABLE "ADMIN"."MENU" 
   (	"RES_ID" NUMBER(30,0), 
	"FOOD" VARCHAR2(50 BYTE), 
	"PRICE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RESBOARD
--------------------------------------------------------

  CREATE TABLE "ADMIN"."RESBOARD" 
   (	"RES_NAME" VARCHAR2(50 BYTE), 
	"COUSINE" VARCHAR2(20 BYTE), 
	"OPEN_TIME" VARCHAR2(10 BYTE), 
	"ADD1" VARCHAR2(80 BYTE), 
	"DISTANCE" NUMBER, 
	"CLOSE_TIME" VARCHAR2(10 BYTE), 
	"USER_ID" VARCHAR2(20 BYTE), 
	"RES_BOARD_NO" NUMBER, 
	"AVAIL" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RESERVE
--------------------------------------------------------

  CREATE TABLE "ADMIN"."RESERVE" 
   (	"RESERVE_NO" NUMBER, 
	"USER_ID" VARCHAR2(20 BYTE), 
	"RESERVE_TIME" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RESTAURANTS
--------------------------------------------------------

  CREATE TABLE "ADMIN"."RESTAURANTS" 
   (	"RES_ID" NUMBER(30,0), 
	"RES_NAME" VARCHAR2(50 BYTE), 
	"COUSINE" VARCHAR2(20 BYTE), 
	"OPEN_TIME" VARCHAR2(10 BYTE), 
	"ADD1" VARCHAR2(80 BYTE), 
	"DISTANCE" NUMBER(4,0), 
	"CLOSE_TIME" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "ADMIN"."REVIEW" 
   (	"RES_ID" NUMBER, 
	"USER_ID" VARCHAR2(30 BYTE), 
	"R_CONTENT" VARCHAR2(100 CHAR), 
	"GRADE" NUMBER, 
	"RE_NO" NUMBER(4,0), 
	"RE_DATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ADMIN"."REVIEW"."RES_ID" IS '����ID';
   COMMENT ON COLUMN "ADMIN"."REVIEW"."USER_ID" IS '����ID';
   COMMENT ON COLUMN "ADMIN"."REVIEW"."R_CONTENT" IS '���䳻��';
   COMMENT ON COLUMN "ADMIN"."REVIEW"."GRADE" IS '����';
   COMMENT ON COLUMN "ADMIN"."REVIEW"."RE_NO" IS '���������ȣ';
   COMMENT ON COLUMN "ADMIN"."REVIEW"."RE_DATE" IS '�ۼ��ð�';
--------------------------------------------------------
--  DDL for Table USER_PICK
--------------------------------------------------------

  CREATE TABLE "ADMIN"."USER_PICK" 
   (	"RES_ID" NUMBER, 
	"USER_ID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "ADMIN"."USERS" 
   (	"USER_ID" VARCHAR2(20 BYTE), 
	"NICKNAME" VARCHAR2(30 BYTE), 
	"PASSWORD" VARCHAR2(30 BYTE), 
	"NAME" VARCHAR2(20 BYTE), 
	"MONEY" NUMBER, 
	"PHONE" VARCHAR2(11 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ADMIN"."USERS"."USER_ID" IS '���̵�';
   COMMENT ON COLUMN "ADMIN"."USERS"."NICKNAME" IS '�г���';
   COMMENT ON COLUMN "ADMIN"."USERS"."PASSWORD" IS '��й�ȣ';
   COMMENT ON COLUMN "ADMIN"."USERS"."NAME" IS '����';
   COMMENT ON COLUMN "ADMIN"."USERS"."MONEY" IS '������';
   COMMENT ON COLUMN "ADMIN"."USERS"."PHONE" IS '��ȭ��ȣ';
REM INSERTING into ADMIN.BOARD
SET DEFINE OFF;
Insert into ADMIN.BOARD (TITLE,CONTENT,USER_ID,B_DATE,BOARD_NO,CATEGORY) values ('���ǵ帳�ϴ�.','���װ� �ʹ����ƿ�','user2',to_date('2020/12/24','RRRR/MM/DD'),1,'���ǻ���');
Insert into ADMIN.BOARD (TITLE,CONTENT,USER_ID,B_DATE,BOARD_NO,CATEGORY) values ('�ʵ�!','�� �߰��ϱ� �ʹ� ������','admin',to_date('2020/12/24','RRRR/MM/DD'),2,'��������');
Insert into ADMIN.BOARD (TITLE,CONTENT,USER_ID,B_DATE,BOARD_NO,CATEGORY) values ('�ϳ� ����','���� �Ƕ�','user',to_date('0020/12/29','RRRR/MM/DD'),5,'���ǻ���');
Insert into ADMIN.BOARD (TITLE,CONTENT,USER_ID,B_DATE,BOARD_NO,CATEGORY) values ('�׽�Ʈ','�����Ѱ� ����','user',to_date('0020/12/29','RRRR/MM/DD'),6,'���ǻ���');
Insert into ADMIN.BOARD (TITLE,CONTENT,USER_ID,B_DATE,BOARD_NO,CATEGORY) values ('����','�����׽�Ʈ2','user3',to_date('2020/12/28','RRRR/MM/DD'),3,'���ǻ���');
Insert into ADMIN.BOARD (TITLE,CONTENT,USER_ID,B_DATE,BOARD_NO,CATEGORY) values ('�׽�Ʈ ������','���⿡ �Է��ϸ�Ǵ°�','user',to_date('0020/12/29','RRRR/MM/DD'),7,'���ǻ���');
Insert into ADMIN.BOARD (TITLE,CONTENT,USER_ID,B_DATE,BOARD_NO,CATEGORY) values ('����������','���������� �������?','jeje',to_date('0020/12/30','RRRR/MM/DD'),8,'���ǻ���');
Insert into ADMIN.BOARD (TITLE,CONTENT,USER_ID,B_DATE,BOARD_NO,CATEGORY) values ('����1','����¡','user2',to_date('2020/12/28','RRRR/MM/DD'),4,'���ǻ���');
REM INSERTING into ADMIN.BOX_ORDER
SET DEFINE OFF;
Insert into ADMIN.BOX_ORDER (BOX_NAME,USER_ID,ORDER_DATE,ORDER_NUM,PRICE) values ('�������ö�','user',to_date('2020/12/28','RRRR/MM/DD'),5,3500);
Insert into ADMIN.BOX_ORDER (BOX_NAME,USER_ID,ORDER_DATE,ORDER_NUM,PRICE) values ('�������ö�','user',to_date('2020/12/27','RRRR/MM/DD'),6,3500);
Insert into ADMIN.BOX_ORDER (BOX_NAME,USER_ID,ORDER_DATE,ORDER_NUM,PRICE) values ('�������ö�','user',to_date('2020/12/26','RRRR/MM/DD'),7,3500);
Insert into ADMIN.BOX_ORDER (BOX_NAME,USER_ID,ORDER_DATE,ORDER_NUM,PRICE) values ('�������ö�','user',to_date('2020/12/23','RRRR/MM/DD'),8,3500);
Insert into ADMIN.BOX_ORDER (BOX_NAME,USER_ID,ORDER_DATE,ORDER_NUM,PRICE) values ('�������ö�','user2',to_date('2020/12/29','RRRR/MM/DD'),2,3500);
Insert into ADMIN.BOX_ORDER (BOX_NAME,USER_ID,ORDER_DATE,ORDER_NUM,PRICE) values ('�������ö�','user',to_date('2020/12/29','RRRR/MM/DD'),3,3500);
REM INSERTING into ADMIN.BOX_RES
SET DEFINE OFF;
Insert into ADMIN.BOX_RES (BOX_NAME,BOX_TEL) values ('�������ö�','042-254-9061');
REM INSERTING into ADMIN.BOXMENU
SET DEFINE OFF;
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('�������ö�','������/�κα���/ġ�ڴܹ�����ħ/��ä����/���Ա�',to_date('2020/12/01','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('�������ö�','�����ġ����/��ũ������/�����о����/�񿣳�����/���屹',to_date('2020/12/02','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('�������ö�','�Թڽ�����ũ/�񿣳���/��������/������ġ/�̿���',to_date('2020/12/03','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('�������ö�','���/�ñ�ġ����/�Ķ�ũ��/�蹫ħ/���',to_date('2020/12/04','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('�������ö�','����������/�����й�ħ/��������/��ä�����/�κε��屹',to_date('2020/12/07','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('�������ö�','�Թڽ�����ũ/Ȳ�¹�ħ/���ֳ���/���ڹ�/�Ͼ���',to_date('2020/12/08','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('�������ö�','�����Ұ��/���ä����/�ع����ҽ�/�������/�ᳪ����',to_date('2020/12/09','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('�������ö�','������/�κα���/ġ�ڴܹ�����ħ/��ä����/���Ա�',to_date('2020/12/10','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('�������ö�','�����ġ����/��ũ������/�����о����/�񿣳�����/���屹',to_date('2020/12/11','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('�������ö�','�Թڽ�����ũ/�񿣳���/��������/������ġ/�̿���',to_date('2020/12/14','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('�������ö�','���/�ñ�ġ����/�Ķ�ũ��/�蹫ħ/���',to_date('2020/12/15','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('�������ö�','����������/�����й�ħ/��������/��ä�����/�κε��屹',to_date('2020/12/16','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('�������ö�','�Թڽ�����ũ/Ȳ�¹�ħ/���ֳ���/���ڹ�/�Ͼ���',to_date('2020/12/17','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('�������ö�','�����Ұ��/���ä����/�ع����ҽ�/�������/�ᳪ����',to_date('2020/12/18','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('�������ö�','������/�κα���/ġ�ڴܹ�����ħ/��ä����/���Ա�',to_date('2020/12/21','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('�������ö�','�����ġ����/��ũ������/�����о����/�񿣳�����/���屹',to_date('2020/12/22','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('�������ö�','�Թڽ�����ũ/�񿣳���/��������/������ġ/�̿���',to_date('2020/12/23','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('�������ö�','���/�ñ�ġ����/�Ķ�ũ��/�蹫ħ/���',to_date('2020/12/24','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('�������ö�','����������/�����й�ħ/��������/��ä�����/�κε��屹',to_date('2020/12/28','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('�������ö�','�Թڽ�����ũ/Ȳ�¹�ħ/���ֳ���/���ڹ�/�Ͼ���',to_date('2020/12/29','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('�������ö�','�����Ұ��/���ä����/�ع����ҽ�/�������/�ᳪ����',to_date('2020/12/30','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('�������ö�','�����/��ä����/�ᳪ����ħ/��������/���',to_date('2020/12/31','RRRR/MM/DD'),3500);
REM INSERTING into ADMIN.CART
SET DEFINE OFF;
Insert into ADMIN.CART (CART_NO,USER_ID,RES_ID,FOOD,QTY,RESERVE_NO) values (1,'user',1,'������ ��ù�',3,1);
Insert into ADMIN.CART (CART_NO,USER_ID,RES_ID,FOOD,QTY,RESERVE_NO) values (2,'user',1,'��ġ��ù�',1,1);
Insert into ADMIN.CART (CART_NO,USER_ID,RES_ID,FOOD,QTY,RESERVE_NO) values (3,'user',1,'��ġ�ʹ�',1,1);
Insert into ADMIN.CART (CART_NO,USER_ID,RES_ID,FOOD,QTY,RESERVE_NO) values (4,'user2',1,'Ÿ�ھ߳�',2,2);
Insert into ADMIN.CART (CART_NO,USER_ID,RES_ID,FOOD,QTY,RESERVE_NO) values (5,'user3',1,'ġŲ����ư�',1,3);
REM INSERTING into ADMIN.MENU
SET DEFINE OFF;
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (1,'������ ��ù�',13000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (1,'��ġ��ù�',15000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (1,'�ݹݻ�ù�',14500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (1,'�������ʹ�',11500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (1,'��ġ�ʹ�',13500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (1,'����ʹ�',14000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (1,'�Ұ����ֺ���',6500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (1,'������� ���ֺ���',7500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (1,'Ÿ�ھ߳�',4000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (1,'ġŲ����ư�',5000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (1,'���ȷ� ��',5500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (1,'��� ġŲ',5500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (2,'������10��',1000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (2,'������ġ���',2500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (2,'ġ�����',3500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (2,'ġ�ƽ',1500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (2,'������',2500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (2,'���Ը���',3500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (2,'��ġ����',3500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (2,'ġŲ����',3500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (3,'�ð�������',14000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (3,'�ð������屹',8000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (3,'�ð��̹�ħ',25000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (3,'�ѹ����',24000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (4,'��Ⱑ�渮���������',9500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (4,'��������ġŲ����',6100);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (4,'������������',7100);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (4,'��ũ���������',6900);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (4,'ȭ��Ʈ��������',6100);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (4,'���̹���',5800);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (5,'�ѿ�ҸӸ�����',9000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (5,'�ѿ�ҸӸ��������',9000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (5,'Ư����',12000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (5,'Ư�������',12000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (5,'��Ʃ���������ã�½Ǻ��ġ',12000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (6,'���',4900);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (6,'��������',4900);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (6,'����Ұ�����',4900);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (6,'1955����',6900);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (6,'�ƽ����̽û����̹���',5500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (6,'�������',6900);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (6,'ũ�����ǿ�����ŻġŲ����',6300);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (7,'�������',4000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (7,'������ġ������',8000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (7,'������ⵤ��',9000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (7,'����ī��',7000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (7,'�������',4000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (8,'��Ҷ�����',5000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (8,'�ٷα��(����X)',3000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (8,'��ɵ��',7000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (8,'��Ǭ�̺����',6500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (8,'�̸�',6000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (8,'���Ҽ���',5000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (9,'¥���',5000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (9,'��ȣ«��',7000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (9,'���¥��',12000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (9,'��ä��',6000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (9,'����������',15000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (9,'��ä������',6000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (9,'��ǳ��',25000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (10,'��¥��',4000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (10,'���߻Ｑ¥��',6000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (10,'���߻Ｑ«��',7000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (10,'������',12000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (10,'������',5000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (11,'�ð�������',6000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (11,'����������',8000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (11,'������Į����',8000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (11,'����������',9000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (11,'�δ�������',9000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (11,'��񶱸��α�',8000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (11,'����������',8000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (11,'�������',8000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (12,'��ū�� Į����',6500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (12,'�κεη�ġŰ(2�κ�)',12000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (12,'����¥���',4000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (12,'��¡��κεη�ġ��(2�κ�)',19000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (12,'Ȳ�µκεη�ġ��(2�κ�)',17000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (13,'��ġ�',8000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (13,'��������(2��)',16000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (13,'�������ߵ�����',40000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (13,'��ġ�(2~3�κ�)',25000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (14,'����ٵ�',9000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (14,'�ֺ��ٵ�',11000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (14,'�Ƴ����ٵ�',13000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (14,'���̺�',7000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (15,'��Į����',6000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (16,'���ܹ�',6000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (17,'Ȳ����',6000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (17,'��ġ����',7000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (17,'�ᳪ��Ȳ����(��)',30000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (18,'����',8000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (18,'�����屹',8000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (18,'����ġ��',8000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (18,'��������',9000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (18,'ȣ�ڲ�����ġ�',7000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (18,'����',10000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (18,'����',10000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (19,'�̿���Ʈ(13pcs)',15000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (19,'���̼�Ʈ(10pcs)',15000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (19,'���̼�Ʈ(10pcs)',15000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (19,'��縶��Ʈ(12pcs)',12000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (19,'�Ҷ�or������(5pcs)',5000);
REM INSERTING into ADMIN.RESBOARD
SET DEFINE OFF;
Insert into ADMIN.RESBOARD (RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME,USER_ID,RES_BOARD_NO,AVAIL) values ('��ȣ�ҹ�','�ѽ�','11:00','���� �߱� �߾ӷ� 79���� 60 1��',351,'21:30','user',1,'�̽���');
Insert into ADMIN.RESBOARD (RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME,USER_ID,RES_BOARD_NO,AVAIL) values ('dd','dd','123','asd',123,'112','user2',2,'�̽���');
REM INSERTING into ADMIN.RESERVE
SET DEFINE OFF;
Insert into ADMIN.RESERVE (RESERVE_NO,USER_ID,RESERVE_TIME) values (1,'user',to_date('2020/12/24','RRRR/MM/DD'));
Insert into ADMIN.RESERVE (RESERVE_NO,USER_ID,RESERVE_TIME) values (2,'user2',to_date('2020/12/24','RRRR/MM/DD'));
Insert into ADMIN.RESERVE (RESERVE_NO,USER_ID,RESERVE_TIME) values (3,'user3',to_date('2020/12/24','RRRR/MM/DD'));
REM INSERTING into ADMIN.RESTAURANTS
SET DEFINE OFF;
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (25,'��ȣ�ҹ�','�ѽ�','11:00','���� �߱� �߾ӷ� 79���� 60 1��',351,'21:30');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (30,'��ȣ�ҹ�','�ѽ�','11:00','���� �߱� �߾ӷ� 79���� 60 1��',351,'21:30');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (9,'��ȣ���̳�','�߽�',null,'���� �߱� �߾ӷ�79���� 31',205,null);
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (1,'���û���','�Ͻ�','11:30','���������� �߱� ��ȭ���� 7 2��',51,'22:00');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (2,'�Ű��׸ſ���� ����������','�н�','10:30','���� �߱� ��ȭ���� 4',73,'21:00');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (6,'�Ƶ����� ���� ��Ʈ��DT��','�н�ƮǪ��','08:00','���� �߱� �߾ӷ� 64',21,'24:00');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (3,'����ð���','�ѽ�',null,'���� �߱� ������ 253-27',83,null);
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (4,'������ġ','�н�ƮǪ��','10:30','���� �߱� ��ȭ���� 7 1��',13,'22:30');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (5,'��ȭ���ҸӸ����屹','�ѽ�','09:00','���� �߱� ��ȭ�� 128',825,'23:00');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (7,'������Ź','�ѽ�','11:30','���� �߱� �߾ӷ�112���� 24',293,'20:30');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (8,'�ٷα���','�н�','11:00','���� �߱� �߾ӷ� 145 ���ϻ� C�� 61ȣ',303,'22:00');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (10,'�丮��','�߽�',null,'���� �߱� ������260���� 8',278,null);
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (21,'��ȣ�ҹ�','�ѽ�','11:00','���� �߱� �߾ӷ� 79���� 60 1��',351,'21:30');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (26,'��ȣ�ҹ�','�ѽ�','11:00','���� �߱� �߾ӷ� 79���� 60 1��',351,'21:30');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (31,'��ȣ�ҹ�','�ѽ�','11:00','���� �߱� �߾ӷ� 79���� 60 1��',351,'21:30');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (11,'��ȭ�� ����������','�ѽ�','08:00','���� �߱� �߱��� 38',502,'23:00');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (12,'�����н�','�н�','10:30','���� �߱� �߱��� 27',320,'20:00');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (13,'ǳ�̽Ĵ�','�ѽ�','11:00','���� �߱� ����� 32',262,'21:00');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (14,'����','�Ͻ�','11:30','���� �߱� ��ȭ���� 34 �ѱ����� 1��',241,'20:00');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (15,'�����ҸӴϼ�Į����','�ѽ�','11:00','���� �߱� �����71���� 19 ',289,'19:30');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (16,'������ܹ�','�ѽ�',null,'���� �߱� ������ 241-1',310,null);
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (17,'�����Ĵ�','�ѽ�',null,'���� �߱� �߱��� 29-1',351,null);
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (18,'Ȳ���� ������','�ѽ�',null,'���� �߱� ������260���� 14',311,null);
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (19,'������縶','�Ͻ�','11:30','���� �߱� �߾ӷ�112���� 42',415,'21:00');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (32,'��ȣ�ҹ�','�ѽ�','11:00','���� �߱� �߾ӷ� 79���� 60 1��',351,'21:30');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (33,'��ȣ�ҹ�','�ѽ�','11:00','���� �߱� �߾ӷ� 79���� 60 1��',351,'21:30');
REM INSERTING into ADMIN.REVIEW
SET DEFINE OFF;
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (1,'user','�Ƶ� ���� �Ⱑ������',4,1,to_date('2020/12/24','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (1,'user2','���̿��� �ϰ��־��ٱ�',5,2,to_date('2020/12/24','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (2,'user','�ʹ��ʳ׿�',3,4,to_date('2020/12/24','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (1,'user3','�����׿�..',2,3,to_date('2020/12/24','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (2,'user2','�����̺�Ʈ �����մϴ�.',5,5,to_date('2020/12/24','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (3,'user3','��Ѱ͸� ���� ����������',4,6,to_date('2020/12/24','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (3,'user2','�ʹ� ��γ׿�;;',3,7,to_date('2020/12/24','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (4,'user3','������ ��',4,8,to_date('2020/12/24','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (5,'user','���� �ְ�',5,9,to_date('2020/12/24','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (6,'user','�޴��� ���Ϲٲ�׿� ���θ����ϰ� ���ƿ�',4,10,to_date('2020/12/24','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (7,'user2','�������̾�� ���Ծ���',1,11,to_date('2020/12/24','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (8,'user3','�޴��� ������ ������ ������',4,12,to_date('2020/12/24','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (9,'user','«�ͻӾƴ϶� ¥�嵵 ���־��',5,13,to_date('2020/12/24','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (10,'user','��ó���� ���Ͻ�',2,14,to_date('2020/12/24','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (4,'kkobuk','�� ������� �ٵ� ��ǳʱ� �����Ƽ� �Ѱ� ���ϴ�',4,20,to_date('2020/12/29','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (6,'kkobuk','���÷� ���� �� �ϼ��� 40% ���� ���� �޾ƿ�',5,21,to_date('2020/12/29','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (4,'user2','ù���� �ٵ� ���⸸ ���� ��ȭ?',5,23,to_date('2020/12/30','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (4,'user','������ �ٷ� �ǳ����ε� �� �Ȱ��Ե�',5,24,to_date('2020/12/30','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (12,'user','���� ���� ���� �������',5,18,to_date('2020/12/28','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (11,'jemonade','�ð� ������ 6õ�� ���� ������ ��! ��ū�ϰ� ���־��.',5,16,to_date('2020/12/28','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (8,'jemonade','�ٷα��� ������ ���־��. �ҽ��� ��û Ư���ѵ� ���� ������ �ñ��ؿ�. ���� �� �ʰ� �ε巯���� ���̽�ũ�� �����̶�� �մϴ�.',5,17,to_date('2020/12/28','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (16,'kkobuk','�ո� ���� �ѵ� ������ ������',4,19,to_date('2020/12/29','RRRR/MM/DD'));
REM INSERTING into ADMIN.USER_PICK
SET DEFINE OFF;
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (9,'user');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (1,'user');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (2,'user');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (3,'user');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (4,'user');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (8,'admin');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (6,'kkobuk');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (11,'admin');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (1,'jemonade');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (11,'jemonade');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (8,'jemonade');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (12,'user');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (20,'admin');
REM INSERTING into ADMIN.USERS
SET DEFINE OFF;
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('user','���������','1234','������',10000,'01000000000');
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('admin','������','password',null,0,null);
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('user2','����2','1234','������',0,'01012345678');
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('user3','����3','1234','������',5000,'01022222222');
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('guest','��ȸ��','guest',null,null,null);
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('jemonade','jemonade','1234',null,null,null);
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('kkobuk','�ڼ���','1234',null,null,null);
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('jeje','jeje','1004','������',5000,'01046260081');
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('issac','�̻�','1111',null,null,null);
--------------------------------------------------------
--  DDL for Index BOARD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."BOARD_PK" ON "ADMIN"."BOARD" ("BOARD_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index BOXNAME_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."BOXNAME_PK" ON "ADMIN"."BOX_RES" ("BOX_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CART_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."CART_PK" ON "ADMIN"."CART" ("CART_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index RESBOARD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."RESBOARD_PK" ON "ADMIN"."RESBOARD" ("RES_BOARD_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index RESERVE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."RESERVE_PK" ON "ADMIN"."RESERVE" ("RESERVE_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index RESTAURANTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."RESTAURANTS_PK" ON "ADMIN"."RESTAURANTS" ("RES_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index REVIEW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."REVIEW_PK" ON "ADMIN"."REVIEW" ("RE_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TABLE1_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."TABLE1_PK" ON "ADMIN"."USERS" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "ADMIN"."BOARD" ADD CONSTRAINT "BOARD_PK" PRIMARY KEY ("BOARD_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ADMIN"."BOARD" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."BOARD" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."BOARD" MODIFY ("BOARD_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOX_ORDER
--------------------------------------------------------

  ALTER TABLE "ADMIN"."BOX_ORDER" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."BOX_ORDER" MODIFY ("ORDER_NUM" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."BOX_ORDER" MODIFY ("ORDER_DATE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."BOX_ORDER" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."BOX_ORDER" MODIFY ("BOX_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOX_RES
--------------------------------------------------------

  ALTER TABLE "ADMIN"."BOX_RES" ADD CONSTRAINT "BOXNAME_PK" PRIMARY KEY ("BOX_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ADMIN"."BOX_RES" MODIFY ("BOX_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOXMENU
--------------------------------------------------------

  ALTER TABLE "ADMIN"."BOXMENU" MODIFY ("BOX_MENU" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."BOXMENU" MODIFY ("BOX_NAME" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."BOXMENU" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."BOXMENU" MODIFY ("BOX_DATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "ADMIN"."CART" ADD CONSTRAINT "CART_PK" PRIMARY KEY ("CART_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ADMIN"."CART" MODIFY ("CART_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MENU
--------------------------------------------------------

  ALTER TABLE "ADMIN"."MENU" MODIFY ("RES_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RESBOARD
--------------------------------------------------------

  ALTER TABLE "ADMIN"."RESBOARD" ADD CONSTRAINT "RESBOARD_PK" PRIMARY KEY ("RES_BOARD_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ADMIN"."RESBOARD" MODIFY ("RES_BOARD_NO" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."RESBOARD" MODIFY ("DISTANCE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."RESBOARD" MODIFY ("ADD1" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."RESBOARD" MODIFY ("RES_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RESERVE
--------------------------------------------------------

  ALTER TABLE "ADMIN"."RESERVE" MODIFY ("RESERVE_NO" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."RESERVE" ADD CONSTRAINT "RESERVE_PK" PRIMARY KEY ("RESERVE_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RESTAURANTS
--------------------------------------------------------

  ALTER TABLE "ADMIN"."RESTAURANTS" MODIFY ("DISTANCE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."RESTAURANTS" MODIFY ("ADD1" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."RESTAURANTS" MODIFY ("RES_NAME" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."RESTAURANTS" ADD CONSTRAINT "RESTAURANTS_PK" PRIMARY KEY ("RES_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ADMIN"."RESTAURANTS" MODIFY ("RES_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "ADMIN"."REVIEW" ADD CONSTRAINT "REVIEW_PK" PRIMARY KEY ("RE_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ADMIN"."REVIEW" MODIFY ("RE_NO" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."REVIEW" MODIFY ("RES_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "ADMIN"."USERS" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."USERS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."USERS" ADD CONSTRAINT "USERS_PK" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
