DROP VIEW PPDM.IHS_US_PDEN;

/* Formatted on 19/04/2013 9:36:07 AM (QP5 v5.227.12220.39754) */
CREATE OR REPLACE FORCE VIEW PPDM.IHS_US_PDEN
(
   PDEN_ID,
   PDEN_TYPE,
   SOURCE,
   ACTIVE_IND,
   COUNTRY,
   CURRENT_OPERATOR,
   CURRENT_PROD_STR_NAME,
   CURRENT_STATUS_DATE,
   CURRENT_WELL_STR_NUMBER,
   DISTRICT,
   EFFECTIVE_DATE,
   ENHANCED_RECOVERY_TYPE,
   EXPIRY_DATE,
   FIELD_ID,
   GEOGRAPHIC_REGION,
   GEOLOGIC_PROVINCE,
   LAST_INJECTION_DATE,
   LAST_PRODUCTION_DATE,
   LAST_REPORTED_DATE,
   LOCATION_DESC,
   LOCATION_DESC_TYPE,
   ON_INJECTION_DATE,
   ON_PRODUCTION_DATE,
   PDEN_NAME,
   PDEN_SHORT_NAME,
   PDEN_STATUS,
   PLOT_NAME,
   PLOT_SYMBOL,
   POOL_ID,
   PPDM_GUID,
   PRIMARY_PRODUCT,
   PRODUCTION_METHOD,
   PROPRIETARY_IND,
   PROVINCE_STATE,
   REMARK,
   STATE_OR_FEDERAL_WATERS,
   STRAT_NAME_SET_ID,
   STRAT_UNIT_ID,
   STRING_SERIAL_NUMBER,
   ROW_CHANGED_BY,
   ROW_CHANGED_DATE,
   ROW_CREATED_BY,
   ROW_CREATED_DATE,
   ROW_QUALITY,
   X_TOP_DEPTH,
   X_BASE_DEPTH,
   X_UNIT_ID,
   X_ALLOW_TYPE,
   X_BLOCK_ID,
   X_PSU_SURPLUS_IND,
   X_PROJECT_ID,
   X_PROD_FREQ,
   X_PROD_SPACING_UNIT,
   X_UNIT_OIL_INTEREST,
   X_UNIT_GAS_INTEREST,
   X_SPECIAL_PSU_SURPLUS,
   X_SPECIAL_PENALTY_RELIEF,
   X_PENALTY_RELIEF,
   X_SET_GOR_DATE,
   X_SET_GOR,
   X_PEND_S4_IND,
   X_FACILITY_ID,
   X_CONTROL_WELL_IND,
   X_OIL_DENSITY,
   X_OFF_TARGET,
   X_DISP_INJ_APPROVAL,
   X_DISP_INJ_APPROVAL_NUMBER,
   X_WELLHEAD_PRESS,
   X_BATTERY_ID,
   X_COMMINGLED,
   TOP_STRAT_AGE,
   BASE_STRAT_AGE,
   X_ONPROD_OIL,
   X_ONPROD_GAS,
   X_ONPROD_WATER,
   FACILITY_TYPE
)
AS
   SELECT WV.uwi AS "PDEN_ID",
          P."PDEN_TYPE",
          wv.source AS "SOURCE",
          P."ACTIVE_IND",
          P."COUNTRY",
          P."CURRENT_OPERATOR",
          P."CURRENT_PROD_STR_NAME",
          P."CURRENT_STATUS_DATE",
          P."CURRENT_WELL_STR_NUMBER",
          P."DISTRICT",
          P."EFFECTIVE_DATE",
          P."ENHANCED_RECOVERY_TYPE",
          P."EXPIRY_DATE",
          P."FIELD_ID",
          P."GEOGRAPHIC_REGION",
          P."GEOLOGIC_PROVINCE",
          P."LAST_INJECTION_DATE",
          P."LAST_PRODUCTION_DATE",
          P."LAST_REPORTED_DATE",
          P."LOCATION_DESC",
          P."LOCATION_DESC_TYPE",
          P."ON_INJECTION_DATE",
          P."ON_PRODUCTION_DATE",
          P."PDEN_NAME",
          P."PDEN_SHORT_NAME",
          P."PDEN_STATUS",
          P."PLOT_NAME",
          P."PLOT_SYMBOL",
          P."POOL_ID",
          P."PPDM_GUID",
          P."PRIMARY_PRODUCT",
          P."PRODUCTION_METHOD",
          P."PROPRIETARY_IND",
          P."PROVINCE_STATE",
          P."REMARK",
          P."STATE_OR_FEDERAL_WATERS",
          P."STRAT_NAME_SET_ID",
          P."STRAT_UNIT_ID",
          P."STRING_SERIAL_NUMBER",
          P."ROW_CHANGED_BY",
          P."ROW_CHANGED_DATE",
          P."ROW_CREATED_BY",
          P."ROW_CREATED_DATE",
          P."ROW_QUALITY",
          --P."X_TOP_DEPTH",
          P.X_TOP_DEPTH * .3048,
          --P."X_BASE_DEPTH",
          P.X_BASE_DEPTH* .3048,
          P."X_UNIT_ID",
          P."X_ALLOW_TYPE",
          P."X_BLOCK_ID",
          P."X_PSU_SURPLUS_IND",
          P."X_PROJECT_ID",
          P."X_PROD_FREQ",
          P."X_PROD_SPACING_UNIT",
          P."X_UNIT_OIL_INTEREST",
          P."X_UNIT_GAS_INTEREST",
          P."X_SPECIAL_PSU_SURPLUS",
          P."X_SPECIAL_PENALTY_RELIEF",
          P."X_PENALTY_RELIEF",
          P."X_SET_GOR_DATE",
          P."X_SET_GOR",
          P."X_PEND_S4_IND",
          P."X_FACILITY_ID",
          P."X_CONTROL_WELL_IND",
          P."X_OIL_DENSITY",
          P."X_OFF_TARGET",
          P."X_DISP_INJ_APPROVAL",
          P."X_DISP_INJ_APPROVAL_NUMBER",
          P."X_WELLHEAD_PRESS",
          P."X_BATTERY_ID",
          P."X_COMMINGLED",
          P."TOP_STRAT_AGE",
          P."BASE_STRAT_AGE",
          P."X_ONPROD_OIL",
          P."X_ONPROD_GAS",
          P."X_ONPROD_WATER",
          P."FACILITY_TYPE"
     FROM PDEN@C_TALISMAN_US_IHSDATAQ P, WELL_VERSION WV
    WHERE     WV.well_num = P.PDEN_ID
          AND P.PDEN_TYPE = 'PDEN_WELL'
          AND WV.SOURCE = '450PID'
          AND WV.ACTIVE_IND = 'Y'
   UNION ALL
   SELECT "ENTITY",
          "PDEN_TYPE",
          "SOURCE",
          "ACTIVE_IND",
          "COUNTRY",
          "CURR_OPERATOR",
          "ENTITY_NAME",
          "STATUS_DATE",
          "WELL_NUMBER",
          "DISTRICT",
          NULL AS "EFFECTIVE_DATE",
          "PI_ENHANCED_REC",
          NULL AS "EXPIRY_DATE",
          "ASSIGNED_FIELD",
          NULL AS "GEOGRAPHIC_REGION",
          "GEOLOGIC_PROVINCE",
          NULL AS "LAST_INJECTION_DATE",
          NULL AS "LAST_PRODUCTION_DATE",
          NULL AS "LAST_REPORTED_DATE",
          "LOCATION_TABLE",
          NULL AS "LOCATION_DESC_TYPE",
          "ON_INJECTION_DATE",
          "ON_PRODUCTION_DATE",
          NULL AS "PDEN_NAME",
          "SHORT_NAME",
          "CRSTATUS",
          "PLOT_NAME",
          "PLOT_SYMBOL",
          "FIELD_POOL_WILDCAT",
          NULL AS "PPDM_GUID",
          "PI_PRIMARY_PRODUCT",
          NULL AS "PRODUCTION_METHOD",
          "PROPRIETARY_IND",
          "PROVINCE_STATE",
          NULL AS "REMARK",
          "PI_SITUATION_CD",
          NULL AS "STRAT_NAME_SET_ID",
          NULL AS "STRAT_UNIT_ID",
          NULL AS "STRING_SERIAL_NUMBER",
          "ROW_CHANGED_BY",
          "PI_REC_UPD_DATE",
          "PI_USER_ID",
          "PI_ROW_ADD_DATE",
          NULL AS "ROW_QUALITY",
          TOP_DEPTH*.3048,
          BASE_DEPTH*.3048,
          NULL AS "X_UNIT_ID",
          NULL AS "X_ALLOW_TYPE",
          NULL AS "X_BLOCK_ID",
          NULL AS "X_PSU_SURPLUS_IND",
          "PROJECT_NUMBER",
          NULL AS "X_PROD_FREQ",
          NULL AS "X_PROD_SPACING_UNIT",
          NULL AS "X_UNIT_OIL_INTEREST",
          NULL AS "X_UNIT_GAS_INTEREST",
          NULL AS "X_SPECIAL_PSU_SURPLUS",
          NULL AS "X_SPECIAL_PENALTY_RELIEF",
          NULL AS "X_PENALTY_RELIEF",
          NULL AS "X_SET_GOR_DATE",
          NULL AS "X_SET_GOR",
          NULL AS "X_PEND_S4_IND",
          NULL AS "X_FACILITY_ID",
          NULL AS "X_CONTROL_WELL_IND",
          NULL AS "X_OIL_DENSITY",
          NULL AS "X_OFF_TARGET",
          NULL AS "X_DISP_INJ_APPROVAL",
          NULL AS "X_DISP_INJ_APPROVAL_NUMBER",
          NULL AS "X_WELLHEAD_PRESS",
          NULL AS "X_BATTERY_ID",
          NULL AS "X_COMMINGLED",
          NULL AS "TOP_STRAT_AGE",
          NULL AS "BASE_STRAT_AGE",
          NULL AS "X_ONPROD_OIL",
          NULL AS "X_ONPROD_GAS",
          NULL AS "X_ONPROD_WATER",
          NULL AS "FACILITY_TYPE"
     FROM IHS_PID_PDEN;


GRANT SELECT ON PPDM.IHS_US_PDEN TO PPDM_RO;
