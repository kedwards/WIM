DROP MATERIALIZED VIEW WELL_VERSIONPRBSTG_MV;
CREATE MATERIALIZED VIEW WELL_VERSIONPRBSTG_MV (UWI,SOURCE,ABANDONMENT_DATE,ACTIVE_IND,ASSIGNED_FIELD,BASE_NODE_ID,BOTTOM_HOLE_LATITUDE,BOTTOM_HOLE_LONGITUDE,CASING_FLANGE_ELEV,CASING_FLANGE_ELEV_OUOM,COMPLETION_DATE,CONFIDENTIAL_DATE,CONFIDENTIAL_DEPTH,CONFIDENTIAL_DEPTH_OUOM,CONFIDENTIAL_TYPE,CONFID_STRAT_NAME_SET_ID,CONFID_STRAT_UNIT_ID,COUNTRY,COUNTY,CURRENT_CLASS,CURRENT_STATUS,CURRENT_STATUS_DATE,DEEPEST_DEPTH,DEEPEST_DEPTH_OUOM,DEPTH_DATUM,DEPTH_DATUM_ELEV,DEPTH_DATUM_ELEV_OUOM,DERRICK_FLOOR_ELEV,DERRICK_FLOOR_ELEV_OUOM,DIFFERENCE_LAT_MSL,DISCOVERY_IND,DISTRICT,DRILL_TD,DRILL_TD_OUOM,EFFECTIVE_DATE,ELEV_REF_DATUM,EXPIRY_DATE,FAULTED_IND,FINAL_DRILL_DATE,FINAL_TD,FINAL_TD_OUOM,GEOGRAPHIC_REGION,GEOLOGIC_PROVINCE,GROUND_ELEV,GROUND_ELEV_OUOM,GROUND_ELEV_TYPE,INITIAL_CLASS,KB_ELEV,KB_ELEV_OUOM,LEASE_NAME,LEASE_NUM,LEGAL_SURVEY_TYPE,LOCATION_TYPE,LOG_TD,LOG_TD_OUOM,MAX_TVD,MAX_TVD_OUOM,NET_PAY,NET_PAY_OUOM,OLDEST_STRAT_AGE,OLDEST_STRAT_NAME_SET_AGE,OLDEST_STRAT_NAME_SET_ID,OLDEST_STRAT_UNIT_ID,OPERATOR,PARENT_RELATIONSHIP_TYPE,PARENT_UWI,PLATFORM_ID,PLATFORM_SF_TYPE,PLOT_NAME,PLOT_SYMBOL,PLUGBACK_DEPTH,PLUGBACK_DEPTH_OUOM,PPDM_GUID,PROFILE_TYPE,PROVINCE_STATE,REGULATORY_AGENCY,REMARK,RIG_ON_SITE_DATE,RIG_RELEASE_DATE,ROTARY_TABLE_ELEV,SOURCE_DOCUMENT,SPUD_DATE,STATUS_TYPE,SUBSEA_ELEV_REF_TYPE,SURFACE_LATITUDE,SURFACE_LONGITUDE,SURFACE_NODE_ID,TAX_CREDIT_CODE,TD_STRAT_AGE,TD_STRAT_NAME_SET_AGE,TD_STRAT_NAME_SET_ID,TD_STRAT_UNIT_ID,WATER_ACOUSTIC_VEL,WATER_ACOUSTIC_VEL_OUOM,WATER_DEPTH,WATER_DEPTH_DATUM,WATER_DEPTH_OUOM,WELL_EVENT_NUM,WELL_GOVERNMENT_ID,WELL_INTERSECT_MD,WELL_NAME,WELL_NUM,WELL_NUMERIC_ID,WHIPSTOCK_DEPTH,WHIPSTOCK_DEPTH_OUOM,IPL_LICENSEE,IPL_OFFSHORE_IND,IPL_PIDSTATUS,IPL_PRSTATUS,IPL_ORSTATUS,IPL_ONPROD_DATE,IPL_ONINJECT_DATE,IPL_CONFIDENTIAL_STRAT_AGE,IPL_POOL,IPL_LAST_UPDATE,IPL_UWI_SORT,IPL_UWI_DISPLAY,IPL_TD_TVD,IPL_PLUGBACK_TVD,IPL_WHIPSTOCK_TVD,IPL_WATER_TVD,IPL_ALT_SOURCE,IPL_XACTION_CODE,ROW_CHANGED_BY,ROW_CHANGED_DATE,ROW_CREATED_BY,ROW_CREATED_DATE,IPL_BASIN,IPL_BLOCK,IPL_AREA,IPL_TWP,IPL_TRACT,IPL_LOT,IPL_CONC,IPL_UWI_LOCAL,ROW_QUALITY)
TABLESPACE APP_DATA
PCTUSED    0
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOCACHE
LOGGING
NOCOMPRESS
NOPARALLEL
BUILD IMMEDIATE
REFRESH FORCE ON DEMAND
WITH PRIMARY KEY
AS 
/* Formatted on 30/09/2013 9:13:53 AM (QP5 v5.227.12220.39754) */
SELECT "WELL_VERSION"."UWI" "UWI",
       "WELL_VERSION"."SOURCE" "SOURCE",
       "WELL_VERSION"."ABANDONMENT_DATE" "ABANDONMENT_DATE",
       "WELL_VERSION"."ACTIVE_IND" "ACTIVE_IND",
       "WELL_VERSION"."ASSIGNED_FIELD" "ASSIGNED_FIELD",
       "WELL_VERSION"."BASE_NODE_ID" "BASE_NODE_ID",
       "WELL_VERSION"."BOTTOM_HOLE_LATITUDE" "BOTTOM_HOLE_LATITUDE",
       "WELL_VERSION"."BOTTOM_HOLE_LONGITUDE" "BOTTOM_HOLE_LONGITUDE",
       "WELL_VERSION"."CASING_FLANGE_ELEV" "CASING_FLANGE_ELEV",
       "WELL_VERSION"."CASING_FLANGE_ELEV_OUOM" "CASING_FLANGE_ELEV_OUOM",
       "WELL_VERSION"."COMPLETION_DATE" "COMPLETION_DATE",
       "WELL_VERSION"."CONFIDENTIAL_DATE" "CONFIDENTIAL_DATE",
       "WELL_VERSION"."CONFIDENTIAL_DEPTH" "CONFIDENTIAL_DEPTH",
       "WELL_VERSION"."CONFIDENTIAL_DEPTH_OUOM" "CONFIDENTIAL_DEPTH_OUOM",
       "WELL_VERSION"."CONFIDENTIAL_TYPE" "CONFIDENTIAL_TYPE",
       "WELL_VERSION"."CONFID_STRAT_NAME_SET_ID" "CONFID_STRAT_NAME_SET_ID",
       "WELL_VERSION"."CONFID_STRAT_UNIT_ID" "CONFID_STRAT_UNIT_ID",
       "WELL_VERSION"."COUNTRY" "COUNTRY",
       "WELL_VERSION"."COUNTY" "COUNTY",
       "WELL_VERSION"."CURRENT_CLASS" "CURRENT_CLASS",
       "WELL_VERSION"."CURRENT_STATUS" "CURRENT_STATUS",
       "WELL_VERSION"."CURRENT_STATUS_DATE" "CURRENT_STATUS_DATE",
       "WELL_VERSION"."DEEPEST_DEPTH" "DEEPEST_DEPTH",
       "WELL_VERSION"."DEEPEST_DEPTH_OUOM" "DEEPEST_DEPTH_OUOM",
       "WELL_VERSION"."DEPTH_DATUM" "DEPTH_DATUM",
       "WELL_VERSION"."DEPTH_DATUM_ELEV" "DEPTH_DATUM_ELEV",
       "WELL_VERSION"."DEPTH_DATUM_ELEV_OUOM" "DEPTH_DATUM_ELEV_OUOM",
       "WELL_VERSION"."DERRICK_FLOOR_ELEV" "DERRICK_FLOOR_ELEV",
       "WELL_VERSION"."DERRICK_FLOOR_ELEV_OUOM" "DERRICK_FLOOR_ELEV_OUOM",
       "WELL_VERSION"."DIFFERENCE_LAT_MSL" "DIFFERENCE_LAT_MSL",
       "WELL_VERSION"."DISCOVERY_IND" "DISCOVERY_IND",
       "WELL_VERSION"."DISTRICT" "DISTRICT",
       "WELL_VERSION"."DRILL_TD" "DRILL_TD",
       "WELL_VERSION"."DRILL_TD_OUOM" "DRILL_TD_OUOM",
       "WELL_VERSION"."EFFECTIVE_DATE" "EFFECTIVE_DATE",
       "WELL_VERSION"."ELEV_REF_DATUM" "ELEV_REF_DATUM",
       "WELL_VERSION"."EXPIRY_DATE" "EXPIRY_DATE",
       "WELL_VERSION"."FAULTED_IND" "FAULTED_IND",
       "WELL_VERSION"."FINAL_DRILL_DATE" "FINAL_DRILL_DATE",
       "WELL_VERSION"."FINAL_TD" "FINAL_TD",
       "WELL_VERSION"."FINAL_TD_OUOM" "FINAL_TD_OUOM",
       "WELL_VERSION"."GEOGRAPHIC_REGION" "GEOGRAPHIC_REGION",
       "WELL_VERSION"."GEOLOGIC_PROVINCE" "GEOLOGIC_PROVINCE",
       "WELL_VERSION"."GROUND_ELEV" "GROUND_ELEV",
       "WELL_VERSION"."GROUND_ELEV_OUOM" "GROUND_ELEV_OUOM",
       "WELL_VERSION"."GROUND_ELEV_TYPE" "GROUND_ELEV_TYPE",
       "WELL_VERSION"."INITIAL_CLASS" "INITIAL_CLASS",
       "WELL_VERSION"."KB_ELEV" "KB_ELEV",
       "WELL_VERSION"."KB_ELEV_OUOM" "KB_ELEV_OUOM",
       "WELL_VERSION"."LEASE_NAME" "LEASE_NAME",
       "WELL_VERSION"."LEASE_NUM" "LEASE_NUM",
       "WELL_VERSION"."LEGAL_SURVEY_TYPE" "LEGAL_SURVEY_TYPE",
       "WELL_VERSION"."LOCATION_TYPE" "LOCATION_TYPE",
       "WELL_VERSION"."LOG_TD" "LOG_TD",
       "WELL_VERSION"."LOG_TD_OUOM" "LOG_TD_OUOM",
       "WELL_VERSION"."MAX_TVD" "MAX_TVD",
       "WELL_VERSION"."MAX_TVD_OUOM" "MAX_TVD_OUOM",
       "WELL_VERSION"."NET_PAY" "NET_PAY",
       "WELL_VERSION"."NET_PAY_OUOM" "NET_PAY_OUOM",
       "WELL_VERSION"."OLDEST_STRAT_AGE" "OLDEST_STRAT_AGE",
       "WELL_VERSION"."OLDEST_STRAT_NAME_SET_AGE" "OLDEST_STRAT_NAME_SET_AGE",
       "WELL_VERSION"."OLDEST_STRAT_NAME_SET_ID" "OLDEST_STRAT_NAME_SET_ID",
       "WELL_VERSION"."OLDEST_STRAT_UNIT_ID" "OLDEST_STRAT_UNIT_ID",
       "WELL_VERSION"."OPERATOR" "OPERATOR",
       "WELL_VERSION"."PARENT_RELATIONSHIP_TYPE" "PARENT_RELATIONSHIP_TYPE",
       "WELL_VERSION"."PARENT_UWI" "PARENT_UWI",
       "WELL_VERSION"."PLATFORM_ID" "PLATFORM_ID",
       "WELL_VERSION"."PLATFORM_SF_TYPE" "PLATFORM_SF_TYPE",
       "WELL_VERSION"."PLOT_NAME" "PLOT_NAME",
       "WELL_VERSION"."PLOT_SYMBOL" "PLOT_SYMBOL",
       "WELL_VERSION"."PLUGBACK_DEPTH" "PLUGBACK_DEPTH",
       "WELL_VERSION"."PLUGBACK_DEPTH_OUOM" "PLUGBACK_DEPTH_OUOM",
       "WELL_VERSION"."PPDM_GUID" "PPDM_GUID",
       "WELL_VERSION"."PROFILE_TYPE" "PROFILE_TYPE",
       "WELL_VERSION"."PROVINCE_STATE" "PROVINCE_STATE",
       "WELL_VERSION"."REGULATORY_AGENCY" "REGULATORY_AGENCY",
       "WELL_VERSION"."REMARK" "REMARK",
       "WELL_VERSION"."RIG_ON_SITE_DATE" "RIG_ON_SITE_DATE",
       "WELL_VERSION"."RIG_RELEASE_DATE" "RIG_RELEASE_DATE",
       "WELL_VERSION"."ROTARY_TABLE_ELEV" "ROTARY_TABLE_ELEV",
       "WELL_VERSION"."SOURCE_DOCUMENT" "SOURCE_DOCUMENT",
       "WELL_VERSION"."SPUD_DATE" "SPUD_DATE",
       "WELL_VERSION"."STATUS_TYPE" "STATUS_TYPE",
       "WELL_VERSION"."SUBSEA_ELEV_REF_TYPE" "SUBSEA_ELEV_REF_TYPE",
       "WELL_VERSION"."SURFACE_LATITUDE" "SURFACE_LATITUDE",
       "WELL_VERSION"."SURFACE_LONGITUDE" "SURFACE_LONGITUDE",
       "WELL_VERSION"."SURFACE_NODE_ID" "SURFACE_NODE_ID",
       "WELL_VERSION"."TAX_CREDIT_CODE" "TAX_CREDIT_CODE",
       "WELL_VERSION"."TD_STRAT_AGE" "TD_STRAT_AGE",
       "WELL_VERSION"."TD_STRAT_NAME_SET_AGE" "TD_STRAT_NAME_SET_AGE",
       "WELL_VERSION"."TD_STRAT_NAME_SET_ID" "TD_STRAT_NAME_SET_ID",
       "WELL_VERSION"."TD_STRAT_UNIT_ID" "TD_STRAT_UNIT_ID",
       "WELL_VERSION"."WATER_ACOUSTIC_VEL" "WATER_ACOUSTIC_VEL",
       "WELL_VERSION"."WATER_ACOUSTIC_VEL_OUOM" "WATER_ACOUSTIC_VEL_OUOM",
       "WELL_VERSION"."WATER_DEPTH" "WATER_DEPTH",
       "WELL_VERSION"."WATER_DEPTH_DATUM" "WATER_DEPTH_DATUM",
       "WELL_VERSION"."WATER_DEPTH_OUOM" "WATER_DEPTH_OUOM",
       "WELL_VERSION"."WELL_EVENT_NUM" "WELL_EVENT_NUM",
       "WELL_VERSION"."WELL_GOVERNMENT_ID" "WELL_GOVERNMENT_ID",
       "WELL_VERSION"."WELL_INTERSECT_MD" "WELL_INTERSECT_MD",
       "WELL_VERSION"."WELL_NAME" "WELL_NAME",
       "WELL_VERSION"."WELL_NUM" "WELL_NUM",
       "WELL_VERSION"."WELL_NUMERIC_ID" "WELL_NUMERIC_ID",
       "WELL_VERSION"."WHIPSTOCK_DEPTH" "WHIPSTOCK_DEPTH",
       "WELL_VERSION"."WHIPSTOCK_DEPTH_OUOM" "WHIPSTOCK_DEPTH_OUOM",
       "WELL_VERSION"."IPL_LICENSEE" "IPL_LICENSEE",
       "WELL_VERSION"."IPL_OFFSHORE_IND" "IPL_OFFSHORE_IND",
       "WELL_VERSION"."IPL_PIDSTATUS" "IPL_PIDSTATUS",
       "WELL_VERSION"."IPL_PRSTATUS" "IPL_PRSTATUS",
       "WELL_VERSION"."IPL_ORSTATUS" "IPL_ORSTATUS",
       "WELL_VERSION"."IPL_ONPROD_DATE" "IPL_ONPROD_DATE",
       "WELL_VERSION"."IPL_ONINJECT_DATE" "IPL_ONINJECT_DATE",
       "WELL_VERSION"."IPL_CONFIDENTIAL_STRAT_AGE"
          "IPL_CONFIDENTIAL_STRAT_AGE",
       "WELL_VERSION"."IPL_POOL" "IPL_POOL",
       "WELL_VERSION"."IPL_LAST_UPDATE" "IPL_LAST_UPDATE",
       "WELL_VERSION"."IPL_UWI_SORT" "IPL_UWI_SORT",
       "WELL_VERSION"."IPL_UWI_DISPLAY" "IPL_UWI_DISPLAY",
       "WELL_VERSION"."IPL_TD_TVD" "IPL_TD_TVD",
       "WELL_VERSION"."IPL_PLUGBACK_TVD" "IPL_PLUGBACK_TVD",
       "WELL_VERSION"."IPL_WHIPSTOCK_TVD" "IPL_WHIPSTOCK_TVD",
       "WELL_VERSION"."IPL_WATER_TVD" "IPL_WATER_TVD",
       "WELL_VERSION"."IPL_ALT_SOURCE" "IPL_ALT_SOURCE",
       "WELL_VERSION"."IPL_XACTION_CODE" "IPL_XACTION_CODE",
       "WELL_VERSION"."ROW_CHANGED_BY" "ROW_CHANGED_BY",
       "WELL_VERSION"."ROW_CHANGED_DATE" "ROW_CHANGED_DATE",
       "WELL_VERSION"."ROW_CREATED_BY" "ROW_CREATED_BY",
       "WELL_VERSION"."ROW_CREATED_DATE" "ROW_CREATED_DATE",
       "WELL_VERSION"."IPL_BASIN" "IPL_BASIN",
       "WELL_VERSION"."IPL_BLOCK" "IPL_BLOCK",
       "WELL_VERSION"."IPL_AREA" "IPL_AREA",
       "WELL_VERSION"."IPL_TWP" "IPL_TWP",
       "WELL_VERSION"."IPL_TRACT" "IPL_TRACT",
       "WELL_VERSION"."IPL_LOT" "IPL_LOT",
       "WELL_VERSION"."IPL_CONC" "IPL_CONC",
       "WELL_VERSION"."IPL_UWI_LOCAL" "IPL_UWI_LOCAL",
       "WELL_VERSION"."ROW_QUALITY" "ROW_QUALITY"
  FROM "S_TLM_PROBE_STG"."WELL_VERSION"@C_TLM_PROBE.WORLD "WELL_VERSION";


COMMENT ON MATERIALIZED VIEW WELL_VERSIONPRBSTG_MV IS 'snapshot table for snapshot WIM_LOADER.WELL_VERSIONPRBSTG_MV';

CREATE UNIQUE INDEX WVPRB_WELL_NUM ON WELL_VERSIONPRBSTG_MV
(WELL_NUM)
LOGGING
TABLESPACE APP_DATA
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;

CREATE UNIQUE INDEX WV_PK1 ON WELL_VERSIONPRBSTG_MV
(UWI, SOURCE)
LOGGING
TABLESPACE APP_DATA
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;
