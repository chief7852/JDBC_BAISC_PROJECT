--------------------------------------------------------
--  ������ ������ - �����-12��-26-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MENU
--------------------------------------------------------

  CREATE TABLE "DDIT"."MENU" 
   (	"RES_ID" NUMBER(30,0), 
	"FOOD" VARCHAR2(50 BYTE), 
	"PRICE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
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
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (11,'����������',8000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (11,'����������',9000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (11,'������Į����',8000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (11,'����������',8000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (11,'��񶱸��α�',8000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (11,'��������������',32000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (11,'��Ҽ�������',32000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (11,'���Ǻ���',10000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (11,'�޹�����',5000);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (11,'����������',3500);
Insert into DDIT.MENU (RES_ID,FOOD,PRICE) values (11,'������',10000);
--------------------------------------------------------
--  Constraints for Table MENU
--------------------------------------------------------

  ALTER TABLE "DDIT"."MENU" MODIFY ("RES_ID" NOT NULL ENABLE);
