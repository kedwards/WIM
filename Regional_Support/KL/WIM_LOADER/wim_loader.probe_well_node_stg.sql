
  CREATE TABLE "WIM_LOADER"."PROBE_WELL_NODE_STG" 
   (	"UWI" VARCHAR2(20 BYTE), 
	"SOURCE" VARCHAR2(20 BYTE), 
	"NODE_ID" VARCHAR2(20 BYTE), 
	"NODE_OBS_NO" NUMBER, 
	"ACQUISITION_ID" VARCHAR2(20 BYTE), 
	"ACTIVE_IND" VARCHAR2(1 BYTE), 
	"COUNTRY" VARCHAR2(20 BYTE), 
	"COUNTY" VARCHAR2(18 BYTE), 
	"EASTING" NUMBER(15,7), 
	"EASTING_CUOM" VARCHAR2(2 BYTE), 
	"EASTING_OUOM" VARCHAR2(20 BYTE), 
	"EFFECTIVE_DATE" DATE, 
	"ELEV" NUMBER(10,5), 
	"ELEV_CUOM" VARCHAR2(2 BYTE), 
	"ELEV_OUOM" VARCHAR2(20 BYTE), 
	"EW_DIRECTION" VARCHAR2(20 BYTE), 
	"EXPIRY_DATE" DATE, 
	"GEOG_COORD_SYSTEM_ID" VARCHAR2(4 BYTE), 
	"LATITUDE" NUMBER(12,7), 
	"LEGAL_SURVEY_TYPE" VARCHAR2(20 BYTE), 
	"LOCATION_QUALIFIER" VARCHAR2(20 BYTE), 
	"LOCATION_QUALITY" VARCHAR2(20 BYTE), 
	"LONGITUDE" NUMBER(12,7), 
	"MAP_COORD_SYSTEM_ID" VARCHAR2(20 BYTE), 
	"MD" NUMBER(10,5), 
	"MD_CUOM" VARCHAR2(2 BYTE), 
	"MD_OUOM" VARCHAR2(20 BYTE), 
	"MONUMENT_ID" VARCHAR2(20 BYTE), 
	"MONUMENT_SF_TYPE" VARCHAR2(30 BYTE), 
	"NODE_POSITION" VARCHAR2(1 BYTE), 
	"NORTHING" NUMBER(15,7), 
	"NORTHING_CUOM" VARCHAR2(2 BYTE), 
	"NORTHING_OUOM" VARCHAR2(20 BYTE), 
	"NORTH_TYPE" VARCHAR2(20 BYTE), 
	"NS_DIRECTION" VARCHAR2(20 BYTE), 
	"POLAR_AZIMUTH" NUMBER(10,6), 
	"POLAR_OFFSET" NUMBER(8,2), 
	"POLAR_OFFSET_CUOM" VARCHAR2(2 BYTE), 
	"POLAR_OFFSET_OUOM" VARCHAR2(20 BYTE), 
	"PPDM_GUID" VARCHAR2(38 BYTE), 
	"PREFERRED_IND" VARCHAR2(1 BYTE), 
	"PROVINCE_STATE" VARCHAR2(20 BYTE), 
	"REMARK" VARCHAR2(2000 BYTE), 
	"REPORTED_TVD" NUMBER(10,5), 
	"REPORTED_TVD_CUOM" VARCHAR2(2 BYTE), 
	"REPORTED_TVD_OUOM" VARCHAR2(20 BYTE), 
	"VERSION_TYPE" VARCHAR2(20 BYTE), 
	"X_OFFSET" NUMBER(15,2), 
	"X_OFFSET_CUOM" VARCHAR2(2 BYTE), 
	"X_OFFSET_OUOM" VARCHAR2(20 BYTE), 
	"Y_OFFSET" NUMBER(15,2), 
	"Y_OFFSET_CUOM" VARCHAR2(2 BYTE), 
	"Y_OFFSET_OUOM" VARCHAR2(20 BYTE), 
	"IPL_XACTION_CODE" VARCHAR2(1 BYTE), 
	"ROW_CHANGED_BY" VARCHAR2(30 BYTE), 
	"ROW_CHANGED_DATE" DATE, 
	"ROW_CREATED_BY" VARCHAR2(30 BYTE), 
	"ROW_CREATED_DATE" DATE, 
	"IPL_UWI" VARCHAR2(20 BYTE), 
	"ROW_QUALITY" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "APP_DATA" ;
