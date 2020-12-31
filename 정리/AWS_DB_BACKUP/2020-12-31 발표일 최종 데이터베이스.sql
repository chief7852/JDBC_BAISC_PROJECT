--------------------------------------------------------
--  파일이 생성됨 - 목요일-12월-31-2020   
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

   COMMENT ON COLUMN "ADMIN"."BOARD"."TITLE" IS '제목';
   COMMENT ON COLUMN "ADMIN"."BOARD"."CONTENT" IS '게시판';
   COMMENT ON COLUMN "ADMIN"."BOARD"."USER_ID" IS '유저ID';
   COMMENT ON COLUMN "ADMIN"."BOARD"."B_DATE" IS '작성시간';
   COMMENT ON COLUMN "ADMIN"."BOARD"."BOARD_NO" IS '글고유번호';
   COMMENT ON COLUMN "ADMIN"."BOARD"."CATEGORY" IS '주제';
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

   COMMENT ON COLUMN "ADMIN"."BOX_ORDER"."BOX_NAME" IS '도시락가게ID';
   COMMENT ON COLUMN "ADMIN"."BOX_ORDER"."USER_ID" IS '유저ID';
   COMMENT ON COLUMN "ADMIN"."BOX_ORDER"."ORDER_DATE" IS '주문날짜';
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

   COMMENT ON COLUMN "ADMIN"."BOXMENU"."BOX_NAME" IS '도시락가게ID';
   COMMENT ON COLUMN "ADMIN"."BOXMENU"."BOX_MENU" IS '도시락가게메뉴';
   COMMENT ON COLUMN "ADMIN"."BOXMENU"."BOX_DATE" IS '날짜별';
   COMMENT ON COLUMN "ADMIN"."BOXMENU"."PRICE" IS '도시락 금액
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

   COMMENT ON COLUMN "ADMIN"."CART"."CART_NO" IS '장바구니번호';
   COMMENT ON COLUMN "ADMIN"."CART"."USER_ID" IS '유저ID';
   COMMENT ON COLUMN "ADMIN"."CART"."RES_ID" IS '가게ID';
   COMMENT ON COLUMN "ADMIN"."CART"."FOOD" IS '메뉴명';
   COMMENT ON COLUMN "ADMIN"."CART"."QTY" IS '수량';
   COMMENT ON COLUMN "ADMIN"."CART"."RESERVE_NO" IS '예약번호';
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

   COMMENT ON COLUMN "ADMIN"."REVIEW"."RES_ID" IS '가게ID';
   COMMENT ON COLUMN "ADMIN"."REVIEW"."USER_ID" IS '유저ID';
   COMMENT ON COLUMN "ADMIN"."REVIEW"."R_CONTENT" IS '리뷰내용';
   COMMENT ON COLUMN "ADMIN"."REVIEW"."GRADE" IS '평점';
   COMMENT ON COLUMN "ADMIN"."REVIEW"."RE_NO" IS '리뷰고유번호';
   COMMENT ON COLUMN "ADMIN"."REVIEW"."RE_DATE" IS '작성시간';
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
	"PHONE" VARCHAR2(13 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ADMIN"."USERS"."USER_ID" IS '아이디';
   COMMENT ON COLUMN "ADMIN"."USERS"."NICKNAME" IS '닉네임';
   COMMENT ON COLUMN "ADMIN"."USERS"."PASSWORD" IS '비밀번호';
   COMMENT ON COLUMN "ADMIN"."USERS"."NAME" IS '본명';
   COMMENT ON COLUMN "ADMIN"."USERS"."MONEY" IS '적립금';
   COMMENT ON COLUMN "ADMIN"."USERS"."PHONE" IS '전화번호';
REM INSERTING into ADMIN.BOARD
SET DEFINE OFF;
Insert into ADMIN.BOARD (TITLE,CONTENT,USER_ID,B_DATE,BOARD_NO,CATEGORY) values ('건의드립니다.','버그가 너무많아요','user2',to_date('2020/12/24','RRRR/MM/DD'),1,'건의사항');
Insert into ADMIN.BOARD (TITLE,CONTENT,USER_ID,B_DATE,BOARD_NO,CATEGORY) values ('필독!','다 추가하기 너무 힘들어요','admin',to_date('2020/12/24','RRRR/MM/DD'),2,'공지사항');
Insert into ADMIN.BOARD (TITLE,CONTENT,USER_ID,B_DATE,BOARD_NO,CATEGORY) values ('하나 만들어봄','제발 되라','user',to_date('0020/12/29','RRRR/MM/DD'),5,'건의사항');
Insert into ADMIN.BOARD (TITLE,CONTENT,USER_ID,B_DATE,BOARD_NO,CATEGORY) values ('테스트','성공한것 같다','user',to_date('0020/12/29','RRRR/MM/DD'),6,'건의사항');
Insert into ADMIN.BOARD (TITLE,CONTENT,USER_ID,B_DATE,BOARD_NO,CATEGORY) values ('건의','버그테스트2','user3',to_date('2020/12/28','RRRR/MM/DD'),3,'건의사항');
Insert into ADMIN.BOARD (TITLE,CONTENT,USER_ID,B_DATE,BOARD_NO,CATEGORY) values ('테스트 마지막','여기에 입력하면되는것','user',to_date('0020/12/29','RRRR/MM/DD'),7,'건의사항');
Insert into ADMIN.BOARD (TITLE,CONTENT,USER_ID,B_DATE,BOARD_NO,CATEGORY) values ('적립금충전','적립금충전 어떻게하죠?','jeje',to_date('0020/12/30','RRRR/MM/DD'),8,'건의사항');
Insert into ADMIN.BOARD (TITLE,CONTENT,USER_ID,B_DATE,BOARD_NO,CATEGORY) values ('문의드려요','식당 많이 추가해주세요','user10',to_date('0020/12/31','RRRR/MM/DD'),9,'건의사항');
Insert into ADMIN.BOARD (TITLE,CONTENT,USER_ID,B_DATE,BOARD_NO,CATEGORY) values ('건의1','페이징','user2',to_date('2020/12/28','RRRR/MM/DD'),4,'건의사항');
REM INSERTING into ADMIN.BOX_ORDER
SET DEFINE OFF;
Insert into ADMIN.BOX_ORDER (BOX_NAME,USER_ID,ORDER_DATE,ORDER_NUM,PRICE) values ('대전도시락','user',to_date('2020/12/28','RRRR/MM/DD'),5,3500);
Insert into ADMIN.BOX_ORDER (BOX_NAME,USER_ID,ORDER_DATE,ORDER_NUM,PRICE) values ('대전도시락','user',to_date('2020/12/27','RRRR/MM/DD'),6,3500);
Insert into ADMIN.BOX_ORDER (BOX_NAME,USER_ID,ORDER_DATE,ORDER_NUM,PRICE) values ('대전도시락','user',to_date('2020/12/26','RRRR/MM/DD'),7,3500);
Insert into ADMIN.BOX_ORDER (BOX_NAME,USER_ID,ORDER_DATE,ORDER_NUM,PRICE) values ('대전도시락','user',to_date('2020/12/23','RRRR/MM/DD'),8,3500);
Insert into ADMIN.BOX_ORDER (BOX_NAME,USER_ID,ORDER_DATE,ORDER_NUM,PRICE) values ('대전도시락','user7',to_date('2020/12/31','RRRR/MM/DD'),14,3500);
Insert into ADMIN.BOX_ORDER (BOX_NAME,USER_ID,ORDER_DATE,ORDER_NUM,PRICE) values ('대전도시락','user2',to_date('2020/12/29','RRRR/MM/DD'),2,3500);
Insert into ADMIN.BOX_ORDER (BOX_NAME,USER_ID,ORDER_DATE,ORDER_NUM,PRICE) values ('대전도시락','user',to_date('2020/12/29','RRRR/MM/DD'),3,3500);
Insert into ADMIN.BOX_ORDER (BOX_NAME,USER_ID,ORDER_DATE,ORDER_NUM,PRICE) values ('대전도시락','user8',to_date('2020/12/31','RRRR/MM/DD'),15,3500);
Insert into ADMIN.BOX_ORDER (BOX_NAME,USER_ID,ORDER_DATE,ORDER_NUM,PRICE) values ('대전도시락','user10',to_date('2020/12/31','RRRR/MM/DD'),11,3500);
Insert into ADMIN.BOX_ORDER (BOX_NAME,USER_ID,ORDER_DATE,ORDER_NUM,PRICE) values ('대전도시락','jeje',to_date('2020/12/30','RRRR/MM/DD'),9,3500);
Insert into ADMIN.BOX_ORDER (BOX_NAME,USER_ID,ORDER_DATE,ORDER_NUM,PRICE) values ('대전도시락','test123',to_date('2020/12/31','RRRR/MM/DD'),10,3500);
Insert into ADMIN.BOX_ORDER (BOX_NAME,USER_ID,ORDER_DATE,ORDER_NUM,PRICE) values ('대전도시락','user5',to_date('2020/12/31','RRRR/MM/DD'),12,3500);
Insert into ADMIN.BOX_ORDER (BOX_NAME,USER_ID,ORDER_DATE,ORDER_NUM,PRICE) values ('대전도시락','user6',to_date('2020/12/31','RRRR/MM/DD'),13,3500);
Insert into ADMIN.BOX_ORDER (BOX_NAME,USER_ID,ORDER_DATE,ORDER_NUM,PRICE) values ('대전도시락','temptemp',to_date('2020/12/31','RRRR/MM/DD'),17,3500);
Insert into ADMIN.BOX_ORDER (BOX_NAME,USER_ID,ORDER_DATE,ORDER_NUM,PRICE) values ('대전도시락','user9',to_date('2020/12/31','RRRR/MM/DD'),16,3500);
REM INSERTING into ADMIN.BOX_RES
SET DEFINE OFF;
Insert into ADMIN.BOX_RES (BOX_NAME,BOX_TEL) values ('대전도시락','042-254-9061');
REM INSERTING into ADMIN.BOXMENU
SET DEFINE OFF;
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('대전도시락','탕수육/두부구이/치자단무지무침/유채나물/만둣국',to_date('2020/12/01','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('대전도시락','삼겹살김치볶음/스크램블에그/마늘쫑어묵조림/비엔나케익/된장국',to_date('2020/12/02','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('대전도시락','함박스테이크/비엔나햄/무말랭이/고추참치/미역국',to_date('2020/12/03','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('대전도시락','돈까스/시금치나물/후랑크햄/김무침/어묵국',to_date('2020/12/04','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('대전도시락','돈육장조림/마늘쫑무침/버섯볶음/야채고로케/두부된장국',to_date('2020/12/07','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('대전도시락','함박스테이크/황태무침/숙주나물/콩자반/북엇국',to_date('2020/12/08','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('대전도시락','버섯불고기/어묵야채볶음/해물땡소스/우엉조림/콩나물국',to_date('2020/12/09','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('대전도시락','탕수육/두부구이/치자단무지무침/유채나물/만둣국',to_date('2020/12/10','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('대전도시락','삼겹살김치볶음/스크램블에그/마늘쫑어묵조림/비엔나케익/된장국',to_date('2020/12/11','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('대전도시락','함박스테이크/비엔나햄/무말랭이/고추참치/미역국',to_date('2020/12/14','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('대전도시락','돈까스/시금치나물/후랑크햄/김무침/어묵국',to_date('2020/12/15','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('대전도시락','돈육장조림/마늘쫑무침/버섯볶음/야채고로케/두부된장국',to_date('2020/12/16','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('대전도시락','함박스테이크/황태무침/숙주나물/콩자반/북엇국',to_date('2020/12/17','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('대전도시락','버섯불고기/어묵야채볶음/해물땡소스/우엉조림/콩나물국',to_date('2020/12/18','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('대전도시락','탕수육/두부구이/치자단무지무침/유채나물/만둣국',to_date('2020/12/21','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('대전도시락','삼겹살김치볶음/스크램블에그/마늘쫑어묵조림/비엔나케익/된장국',to_date('2020/12/22','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('대전도시락','함박스테이크/비엔나햄/무말랭이/고추참치/미역국',to_date('2020/12/23','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('대전도시락','돈까스/시금치나물/후랑크햄/김무침/어묵국',to_date('2020/12/24','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('대전도시락','돈육장조림/마늘쫑무침/버섯볶음/야채고로케/두부된장국',to_date('2020/12/28','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('대전도시락','함박스테이크/황태무침/숙주나물/콩자반/북엇국',to_date('2020/12/29','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('대전도시락','버섯불고기/어묵야채볶음/해물땡소스/우엉조림/콩나물국',to_date('2020/12/30','RRRR/MM/DD'),3500);
Insert into ADMIN.BOXMENU (BOX_NAME,BOX_MENU,BOX_DATE,PRICE) values ('대전도시락','생선까스/명엽채조림/콩나물무침/무말랭이/어묵국',to_date('2020/12/31','RRRR/MM/DD'),3500);
REM INSERTING into ADMIN.CART
SET DEFINE OFF;
Insert into ADMIN.CART (CART_NO,USER_ID,RES_ID,FOOD,QTY,RESERVE_NO) values (1,'user',1,'생연어 사시미',3,1);
Insert into ADMIN.CART (CART_NO,USER_ID,RES_ID,FOOD,QTY,RESERVE_NO) values (2,'user',1,'참치사시미',1,1);
Insert into ADMIN.CART (CART_NO,USER_ID,RES_ID,FOOD,QTY,RESERVE_NO) values (3,'user',1,'참치초밥',1,1);
Insert into ADMIN.CART (CART_NO,USER_ID,RES_ID,FOOD,QTY,RESERVE_NO) values (4,'user2',1,'타코야끼',2,2);
Insert into ADMIN.CART (CART_NO,USER_ID,RES_ID,FOOD,QTY,RESERVE_NO) values (5,'user3',1,'치킨가라아게',1,3);
REM INSERTING into ADMIN.MENU
SET DEFINE OFF;
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (1,'생연어 사시미',13000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (1,'참치사시미',15000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (1,'반반사시미',14500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (1,'생연어초밥',11500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (1,'참치초밥',13500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (1,'모둠초밥',14000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (1,'소고기숙주볶음',6500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (1,'돼지고기 숙주볶음',7500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (1,'타코야끼',4000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (1,'치킨가라아게',5000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (1,'버팔로 윙',5500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (1,'모둠 치킨',5500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (2,'맛감자10개',1000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (2,'빨간참치김밥',2500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (2,'치즈떡볶이',3500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (2,'치즈스틱',1500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (2,'떡볶이',2500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (2,'스팸마요',3500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (2,'참치마요',3500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (2,'치킨마요',3500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (3,'올갱이정식',14000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (3,'올갱이해장국',8000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (3,'올갱이무침',25000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (3,'한방수육',24000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (4,'고기가득리얼비프버거',9500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (4,'내슈빌핫치킨버거',6100);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (4,'언빌리버블버거',7100);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (4,'인크레더블버거',6900);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (4,'화이트갈릭버거',6100);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (4,'싸이버거',5800);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (5,'한우소머리곰탕',9000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (5,'한우소머리우거지탕',9000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (5,'특곰탕',12000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (5,'특우거지탕',12000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (5,'유튜버들이즐겨찾는실비김치',12000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (6,'빅맥',4900);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (6,'슈슈버거',4900);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (6,'더블불고기버거',4900);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (6,'일구오오버거',6900);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (6,'상하이버거',5500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (6,'슈비버거',6900);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (6,'오리엔탈치킨버거',6300);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (7,'오복김밥',4000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (7,'오복김치볶음밥',8000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (7,'오복고기덮밥',9000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (7,'오복카레',7000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (7,'오복라면',4000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (8,'모둠떡볶이',5000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (8,'바로김밥(깻잎X)',3000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (8,'등심돈까스',7000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (8,'양푼이비빔밥',6500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (8,'쫄면',6000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (8,'찹쌀순대',5000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (9,'짜장면',5000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (9,'소호짬뽕',7000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (9,'쟁반짜장',12000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (9,'잡채밥',6000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (9,'레몬탕수육',15000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (9,'야채볶음밥',6000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (9,'깐풍기',25000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (10,'맛짜장',4000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (10,'고추삼선짜장',6000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (10,'고추삼선짬뽕',7000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (10,'탕수육',12000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (10,'볶음밥',5000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (24,'카파오 무 쌉',13000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (24,'옐로우커리치킨',15000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (24,'꿍팟퐁커리',21000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (24,'팟타이',10000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (24,'꾸이띠아오가이',12000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (28,'치즈소빠돈',9000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (28,'등심돈카츠',8000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (28,'치즈돈카츠',8500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (28,'매운돈카츠',8500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (28,'반반돈카츠',9000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (28,'소빠돈',8500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (28,'돈카츠카레덮밥',8000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (11,'시골육개장',6000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (11,'전통육개장',8000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (11,'육개장칼국수',8000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (11,'차돌육개장',9000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (11,'부대육개장',9000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (11,'사골떡만두국',8000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (11,'맑은육개장',8000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (11,'수제돈까스',8000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (12,'얼큰이 칼국수',6500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (12,'두부두루치키(2인분)',12000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (12,'옛날짜장밥',4000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (12,'오징어두부두루치기(2인분)',19000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (12,'황태두부두루치기(2인분)',17000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (13,'김치찌개',8000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (13,'제육볶음(2인)',16000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (13,'묵은지닭도리탕',40000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (13,'김치찌개(2~3인분)',25000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (14,'쿠로텐동',9000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (14,'애비텐동',11000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (14,'아나고텐동',13000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (14,'하이볼',7000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (15,'손칼국수',6000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (16,'돌솥밥',6000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (17,'황태탕',6000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (17,'김치전골',7000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (17,'콩나물황태찜(대)',30000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (18,'굴밥',8000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (18,'굴해장국',8000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (18,'굴김치밥',8000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (18,'굴낙지밥',9000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (18,'호박꼬지김치찌개',7000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (18,'굴전',10000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (18,'파전',10000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (19,'이에셋트(13pcs)',15000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (19,'에이셋트(10pcs)',15000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (19,'비이셋트(10pcs)',15000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (19,'쿠루마셋트(12pcs)',12000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (19,'소라or가리비(5pcs)',5000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (22,'후라이드치킨',17000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (22,'양념치킨',19000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (22,'반반',19000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (22,'닭내장찌개(대)',30000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (23,'한식뷔페',5500);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (24,'팟타이 호카이 꿍 솟',15000);
Insert into ADMIN.MENU (RES_ID,FOOD,PRICE) values (24,'꿍 끄라티엄',18000);
REM INSERTING into ADMIN.RESBOARD
SET DEFINE OFF;
Insert into ADMIN.RESBOARD (RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME,USER_ID,RES_BOARD_NO,AVAIL) values ('세호불백','한식','11:00','대전 중구 중앙로 79번길 60 1층',351,'21:30','user',1,'미승인');
Insert into ADMIN.RESBOARD (RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME,USER_ID,RES_BOARD_NO,AVAIL) values ('김식당','중식','09:00','대덕구',990,'22:00','temptemp',3,'미승인');
Insert into ADMIN.RESBOARD (RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME,USER_ID,RES_BOARD_NO,AVAIL) values ('투다리 성모점','한식','17:00','대전 중구 중교로 9 B01호',108,'03:00','issac',4,'미승인');
Insert into ADMIN.RESBOARD (RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME,USER_ID,RES_BOARD_NO,AVAIL) values ('버거킹','패스트푸드','10:00','대전 중구 계룡로 853',1030,'24:00','user2',2,'미승인');
REM INSERTING into ADMIN.RESERVE
SET DEFINE OFF;
Insert into ADMIN.RESERVE (RESERVE_NO,USER_ID,RESERVE_TIME) values (1,'user',to_date('2020/12/24','RRRR/MM/DD'));
Insert into ADMIN.RESERVE (RESERVE_NO,USER_ID,RESERVE_TIME) values (2,'user2',to_date('2020/12/24','RRRR/MM/DD'));
Insert into ADMIN.RESERVE (RESERVE_NO,USER_ID,RESERVE_TIME) values (3,'user3',to_date('2020/12/24','RRRR/MM/DD'));
REM INSERTING into ADMIN.RESTAURANTS
SET DEFINE OFF;
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (9,'소호차이나','중식',null,'대전 중구 중앙로79번길 31',205,null);
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (1,'스시생각','일식','11:30','대전광역시 중구 선화서로 7 2층',51,'22:00');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (2,'신가네매운떡볶이 대흥은행점','분식','10:30','대전 중구 선화서로 4',73,'21:00');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (6,'맥도날드대전센트럴DT점','패스트푸드','08:00','대전 중구 중앙로 64',21,'24:00');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (3,'괴산올갱이','한식',null,'대전 중구 보문로 253-27',83,null);
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (4,'맘스터치','패스트푸드','10:30','대전 중구 선화서로 7 1층',13,'22:30');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (5,'선화동소머리해장국','한식','09:00','대전 중구 선화로 128',825,'23:00');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (7,'오복식탁','한식','11:30','대전 중구 중앙로112번길 24',293,'20:30');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (8,'바로그집','분식','11:00','대전 중구 중앙로 145 지하상가 C나 61호',303,'22:00');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (10,'요리왕','중식',null,'대전 중구 보문로260번길 8',278,null);
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (21,'세호불백','한식','11:00','대전 중구 중앙로 79번길 60 1층',351,'21:30');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (27,'큰손즉석김밥','한식',null,'대전 중구 선화서로 1',101,null);
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (28,'소울카츠','일식','11:30','대전 중구 보문로 260번길 15',321,'21:00');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (11,'이화수 전통육개장','한식','08:00','대전 중구 중교로 38',502,'23:00');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (12,'복수분식','분식','10:30','대전 중구 중교로 27',320,'20:00');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (13,'풍미식당','한식','11:00','대전 중구 대흥로 32',262,'21:00');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (14,'요우란','일식','11:30','대전 중구 선화서로 34 한국빌딩 1층',241,'20:00');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (15,'종로할머니손칼국수','한식','11:00','대전 중구 대흥로71번길 19 ',289,'19:30');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (16,'장수돌솥밥','한식',null,'대전 중구 보문로 241-1',310,null);
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (17,'동원식당','한식',null,'대전 중구 중교로 29-1',351,null);
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (18,'황가네 굴밥집','한식',null,'대전 중구 보문로260번길 14',311,null);
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (19,'스시쿠루마','일식','11:30','대전 중구 중앙로112번길 42',415,'21:00');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (22,'서울치킨','치킨','17:00','대전 중구 중앙로 112번길 34',423,'24:00');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (23,'그곳에가면본점','한식',null,'대전 중구 중앙로 79번길 11',116,null);
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (24,'얌얌타이','타이','11:30','대전 중구 중앙로 112번길 42',411,'21:30');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (25,'타향골','한식','11:00','대전 중구 중교로 7-17',102,'22:00');
Insert into ADMIN.RESTAURANTS (RES_ID,RES_NAME,COUSINE,OPEN_TIME,ADD1,DISTANCE,CLOSE_TIME) values (26,'코끼리부대찌개','한식','10:00','대전 중구 대흥동 502-16',99,'22:00');
REM INSERTING into ADMIN.REVIEW
SET DEFINE OFF;
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (11,'kkobuk','이세상 가성비가 아닙니다 꼭 가십셔',5,28,to_date('2020/12/30','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (26,'user7','배고플때먹으면 맛있음',2,35,to_date('2020/12/31','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (2,'user','너무맵네요',3,4,to_date('2020/12/24','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (1,'user3','맛없네요..',2,3,to_date('2020/12/24','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (2,'user2','리뷰이벤트 감사합니다.',5,5,to_date('2020/12/24','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (3,'user3','비싼것만 빼면 마음에들어요',4,6,to_date('2020/12/24','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (3,'user2','너무 비싸네요;;',3,7,to_date('2020/12/24','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (4,'user3','가성비 갓',4,8,to_date('2020/12/24','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (5,'user','밥집 최고',5,9,to_date('2020/12/24','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (6,'user','메뉴가 매일바뀌네요 할인많이하고 좋아요',4,10,to_date('2020/12/24','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (8,'user3','메뉴는 많은데 선택은 떡볶이',4,12,to_date('2020/12/24','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (9,'user','짬뽕뿐아니라 짜장도 맛있어요',5,13,to_date('2020/12/24','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (10,'user','근처에서 제일쌈',2,14,to_date('2020/12/24','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (12,'kkobuk','매워요..죽다 살아났읍니다',5,27,to_date('2020/12/30','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (4,'kkobuk','젤 가까워요 근데 길건너기 귀찮아서 한개 뺍니다',4,20,to_date('2020/12/29','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (6,'kkobuk','어플로 쿠폰 꼭 하세요 40% 정도 할인 받아요',5,21,to_date('2020/12/29','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (28,'kkobuk','가격이 비싸지만 맛이 좋아서 생일날 먹을 예정입니다',5,29,to_date('2020/12/30','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (4,'user2','첫날에 다들 여기만 간거 실화?',5,23,to_date('2020/12/30','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (4,'user','솔직히 바로 건너편인데 잘 안가게됨',5,24,to_date('2020/12/30','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (12,'user','여기 ㄹㅇ 대전 찐맛집임',5,18,to_date('2020/12/28','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (11,'jemonade','시골 육개장 6천원 완전 가성비 갑! 얼큰하고 맛있어요.',5,16,to_date('2020/12/28','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (8,'jemonade','바로그집 떡볶이 맛있어요. 소스가 엄청 특이한데 뭐가 들어갔는지 궁금해요. 별로 안 맵고 부드러워서 아이스크림 떡볶이라고 합니다.',5,17,to_date('2020/12/28','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (12,'issac','너무매움 맛있게매움 땀남',4,30,to_date('2020/12/31','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (16,'kkobuk','손맛 좋긴 한데 가격이 빡세요',4,19,to_date('2020/12/29','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (9,'user10','짬뽕 국물이 끝내줘요 굿굿',3,33,to_date('2020/12/31','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (11,'user10','해장하고싶은날 가세요',4,34,to_date('2020/12/31','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (4,'user9','감튀는 맘스터치',5,36,to_date('2020/12/31','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (23,'kkobuk','가성비 실화? 웅장해진다',5,25,to_date('2020/12/30','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (9,'kkobuk','기본맨이 추천해줘서 가봤습니다. 괜찮습니다.',5,26,to_date('2020/12/30','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (5,'user9','해장하러가실분~~~',3,37,to_date('2020/12/31','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (6,'user10','베토디추천',5,31,to_date('2020/12/31','RRRR/MM/DD'));
Insert into ADMIN.REVIEW (RES_ID,USER_ID,R_CONTENT,GRADE,RE_NO,RE_DATE) values (6,'jeje','컬리후라이존맛탱',4,32,to_date('2020/12/31','RRRR/MM/DD'));
REM INSERTING into ADMIN.USER_PICK
SET DEFINE OFF;
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (9,'user');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (1,'user');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (2,'user');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (3,'user');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (4,'user');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (8,'admin');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (6,'kkobuk');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (12,'kkobuk');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (6,'jeje');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (11,'kkobuk');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (28,'kkobuk');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (6,'practice');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (4,'practice2');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (6,' user2');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (11,'admin');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (1,'jemonade');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (11,'jemonade');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (8,'jemonade');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (12,'user');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (20,'admin');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (12,' user2');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (23,'kkobuk');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (9,'kkobuk');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (2,'jeje');
Insert into ADMIN.USER_PICK (RES_ID,USER_ID) values (6,'user10');
REM INSERTING into ADMIN.USERS
SET DEFINE OFF;
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('user','대덕연구원','1234','김유저',12122,'01000000000');
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('admin','관리자','password',null,0,null);
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('user2','유저2','1234','최유저',0,'01012345678');
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('user3','유저3','1234','정유저',5000,'01022222222');
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('guest','비회원','guest',null,null,null);
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('ddit','시연용','practice','김연습',5000,'01099999999');
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('dfsdf','sdvsdvs','sdvsdv',null,null,null);
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('practice2','연습2','practice2','연실명',0,'01099779977');
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values (' user2','칼퇴하자','1234','김미미',0,'010-1234-1234');
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('d','sdf','f','실명실명',0,'42424');
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('삭제아디','삭제하셈','삭제','삭제명',0,'삭제명');
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('asdfasdf','sdgdg','vsdvsd','dfsdf',0,'124124');
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('jemonade','jemonade','1234','이동현',0,'01012345666');
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('kkobuk','박세현','1234',null,null,null);
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('test123','닉넴변경','test123','대덕이',1500,'01033333333');
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('user10','리뷰왕','1234','박유저',1500,'010-1234-5678');
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('user5','입짧은달님','1234','최유저',1500,'010-4545-5454');
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('user6','딸랑이거시킨','1234','이유저',1500,'010-6666-6666');
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('user7','라떼는말이야','1234','김유저',1500,'010-4444-4444');
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('user8','휘뚜루마뚜루','1234','한유저',1500,'010-7878-6543');
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('user9','아기상어','1234','지유저',1500,'010-9875-4869');
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('sdfdf','dfd','dfds',null,null,null);
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('temptemp','temptemp','temptemp','이김최',6500,'01098798798');
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('jeje','jeje','1004','윤지혜',1500,'01046260081');
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('issac','이삭','1111','정이삭',0,'01044442785');
Insert into ADMIN.USERS (USER_ID,NICKNAME,PASSWORD,NAME,MONEY,PHONE) values ('normal','정상인','normal',null,null,null);
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
