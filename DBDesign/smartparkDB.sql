--------------------------------------------------------
--  �ļ��Ѵ��� - ������-����-23-2012   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BERTH
--------------------------------------------------------

  CREATE TABLE "WEBADMIN"."BERTH" 
   (	"PL_ID" NUMBER(*,0), 
	"BERTH_ID" NUMBER(*,0), 
	"RES_FLAG" NUMBER(*,0), 
	"PARK_FLAG" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "WEBADMIN"."BERTH"."PL_ID" IS 'The identifier of this parking lot where this berth locates.';
   COMMENT ON COLUMN "WEBADMIN"."BERTH"."BERTH_ID" IS 'The identifier of this berth.';
   COMMENT ON COLUMN "WEBADMIN"."BERTH"."RES_FLAG" IS 'Is this berth being reservated?
0/1';
   COMMENT ON COLUMN "WEBADMIN"."BERTH"."PARK_FLAG" IS 'Is any car parking on this berth now?
0/1';
--------------------------------------------------------
--  DDL for Table PARK_LOG
--------------------------------------------------------

  CREATE TABLE "WEBADMIN"."PARK_LOG" 
   (	"PLOG_ID" NUMBER(*,0), 
	"BERTH_ID" NUMBER(*,0), 
	"CAR_NO" VARCHAR2(20 BYTE), 
	"START_TIME" DATE, 
	"END_TIME" DATE, 
	"COST" FLOAT(126), 
	"PARKFLAG" NUMBER(*,0), 
	"RESFLAG" NUMBER(*,0), 
	"RES_STATE" NUMBER(*,0), 
	"RES_DATE" DATE, 
	"VIOLATION" NUMBER(*,0), 
	"DESC_VIOLATION" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "WEBADMIN"."PARK_LOG"."PLOG_ID" IS 'The identifier of this parking log.';
   COMMENT ON COLUMN "WEBADMIN"."PARK_LOG"."BERTH_ID" IS 'The identifier of the berth.';
   COMMENT ON COLUMN "WEBADMIN"."PARK_LOG"."CAR_NO" IS 'The license number of the car.';
   COMMENT ON COLUMN "WEBADMIN"."PARK_LOG"."START_TIME" IS 'The time when the car parked into the berth.';
   COMMENT ON COLUMN "WEBADMIN"."PARK_LOG"."END_TIME" IS 'The time when the car leaved the berth.';
   COMMENT ON COLUMN "WEBADMIN"."PARK_LOG"."COST" IS 'The money the car costs for parking.';
   COMMENT ON COLUMN "WEBADMIN"."PARK_LOG"."PARKFLAG" IS 'occupied by reservation/occupied without reservation/parking/finish
0/1/2/3';
   COMMENT ON COLUMN "WEBADMIN"."PARK_LOG"."RESFLAG" IS 'without reservation/reservation
0/1';
   COMMENT ON COLUMN "WEBADMIN"."PARK_LOG"."RES_STATE" IS 'Being resevated/reservation end(start parking)/reservation expired
0/1/2';
   COMMENT ON COLUMN "WEBADMIN"."PARK_LOG"."RES_DATE" IS 'The time when this berth is reservated for this car.';
   COMMENT ON COLUMN "WEBADMIN"."PARK_LOG"."VIOLATION" IS 'normal/violation
0/1';
   COMMENT ON COLUMN "WEBADMIN"."PARK_LOG"."DESC_VIOLATION" IS 'The description of th violation.';
--------------------------------------------------------
--  DDL for Table PARKINGLOT
--------------------------------------------------------

  CREATE TABLE "WEBADMIN"."PARKINGLOT" 
   (	"PL_ID" NUMBER(*,0), 
	"PL_ADDR_CITY" VARCHAR2(255 BYTE), 
	"PL_ADDR_STREET" VARCHAR2(255 BYTE), 
	"PL_ADDR_AREA" VARCHAR2(255 BYTE), 
	"PL_ADDR_NO" NUMBER(*,0), 
	"PL_BERTHNUM" NUMBER(*,0), 
	"PL_BERTHRATE" FLOAT(126)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "WEBADMIN"."PARKINGLOT"."PL_ID" IS 'The identifier of this parking lot.';
   COMMENT ON COLUMN "WEBADMIN"."PARKINGLOT"."PL_ADDR_CITY" IS 'The city where this parking lots locates.';
   COMMENT ON COLUMN "WEBADMIN"."PARKINGLOT"."PL_ADDR_STREET" IS 'The street of the city where this parking lots locates.';
   COMMENT ON COLUMN "WEBADMIN"."PARKINGLOT"."PL_ADDR_AREA" IS 'The area of the city where this parking lot locates.';
   COMMENT ON COLUMN "WEBADMIN"."PARKINGLOT"."PL_ADDR_NO" IS 'The street number of this parking lot.';
   COMMENT ON COLUMN "WEBADMIN"."PARKINGLOT"."PL_BERTHNUM" IS 'The number of berthes in this parking lot.';
   COMMENT ON COLUMN "WEBADMIN"."PARKINGLOT"."PL_BERTHRATE" IS 'The rate of parking costs in this parking lot.';
--------------------------------------------------------
--  DDL for Table REGUSERS
--------------------------------------------------------

  CREATE TABLE "WEBADMIN"."REGUSERS" 
   (	"USER_ID" NUMBER(*,0), 
	"USER_PHONE" VARCHAR2(20 BYTE), 
	"USER_PWD" VARCHAR2(20 BYTE), 
	"USER_PERMISSION" NUMBER(*,0), 
	"USER_ACCOUNT" FLOAT(126)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "WEBADMIN"."REGUSERS"."USER_ID" IS 'The identifier of the registered user.';
   COMMENT ON COLUMN "WEBADMIN"."REGUSERS"."USER_PHONE" IS 'The phone number of the registered user.';
   COMMENT ON COLUMN "WEBADMIN"."REGUSERS"."USER_PWD" IS 'The password of the registered user.';
   COMMENT ON COLUMN "WEBADMIN"."REGUSERS"."USER_PERMISSION" IS 'User permission:
normal/vip/free
0/1/2';
   COMMENT ON COLUMN "WEBADMIN"."REGUSERS"."USER_ACCOUNT" IS 'no money/money
0/money';
   COMMENT ON TABLE "WEBADMIN"."REGUSERS"  IS 'Registed users'' base information.';
--------------------------------------------------------
--  DDL for Table USER_CAR
--------------------------------------------------------

  CREATE TABLE "WEBADMIN"."USER_CAR" 
   (	"USER_ID" NUMBER(*,0), 
	"CAR_NO" VARCHAR2(20 BYTE), 
	"CAR_COLOR" VARCHAR2(20 BYTE), 
	"CAR_MODEL" VARCHAR2(255 BYTE), 
	"CAR_VIOLATION" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "WEBADMIN"."USER_CAR"."USER_ID" IS 'The identifier of the registered user who own this car.';
   COMMENT ON COLUMN "WEBADMIN"."USER_CAR"."CAR_NO" IS 'The license number of this car.';
   COMMENT ON COLUMN "WEBADMIN"."USER_CAR"."CAR_COLOR" IS 'The color of this car.';
   COMMENT ON COLUMN "WEBADMIN"."USER_CAR"."CAR_MODEL" IS 'The model of this car.';
   COMMENT ON COLUMN "WEBADMIN"."USER_CAR"."CAR_VIOLATION" IS 'no violation/violation
0/1';
--------------------------------------------------------
--  DDL for Index BERTH_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "WEBADMIN"."BERTH_PK" ON "WEBADMIN"."BERTH" ("BERTH_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PARK_LOG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "WEBADMIN"."PARK_LOG_PK" ON "WEBADMIN"."PARK_LOG" ("PLOG_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PARKINGLOT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "WEBADMIN"."PARKINGLOT_PK" ON "WEBADMIN"."PARKINGLOT" ("PL_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index REGUSERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "WEBADMIN"."REGUSERS_PK" ON "WEBADMIN"."REGUSERS" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index USER_CAR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "WEBADMIN"."USER_CAR_PK" ON "WEBADMIN"."USER_CAR" ("CAR_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table BERTH
--------------------------------------------------------

  ALTER TABLE "WEBADMIN"."BERTH" ADD CONSTRAINT "BERTH_PK" PRIMARY KEY ("BERTH_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "WEBADMIN"."BERTH" MODIFY ("PARK_FLAG" NOT NULL ENABLE);
  ALTER TABLE "WEBADMIN"."BERTH" MODIFY ("RES_FLAG" NOT NULL ENABLE);
  ALTER TABLE "WEBADMIN"."BERTH" MODIFY ("BERTH_ID" NOT NULL ENABLE);
  ALTER TABLE "WEBADMIN"."BERTH" MODIFY ("PL_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PARK_LOG
--------------------------------------------------------

  ALTER TABLE "WEBADMIN"."PARK_LOG" MODIFY ("VIOLATION" NOT NULL ENABLE);
  ALTER TABLE "WEBADMIN"."PARK_LOG" MODIFY ("RESFLAG" NOT NULL ENABLE);
  ALTER TABLE "WEBADMIN"."PARK_LOG" MODIFY ("PARKFLAG" NOT NULL ENABLE);
  ALTER TABLE "WEBADMIN"."PARK_LOG" ADD CONSTRAINT "PARK_LOG_PK" PRIMARY KEY ("PLOG_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "WEBADMIN"."PARK_LOG" MODIFY ("COST" NOT NULL ENABLE);
  ALTER TABLE "WEBADMIN"."PARK_LOG" MODIFY ("END_TIME" NOT NULL ENABLE);
  ALTER TABLE "WEBADMIN"."PARK_LOG" MODIFY ("START_TIME" NOT NULL ENABLE);
  ALTER TABLE "WEBADMIN"."PARK_LOG" MODIFY ("CAR_NO" NOT NULL ENABLE);
  ALTER TABLE "WEBADMIN"."PARK_LOG" MODIFY ("BERTH_ID" NOT NULL ENABLE);
  ALTER TABLE "WEBADMIN"."PARK_LOG" MODIFY ("PLOG_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PARKINGLOT
--------------------------------------------------------

  ALTER TABLE "WEBADMIN"."PARKINGLOT" ADD CONSTRAINT "PARKINGLOT_PK" PRIMARY KEY ("PL_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "WEBADMIN"."PARKINGLOT" MODIFY ("PL_BERTHRATE" NOT NULL ENABLE);
  ALTER TABLE "WEBADMIN"."PARKINGLOT" MODIFY ("PL_BERTHNUM" NOT NULL ENABLE);
  ALTER TABLE "WEBADMIN"."PARKINGLOT" MODIFY ("PL_ADDR_NO" NOT NULL ENABLE);
  ALTER TABLE "WEBADMIN"."PARKINGLOT" MODIFY ("PL_ADDR_STREET" NOT NULL ENABLE);
  ALTER TABLE "WEBADMIN"."PARKINGLOT" MODIFY ("PL_ADDR_CITY" NOT NULL ENABLE);
  ALTER TABLE "WEBADMIN"."PARKINGLOT" MODIFY ("PL_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REGUSERS
--------------------------------------------------------

  ALTER TABLE "WEBADMIN"."REGUSERS" MODIFY ("USER_ACCOUNT" NOT NULL ENABLE);
  ALTER TABLE "WEBADMIN"."REGUSERS" MODIFY ("USER_PERMISSION" NOT NULL ENABLE);
  ALTER TABLE "WEBADMIN"."REGUSERS" ADD CONSTRAINT "REGUSERS_PK" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "WEBADMIN"."REGUSERS" MODIFY ("USER_PWD" NOT NULL ENABLE);
  ALTER TABLE "WEBADMIN"."REGUSERS" MODIFY ("USER_PHONE" NOT NULL ENABLE);
  ALTER TABLE "WEBADMIN"."REGUSERS" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USER_CAR
--------------------------------------------------------

  ALTER TABLE "WEBADMIN"."USER_CAR" ADD CONSTRAINT "USER_CAR_PK" PRIMARY KEY ("CAR_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "WEBADMIN"."USER_CAR" MODIFY ("CAR_NO" NOT NULL ENABLE);
  ALTER TABLE "WEBADMIN"."USER_CAR" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BERTH
--------------------------------------------------------

  ALTER TABLE "WEBADMIN"."BERTH" ADD CONSTRAINT "PL_ID" FOREIGN KEY ("PL_ID")
	  REFERENCES "WEBADMIN"."PARKINGLOT" ("PL_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PARK_LOG
--------------------------------------------------------

  ALTER TABLE "WEBADMIN"."PARK_LOG" ADD CONSTRAINT "BERTH_ID" FOREIGN KEY ("BERTH_ID")
	  REFERENCES "WEBADMIN"."BERTH" ("BERTH_ID") ENABLE;
  ALTER TABLE "WEBADMIN"."PARK_LOG" ADD CONSTRAINT "CAR_NO" FOREIGN KEY ("CAR_NO")
	  REFERENCES "WEBADMIN"."USER_CAR" ("CAR_NO") ENABLE;


--------------------------------------------------------
--  Ref Constraints for Table USER_CAR
--------------------------------------------------------

  ALTER TABLE "WEBADMIN"."USER_CAR" ADD CONSTRAINT "USER_ID" FOREIGN KEY ("USER_ID")
	  REFERENCES "WEBADMIN"."REGUSERS" ("USER_ID") ENABLE;