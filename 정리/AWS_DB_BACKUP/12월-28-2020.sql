--------------------------------------------------------
--  ������ ������ - ������-12��-28-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BOARD
--------------------------------------------------------

  CREATE TABLE "DDIT"."BOARD" 
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

   COMMENT ON COLUMN "DDIT"."BOARD"."TITLE" IS '����';
   COMMENT ON COLUMN "DDIT"."BOARD"."CONTENT" IS '�Խ���';
   COMMENT ON COLUMN "DDIT"."BOARD"."USER_ID" IS '����ID';
   COMMENT ON COLUMN "DDIT"."BOARD"."B_DATE" IS '�ۼ��ð�';
   COMMENT ON COLUMN "DDIT"."BOARD"."BOARD_NO" IS '�۰�����ȣ';
   COMMENT ON COLUMN "DDIT"."BOARD"."CATEGORY" IS '����';
--------------------------------------------------------
--  DDL for Table BOX_ORDER
--------------------------------------------------------

  CREATE TABLE "DDIT"."BOX_ORDER" 
   (	"BOX_NAME" VARCHAR2(60 BYTE), 
	"USER_ID" VARCHAR2(20 BYTE), 
	"ORDER_DATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "DDIT"."BOX_ORDER"."BOX_NAME" IS '���ö�����ID';
   COMMENT ON COLUMN "DDIT"."BOX_ORDER"."USER_ID" IS '����ID';
   COMMENT ON COLUMN "DDIT"."BOX_ORDER"."ORDER_DATE" IS '�ֹ���¥';
--------------------------------------------------------
--  DDL for Table BOXMENU
--------------------------------------------------------

  CREATE TABLE "DDIT"."BOXMENU" 
   (	"BOX_NAME" VARCHAR2(60 BYTE), 
	"BOX_MENU" VARCHAR2(300 BYTE), 
	"BOX_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "DDIT"."BOXMENU"."BOX_NAME" IS '���ö�����ID';
   COMMENT ON COLUMN "DDIT"."BOXMENU"."BOX_MENU" IS '���ö����Ը޴�';
   COMMENT ON COLUMN "DDIT"."BOXMENU"."BOX_DATE" IS '��¥��';
--------------------------------------------------------
--  DDL for Table BOXNAME
--------------------------------------------------------

  CREATE TABLE "DDIT"."BOXNAME" 
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
--  DDL for Table CART
--------------------------------------------------------

  CREATE TABLE "DDIT"."CART" 
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

   COMMENT ON COLUMN "DDIT"."CART"."CART_NO" IS '��ٱ��Ϲ�ȣ';
   COMMENT ON COLUMN "DDIT"."CART"."USER_ID" IS '����ID';
   COMMENT ON COLUMN "DDIT"."CART"."RES_ID" IS '����ID';
   COMMENT ON COLUMN "DDIT"."CART"."FOOD" IS '�޴���';
   COMMENT ON COLUMN "DDIT"."CART"."QTY" IS '����';
   COMMENT ON COLUMN "DDIT"."CART"."RESERVE_NO" IS '�����ȣ';
--------------------------------------------------------
--  DDL for Table MENU
--------------------------------------------------------

  CREATE TABLE "DDIT"."MENU" 
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
--  DDL for Table RESERVE
--------------------------------------------------------

  CREATE TABLE "DDIT"."RESERVE" 
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

  CREATE TABLE "DDIT"."RESTAURANTS" 
   (	"RES_ID" NUMBER(30,0), 
	"RES_NAME" VARCHAR2(50 BYTE), 
	"COUSINE" VARCHAR2(20 BYTE), 
	"OPEN_TIME" VARCHAR2(10 BYTE), 
	"ADD1" VARCHAR2(60 BYTE), 
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

  CREATE TABLE "DDIT"."REVIEW" 
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

   COMMENT ON COLUMN "DDIT"."REVIEW"."RES_ID" IS '����ID';
   COMMENT ON COLUMN "DDIT"."REVIEW"."USER_ID" IS '����ID';
   COMMENT ON COLUMN "DDIT"."REVIEW"."R_CONTENT" IS '���䳻��';
   COMMENT ON COLUMN "DDIT"."REVIEW"."GRADE" IS '����';
   COMMENT ON COLUMN "DDIT"."REVIEW"."RE_NO" IS '���������ȣ';
   COMMENT ON COLUMN "DDIT"."REVIEW"."RE_DATE" IS '�ۼ��ð�';
--------------------------------------------------------
--  DDL for Table USER_PICK
--------------------------------------------------------

  CREATE TABLE "DDIT"."USER_PICK" 
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

  CREATE TABLE "DDIT"."USERS" 
   (	"USER_ID" VARCHAR2(20 BYTE), 
	"NICKNAME" VARCHAR2(30 BYTE), 
	"PASSWORD" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "DDIT"."USERS"."USER_ID" IS '���̵�';
   COMMENT ON COLUMN "DDIT"."USERS"."NICKNAME" IS '�г���';
   COMMENT ON COLUMN "DDIT"."USERS"."PASSWORD" IS '��й�ȣ';
REM INSERTING into DDIT.BOARD
SET DEFINE OFF;
Insert into DDIT.BOARD (TITLE,CONTENT,USER_ID,B_DATE,BOARD_NO,CATEGORY) values ('�Ĵ繮��','�п� ��ó �Ĵ��߰��� ���ּ���','user',to_date('2020/12/24','RRRR/MM/DD'),1,'�Ĵ繮��');
Insert into DDIT.BOARD (TITLE,CONTENT,USER_ID,B_DATE,BOARD_NO,CATEGORY) values ('���ǵ帳�ϴ�.','���װ� �ʹ����ƿ�','user2',to_date('2020/12/24','RRRR/MM/DD'),2,'���ǻ���');
Insert into DDIT.BOARD (TITLE,CONTENT,USER_ID,B_DATE,BOARD_NO,CATEGORY) values ('�ʵ�!','�� �߰��ϱ� �ʹ� ������','DDIT',to_date('2020/12/24','RRRR/MM/DD'),3,'��������');
Insert into DDIT.BOARD (TITLE,CONTENT,USER_ID,B_DATE,BOARD_NO,CATEGORY) values ('����','�����׽�Ʈ2','user3',to_date('2020/12/28','RRRR/MM/DD'),4,'���ǻ���');
REM INSERTING into DDIT.BOX_ORDER
SET DEFINE OFF;
Insert into DDIT.BOX_ORDER (BOX_NAME,USER_ID,ORDER_DATE) values ('�������ö�','user',to_date('2020/12/24','RRRR/MM/DD'));
Insert into DDIT.BOX_ORDER (BOX_NAME,USER_ID,ORDER_DATE) values ('�������ö�','user2',to_date('2020/12/24','RRRR/MM/DD'));
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
REM INSERTING into DDIT.BOXNAME
SET DEFINE OFF;
Insert into DDIT.BOXNAME (BOX_NAME,BOX_TEL) values ('�������ö�','042-254-9061');
REM INSERTING into DDIT.CART
SET DEFINE OFF;
Insert into DDIT.CART (CART_NO,USER_ID,RES_ID,FOOD,QTY,RESERVE_NO) values (1,'user',1,'������ ��ù�',3,1);
Insert into DDIT.CART (CART_NO,USER_ID,RES_ID,FOOD,QTY,RESERVE_NO) values (2,'user',1,'��ġ��ù�',1,1);
Insert into DDIT.CART (CART_NO,USER_ID,RES_ID,FOOD,QTY,RESERVE_NO) values (3,'user',1,'��ġ�ʹ�',1,1);
Insert into DDIT.CART (CART_NO,USER_ID,RES_ID,FOOD,QTY,RESERVE_NO) values (4,'user2',1,'Ÿ�ھ߳�',2,2);
Insert into DDIT.CART (CART_NO,USER_ID,RES_ID,FOOD,QTY,RESERVE_NO) values (5,'user3',1,'ġŲ����ư�',1,3);
REM INSERTING into DDIT.MENU
SET DEFINE OFF;
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (1,'������ ��ù�',13000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (1,'��ġ��ù�',15000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (1,'�ݹݻ�ù�',14500);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (1,'�������ʹ�',11500);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (1,'��ġ�ʹ�',13500);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (1,'����ʹ�',14000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (1,'�Ұ����ֺ���',6500);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (1,'������� ���ֺ���',7500);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (1,'Ÿ�ھ߳�',4000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (1,'ġŲ����ư�',5000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (1,'���ȷ� ��',5500);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (1,'��� ġŲ',5500);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (2,'������10��',1000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (2,'������ġ���',2500);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (2,'ġ�����',3500);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (2,'ġ�ƽ',1500);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (2,'������',2500);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (2,'���Ը���',3500);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (2,'��ġ����',3500);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (2,'ġŲ����',3500);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (3,'�ð�������',14000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (3,'�ð������屹',8000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (3,'�ð��̹�ħ',25000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (3,'�ѹ����',24000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (4,'��Ⱑ�渮���������',9500);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (4,'��������ġŲ����',6100);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (4,'������������',7100);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (4,'��ũ���������',6900);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (4,'ȭ��Ʈ��������',6100);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (4,'���̹���',5800);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (5,'�ѿ�ҸӸ�����',9000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (5,'�ѿ�ҸӸ��������',9000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (5,'Ư����',12000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (5,'Ư�������',12000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (5,'��Ʃ���������ã�½Ǻ��ġ',12000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (6,'���',4900);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (6,'��������',4900);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (6,'����Ұ�����',4900);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (6,'1955����',6900);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (6,'�ƽ����̽û����̹���',5500);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (6,'�������',6900);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (6,'ũ�����ǿ�����ŻġŲ����',6300);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (7,'�������',4000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (7,'������ġ������',8000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (7,'������ⵤ��',9000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (7,'����ī��',7000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (7,'�������',4000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (8,'��Ҷ�����',5000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (8,'�ٷα��(����X)',3000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (8,'��ɵ��',7000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (8,'��Ǭ�̺����',6500);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (8,'�̸�',6000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (8,'���Ҽ���',5000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (9,'¥���',5000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (9,'��ȣ«��',7000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (9,'���¥��',12000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (9,'��ä��',6000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (9,'����������',15000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (9,'��ä������',6000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (9,'��ǳ��',25000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (10,'��¥��',4000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (10,'���߻Ｑ¥��',6000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (10,'���߻Ｑ«��',7000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (10,'������',12000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (10,'������',5000);
REM INSERTING into DDIT.RESERVE
SET DEFINE OFF;
Insert into DDIT.RESERVE (RESERVE_NO,USER_ID,RESERVE_TIME) values (1,'user',to_date('2020/12/24','RRRR/MM/DD'));
Insert into DDIT.RESERVE (RESERVE_NO,USER_ID,RESERVE_TIME) values (2,'user2',to_date('2020/12/24','RRRR/MM/DD'));
Insert into DDIT.RESERVE (RESERVE_NO,USER_ID,RESERVE_TIME) values (3,'user3',to_date('2020/12/24','RRRR/MM/DD'));
REM INSERTING into DDIT.RESTAURANTS
SET DEFINE OFF;
Insert into DDIT.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (9,'��ȣ���̳�','�߽�',null,'���� �߱� �߾ӷ�79���� 31',205,null);
Insert into DDIT.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (1,'���û���','�Ͻ�','11:30','���������� �߱� ��ȭ���� 7 2��',51,'22:00');
Insert into DDIT.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (2,'�Ű��׸ſ���� ����������','�н�','10:30','���� �߱� ��ȭ���� 4',73,'21:00');
Insert into DDIT.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (6,'�Ƶ����� ���� ��Ʈ��DT��','�н�ƮǪ��','08:00','���� �߱� �߾ӷ� 64',21,'24:00');
Insert into DDIT.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (3,'����ð���','�ѽ�',null,'���� �߱� ������ 253-27',83,null);
Insert into DDIT.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (4,'������ġ','�н�ƮǪ��','10:30','���� �߱� ��ȭ���� 7 1��',13,'22:30');
Insert into DDIT.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (5,'��ȭ���ҸӸ����屹','�ѽ�','09:00','���� �߱� ��ȭ�� 128',825,'23:00');
Insert into DDIT.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (7,'������Ź','�ѽ�','11:30','���� �߱� �߾ӷ�112���� 24',293,'20:30');
Insert into DDIT.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (8,'�ٷα���','�н�','11:00','���� �߱� �߾ӷ� 145 ���ϻ� C�� 61ȣ',303,'22:00');
Insert into DDIT.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (10,'�丮��','�߽�',null,'���� �߱� ������260���� 8',278,null);
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
REM INSERTING into DDIT.USER_PICK
SET DEFINE OFF;
Insert into DDIT.USER_PICK (RES_ID,USER_ID) values (1,'user');
Insert into DDIT.USER_PICK (RES_ID,USER_ID) values (2,'user');
Insert into DDIT.USER_PICK (RES_ID,USER_ID) values (3,'user');
Insert into DDIT.USER_PICK (RES_ID,USER_ID) values (4,'user');
REM INSERTING into DDIT.USERS
SET DEFINE OFF;
Insert into DDIT.USERS (USER_ID,NICKNAME,PASSWORD) values ('user','����','1234');
Insert into DDIT.USERS (USER_ID,NICKNAME,PASSWORD) values ('DDIT','������','password');
Insert into DDIT.USERS (USER_ID,NICKNAME,PASSWORD) values ('user2','����2','1234');
Insert into DDIT.USERS (USER_ID,NICKNAME,PASSWORD) values ('user3','����3','1234');
Insert into DDIT.USERS (USER_ID,NICKNAME,PASSWORD) values ('guest','��ȸ��','guest');
--------------------------------------------------------
--  DDL for Index BOARD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DDIT"."BOARD_PK" ON "DDIT"."BOARD" ("BOARD_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index BOXNAME_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DDIT"."BOXNAME_PK" ON "DDIT"."BOXNAME" ("BOX_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CART_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DDIT"."CART_PK" ON "DDIT"."CART" ("CART_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index RESERVE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DDIT"."RESERVE_PK" ON "DDIT"."RESERVE" ("RESERVE_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index RESTAURANTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DDIT"."RESTAURANTS_PK" ON "DDIT"."RESTAURANTS" ("RES_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index REVIEW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DDIT"."REVIEW_PK" ON "DDIT"."REVIEW" ("RE_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TABLE1_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DDIT"."TABLE1_PK" ON "DDIT"."USERS" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "DDIT"."BOARD" ADD CONSTRAINT "BOARD_PK" PRIMARY KEY ("BOARD_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "DDIT"."BOARD" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "DDIT"."BOARD" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "DDIT"."BOARD" MODIFY ("BOARD_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOX_ORDER
--------------------------------------------------------

  ALTER TABLE "DDIT"."BOX_ORDER" MODIFY ("BOX_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOXMENU
--------------------------------------------------------

  ALTER TABLE "DDIT"."BOXMENU" MODIFY ("BOX_DATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOXNAME
--------------------------------------------------------

  ALTER TABLE "DDIT"."BOXNAME" ADD CONSTRAINT "BOXNAME_PK" PRIMARY KEY ("BOX_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "DDIT"."BOXNAME" MODIFY ("BOX_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "DDIT"."CART" ADD CONSTRAINT "CART_PK" PRIMARY KEY ("CART_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "DDIT"."CART" MODIFY ("CART_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MENU
--------------------------------------------------------

  ALTER TABLE "DDIT"."MENU" MODIFY ("RES_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RESERVE
--------------------------------------------------------

  ALTER TABLE "DDIT"."RESERVE" MODIFY ("RESERVE_NO" NOT NULL ENABLE);
  ALTER TABLE "DDIT"."RESERVE" ADD CONSTRAINT "RESERVE_PK" PRIMARY KEY ("RESERVE_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RESTAURANTS
--------------------------------------------------------

  ALTER TABLE "DDIT"."RESTAURANTS" MODIFY ("DISTANCE" NOT NULL ENABLE);
  ALTER TABLE "DDIT"."RESTAURANTS" MODIFY ("ADD1" NOT NULL ENABLE);
  ALTER TABLE "DDIT"."RESTAURANTS" MODIFY ("RES_NAME" NOT NULL ENABLE);
  ALTER TABLE "DDIT"."RESTAURANTS" ADD CONSTRAINT "RESTAURANTS_PK" PRIMARY KEY ("RES_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "DDIT"."RESTAURANTS" MODIFY ("RES_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "DDIT"."REVIEW" ADD CONSTRAINT "REVIEW_PK" PRIMARY KEY ("RE_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "DDIT"."REVIEW" MODIFY ("RE_NO" NOT NULL ENABLE);
  ALTER TABLE "DDIT"."REVIEW" MODIFY ("RES_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "DDIT"."USERS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "DDIT"."USERS" ADD CONSTRAINT "USERS_PK" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
