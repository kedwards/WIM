DROP VIEW PPDM.WELL_TEST;

/* Formatted on 4/2/2013 11:40:55 AM (QP5 v5.185.11230.41888) */
CREATE OR REPLACE FORCE VIEW PPDM.WELL_TEST
(
   UWI,
   SOURCE,
   TEST_TYPE,
   RUN_NUM,
   TEST_NUM,
   ACTIVE_IND,
   BASE_DEPTH,
   BASE_DEPTH_OUOM,
   BASE_STRAT_UNIT_ID,
   BHP_Z,
   BOTTOM_CHOKE_DESC,
   BSW_PERCENT,
   CALIPER_HOLE_DIAMETER,
   CALIPER_HOLE_DIAMETER_OUOM,
   CASED_HOLE_IND,
   CASING_PRESSURE,
   CASING_PRESSURE_OUOM,
   CHOKE_SIZE_DESC,
   COMPLETION_OBS_NO,
   COMPLETION_SOURCE,
   CONDENSATE_AMOUNT_PERCENT,
   CONDENSATE_FLOW_AMOUNT,
   CONDENSATE_FLOW_AMOUNT_OUOM,
   CONDENSATE_FLOW_AMOUNT_UOM,
   CONDENSATE_GRAVITY,
   CONDENSATE_RATIO,
   CONDENSATE_RATIO_OUOM,
   DAMAGE_QUALITY,
   EFFECTIVE_DATE,
   EVENT_OBS_NO,
   EVENT_SOURCE,
   EXPIRY_DATE,
   FLOW_PRESSURE,
   FLOW_PRESSURE_OUOM,
   FLOW_TEMPERATURE,
   FLOW_TEMPERATURE_OUOM,
   GAS_FLOW_AMOUNT,
   GAS_FLOW_AMOUNT_OUOM,
   GAS_FLOW_AMOUNT_UOM,
   GAS_GRAVITY,
   GOR,
   GOR_OUOM,
   H2S_PERCENT,
   HOLE_CONDITION,
   MAX_CONDENS_FLOW_RATE,
   MAX_CONDENS_FLOW_RATE_OUOM,
   MAX_GAS_FLOW_RATE,
   MAX_GAS_FLOW_RATE_OUOM,
   MAX_HYDROSTATIC_PRESSURE,
   MAX_HYDROSTATIC_PRESS_OUOM,
   MAX_OIL_FLOW_RATE,
   MAX_OIL_FLOW_RATE_OUOM,
   MAX_WATER_FLOW_RATE,
   MAX_WATER_FLOW_RATE_OUOM,
   OIL_AMOUNT_PERCENT,
   OIL_FLOW_AMOUNT,
   OIL_FLOW_AMOUNT_OUOM,
   OIL_FLOW_AMOUNT_UOM,
   OIL_GRAVITY,
   PERMEABILITY_QUALITY,
   PPDM_GUID,
   PRIMARY_FLUID_RECOVERED,
   PRODUCTION_METHOD,
   PROD_STRING_ID,
   PROD_STR_FORM_OBS_NO,
   RAT_HOLE_DIAMETER,
   RAT_HOLE_DIAMETER_OUOM,
   RAT_HOLE_LENGTH,
   RAT_HOLE_LENGTH_OUOM,
   REMARK,
   REPORTED_STRAT_UNIT_ID,
   REPORT_TEMPERATURE,
   REPORT_TEMPERATURE_OUOM,
   REPORT_TEST_NUM,
   SHOW_TYPE,
   SI_FLOW_RATIO,
   START_TIME,
   STATIC_PRESSURE,
   STATIC_PRESSURE_OUOM,
   STRAT_AGE,
   STRAT_AGE_NAME_SET_ID,
   STRAT_NAME_SET_ID,
   STRING_SOURCE,
   SULPHUR_IND,
   TD,
   TD_OUOM,
   TEMPERATURE_CORRECTION,
   TEMPERATURE_CORRECTION_IND,
   TEMPERATURE_CORRECTION_OUOM,
   TEST_COMPANY,
   TEST_DATE,
   TEST_DURATION,
   TEST_DURATION_OUOM,
   TEST_HOLE_DIAMETER,
   TEST_HOLE_DIAMETER_OUOM,
   TEST_RESULT_CODE,
   TEST_SUBTYPE,
   TOOL_OPEN_TIME,
   TOP_CHOKE_DESC,
   TOP_DEPTH,
   TOP_DEPTH_OUOM,
   TOP_STRAT_UNIT_ID,
   WATER_AMOUNT_PERCENT,
   WATER_CUT_PERCENT,
   WATER_FLOW_AMOUNT,
   WATER_FLOW_AMOUNT_OUOM,
   WATER_FLOW_AMOUNT_UOM,
   WELLBORE_COMPLETION_TYPE,
   Z_FACTOR,
   ROW_CHANGED_BY,
   ROW_CHANGED_DATE,
   ROW_CREATED_BY,
   ROW_CREATED_DATE,
   ROW_QUALITY,
   PROVINCE_STATE,
   TOP_STRAT_AGE,
   BASE_STRAT_AGE,
   REPORTED_STRAT_AGE,
   X_FILE_NAME,
   X_P_MAX,
   X_STRAT_UNIT_ID
)
AS
   SELECT "UWI",
          "SOURCE",
          "TEST_TYPE",
          "RUN_NUM",
          "TEST_NUM",
          "ACTIVE_IND",
          "BASE_DEPTH",
          "BASE_DEPTH_OUOM",
          "BASE_STRAT_UNIT_ID",
          "BHP_Z",
          "BOTTOM_CHOKE_DESC",
          "BSW_PERCENT",
          "CALIPER_HOLE_DIAMETER",
          "CALIPER_HOLE_DIAMETER_OUOM",
          "CASED_HOLE_IND",
          "CASING_PRESSURE",
          "CASING_PRESSURE_OUOM",
          "CHOKE_SIZE_DESC",
          "COMPLETION_OBS_NO",
          "COMPLETION_SOURCE",
          "CONDENSATE_AMOUNT_PERCENT",
          "CONDENSATE_FLOW_AMOUNT",
          "CONDENSATE_FLOW_AMOUNT_OUOM",
          "CONDENSATE_FLOW_AMOUNT_UOM",
          "CONDENSATE_GRAVITY",
          "CONDENSATE_RATIO",
          "CONDENSATE_RATIO_OUOM",
          "DAMAGE_QUALITY",
          "EFFECTIVE_DATE",
          "EVENT_OBS_NO",
          "EVENT_SOURCE",
          "EXPIRY_DATE",
          "FLOW_PRESSURE",
          "FLOW_PRESSURE_OUOM",
          "FLOW_TEMPERATURE",
          "FLOW_TEMPERATURE_OUOM",
          "GAS_FLOW_AMOUNT",
          "GAS_FLOW_AMOUNT_OUOM",
          "GAS_FLOW_AMOUNT_UOM",
          "GAS_GRAVITY",
          "GOR",
          "GOR_OUOM",
          "H2S_PERCENT",
          "HOLE_CONDITION",
          "MAX_CONDENS_FLOW_RATE",
          "MAX_CONDENS_FLOW_RATE_OUOM",
          "MAX_GAS_FLOW_RATE",
          "MAX_GAS_FLOW_RATE_OUOM",
          "MAX_HYDROSTATIC_PRESSURE",
          "MAX_HYDROSTATIC_PRESS_OUOM",
          "MAX_OIL_FLOW_RATE",
          "MAX_OIL_FLOW_RATE_OUOM",
          "MAX_WATER_FLOW_RATE",
          "MAX_WATER_FLOW_RATE_OUOM",
          "OIL_AMOUNT_PERCENT",
          "OIL_FLOW_AMOUNT",
          "OIL_FLOW_AMOUNT_OUOM",
          "OIL_FLOW_AMOUNT_UOM",
          "OIL_GRAVITY",
          "PERMEABILITY_QUALITY",
          "PPDM_GUID",
          "PRIMARY_FLUID_RECOVERED",
          "PRODUCTION_METHOD",
          "PROD_STRING_ID",
          "PROD_STR_FORM_OBS_NO",
          "RAT_HOLE_DIAMETER",
          "RAT_HOLE_DIAMETER_OUOM",
          "RAT_HOLE_LENGTH",
          "RAT_HOLE_LENGTH_OUOM",
          "REMARK",
          "REPORTED_STRAT_UNIT_ID",
          "REPORT_TEMPERATURE",
          "REPORT_TEMPERATURE_OUOM",
          "REPORT_TEST_NUM",
          "SHOW_TYPE",
          "SI_FLOW_RATIO",
          "START_TIME",
          "STATIC_PRESSURE",
          "STATIC_PRESSURE_OUOM",
          "STRAT_AGE",
          "STRAT_AGE_NAME_SET_ID",
          "STRAT_NAME_SET_ID",
          "STRING_SOURCE",
          "SULPHUR_IND",
          "TD",
          "TD_OUOM",
          "TEMPERATURE_CORRECTION",
          "TEMPERATURE_CORRECTION_IND",
          "TEMPERATURE_CORRECTION_OUOM",
          "TEST_COMPANY",
          "TEST_DATE",
          "TEST_DURATION",
          "TEST_DURATION_OUOM",
          "TEST_HOLE_DIAMETER",
          "TEST_HOLE_DIAMETER_OUOM",
          "TEST_RESULT_CODE",
          "TEST_SUBTYPE",
          "TOOL_OPEN_TIME",
          "TOP_CHOKE_DESC",
          "TOP_DEPTH",
          "TOP_DEPTH_OUOM",
          "TOP_STRAT_UNIT_ID",
          "WATER_AMOUNT_PERCENT",
          "WATER_CUT_PERCENT",
          "WATER_FLOW_AMOUNT",
          "WATER_FLOW_AMOUNT_OUOM",
          "WATER_FLOW_AMOUNT_UOM",
          "WELLBORE_COMPLETION_TYPE",
          "Z_FACTOR",
          "ROW_CHANGED_BY",
          "ROW_CHANGED_DATE",
          "ROW_CREATED_BY",
          "ROW_CREATED_DATE",
          "ROW_QUALITY",
          -- IHS extensions
          NULL AS "PROVINCE_STATE",
          NULL AS "TOP_STRAT_AGE",
          NULL AS "BASE_STRAT_AGE",
          NULL AS "REPORTED_STRAT_AGE",
          NULL AS "X_FILE_NAME",
          NULL AS "X_P_MAX",
          NULL AS "X_STRAT_UNIT_ID"
     FROM tlm_well_TEST
   UNION ALL
   SELECT "UWI",
          "SOURCE",
          "TEST_TYPE",
          "RUN_NUM",
          "TEST_NUM",
          "ACTIVE_IND",
          "BASE_DEPTH",
          "BASE_DEPTH_OUOM",
          "BASE_STRAT_UNIT_ID",
          "BHP_Z",
          "BOTTOM_CHOKE_DESC",
          "BSW_PERCENT",
          "CALIPER_HOLE_DIAMETER",
          "CALIPER_HOLE_DIAMETER_OUOM",
          "CASED_HOLE_IND",
          "CASING_PRESSURE",
          "CASING_PRESSURE_OUOM",
          "CHOKE_SIZE_DESC",
          "COMPLETION_OBS_NO",
          "COMPLETION_SOURCE",
          "CONDENSATE_AMOUNT_PERCENT",
          "CONDENSATE_FLOW_AMOUNT",
          "CONDENSATE_FLOW_AMOUNT_OUOM",
          "CONDENSATE_FLOW_AMOUNT_UOM",
          "CONDENSATE_GRAVITY",
          "CONDENSATE_RATIO",
          "CONDENSATE_RATIO_OUOM",
          "DAMAGE_QUALITY",
          "EFFECTIVE_DATE",
          "EVENT_OBS_NO",
          "EVENT_SOURCE",
          "EXPIRY_DATE",
          "FLOW_PRESSURE",
          "FLOW_PRESSURE_OUOM",
          "FLOW_TEMPERATURE",
          "FLOW_TEMPERATURE_OUOM",
          "GAS_FLOW_AMOUNT",
          "GAS_FLOW_AMOUNT_OUOM",
          "GAS_FLOW_AMOUNT_UOM",
          "GAS_GRAVITY",
          "GOR",
          "GOR_OUOM",
          "H2S_PERCENT",
          "HOLE_CONDITION",
          "MAX_CONDENS_FLOW_RATE",
          "MAX_CONDENS_FLOW_RATE_OUOM",
          "MAX_GAS_FLOW_RATE",
          "MAX_GAS_FLOW_RATE_OUOM",
          "MAX_HYDROSTATIC_PRESSURE",
          "MAX_HYDROSTATIC_PRESS_OUOM",
          "MAX_OIL_FLOW_RATE",
          "MAX_OIL_FLOW_RATE_OUOM",
          "MAX_WATER_FLOW_RATE",
          "MAX_WATER_FLOW_RATE_OUOM",
          "OIL_AMOUNT_PERCENT",
          "OIL_FLOW_AMOUNT",
          "OIL_FLOW_AMOUNT_OUOM",
          "OIL_FLOW_AMOUNT_UOM",
          "OIL_GRAVITY",
          "PERMEABILITY_QUALITY",
          "PPDM_GUID",
          "PRIMARY_FLUID_RECOVERED",
          "PRODUCTION_METHOD",
          "PROD_STRING_ID",
          "PROD_STR_FORM_OBS_NO",
          "RAT_HOLE_DIAMETER",
          "RAT_HOLE_DIAMETER_OUOM",
          "RAT_HOLE_LENGTH",
          "RAT_HOLE_LENGTH_OUOM",
          "REMARK",
          "REPORTED_STRAT_UNIT_ID",
          "REPORT_TEMPERATURE",
          "REPORT_TEMPERATURE_OUOM",
          "REPORT_TEST_NUM",
          "SHOW_TYPE",
          "SI_FLOW_RATIO",
          "START_TIME",
          "STATIC_PRESSURE",
          "STATIC_PRESSURE_OUOM",
          "STRAT_AGE",
          "STRAT_AGE_NAME_SET_ID",
          "STRAT_NAME_SET_ID",
          "STRING_SOURCE",
          "SULPHUR_IND",
          "TD",
          "TD_OUOM",
          "TEMPERATURE_CORRECTION",
          "TEMPERATURE_CORRECTION_IND",
          "TEMPERATURE_CORRECTION_OUOM",
          "TEST_COMPANY",
          "TEST_DATE",
          "TEST_DURATION",
          "TEST_DURATION_OUOM",
          "TEST_HOLE_DIAMETER",
          "TEST_HOLE_DIAMETER_OUOM",
          "TEST_RESULT_CODE",
          "TEST_SUBTYPE",
          "TOOL_OPEN_TIME",
          "TOP_CHOKE_DESC",
          "TOP_DEPTH",
          "TOP_DEPTH_OUOM",
          "TOP_STRAT_UNIT_ID",
          "WATER_AMOUNT_PERCENT",
          "WATER_CUT_PERCENT",
          "WATER_FLOW_AMOUNT",
          "WATER_FLOW_AMOUNT_OUOM",
          "WATER_FLOW_AMOUNT_UOM",
          "WELLBORE_COMPLETION_TYPE",
          "Z_FACTOR",
          "ROW_CHANGED_BY",
          "ROW_CHANGED_DATE",
          "ROW_CREATED_BY",
          "ROW_CREATED_DATE",
          "ROW_QUALITY",
          -- IHS extensions
          "PROVINCE_STATE",
          "TOP_STRAT_AGE",
          "BASE_STRAT_AGE",
          "REPORTED_STRAT_AGE",
          "X_FILE_NAME",
          "X_P_MAX",
          "X_STRAT_UNIT_ID"
     FROM IHS_CDN_WELL_TEST
   UNION ALL
   SELECT "UWI",
          "SOURCE",
          "TEST_TYPE",
          "RUN_NUM",
          "TEST_NUM",
          "ACTIVE_IND",
          "BASE_DEPTH",
          "BASE_DEPTH_OUOM",
          "BASE_STRAT_UNIT_ID",
          "BHP_Z",
          "BOTTOM_CHOKE_DESC",
          "BSW_PERCENT",
          "CALIPER_HOLE_DIAMETER",
          "CALIPER_HOLE_DIAMETER_OUOM",
          "CASED_HOLE_IND",
          "CASING_PRESSURE",
          "CASING_PRESSURE_OUOM",
          "CHOKE_SIZE_DESC",
          "COMPLETION_OBS_NO",
          "COMPLETION_SOURCE",
          "CONDENSATE_AMOUNT_PERCENT",
          "CONDENSATE_FLOW_AMOUNT",
          "CONDENSATE_FLOW_AMOUNT_OUOM",
          "CONDENSATE_FLOW_AMOUNT_UOM",
          "CONDENSATE_GRAVITY",
          "CONDENSATE_RATIO",
          "CONDENSATE_RATIO_OUOM",
          "DAMAGE_QUALITY",
          "EFFECTIVE_DATE",
          "EVENT_OBS_NO",
          "EVENT_SOURCE",
          "EXPIRY_DATE",
          "FLOW_PRESSURE",
          "FLOW_PRESSURE_OUOM",
          "FLOW_TEMPERATURE",
          "FLOW_TEMPERATURE_OUOM",
          "GAS_FLOW_AMOUNT",
          "GAS_FLOW_AMOUNT_OUOM",
          "GAS_FLOW_AMOUNT_UOM",
          "GAS_GRAVITY",
          "GOR",
          "GOR_OUOM",
          "H2S_PERCENT",
          "HOLE_CONDITION",
          "MAX_CONDENS_FLOW_RATE",
          "MAX_CONDENS_FLOW_RATE_OUOM",
          "MAX_GAS_FLOW_RATE",
          "MAX_GAS_FLOW_RATE_OUOM",
          "MAX_HYDROSTATIC_PRESSURE",
          "MAX_HYDROSTATIC_PRESS_OUOM",
          "MAX_OIL_FLOW_RATE",
          "MAX_OIL_FLOW_RATE_OUOM",
          "MAX_WATER_FLOW_RATE",
          "MAX_WATER_FLOW_RATE_OUOM",
          "OIL_AMOUNT_PERCENT",
          "OIL_FLOW_AMOUNT",
          "OIL_FLOW_AMOUNT_OUOM",
          "OIL_FLOW_AMOUNT_UOM",
          "OIL_GRAVITY",
          "PERMEABILITY_QUALITY",
          "PPDM_GUID",
          "PRIMARY_FLUID_RECOVERED",
          "PRODUCTION_METHOD",
          "PROD_STRING_ID",
          "PROD_STR_FORM_OBS_NO",
          "RAT_HOLE_DIAMETER",
          "RAT_HOLE_DIAMETER_OUOM",
          "RAT_HOLE_LENGTH",
          "RAT_HOLE_LENGTH_OUOM",
          "REMARK",
          "REPORTED_STRAT_UNIT_ID",
          "REPORT_TEMPERATURE",
          "REPORT_TEMPERATURE_OUOM",
          "REPORT_TEST_NUM",
          "SHOW_TYPE",
          "SI_FLOW_RATIO",
          "START_TIME",
          "STATIC_PRESSURE",
          "STATIC_PRESSURE_OUOM",
          "STRAT_AGE",
          "STRAT_AGE_NAME_SET_ID",
          "STRAT_NAME_SET_ID",
          "STRING_SOURCE",
          "SULPHUR_IND",
          "TD",
          "TD_OUOM",
          "TEMPERATURE_CORRECTION",
          "TEMPERATURE_CORRECTION_IND",
          "TEMPERATURE_CORRECTION_OUOM",
          "TEST_COMPANY",
          "TEST_DATE",
          "TEST_DURATION",
          "TEST_DURATION_OUOM",
          "TEST_HOLE_DIAMETER",
          "TEST_HOLE_DIAMETER_OUOM",
          "TEST_RESULT_CODE",
          "TEST_SUBTYPE",
          "TOOL_OPEN_TIME",
          "TOP_CHOKE_DESC",
          "TOP_DEPTH",
          "TOP_DEPTH_OUOM",
          "TOP_STRAT_UNIT_ID",
          "WATER_AMOUNT_PERCENT",
          "WATER_CUT_PERCENT",
          "WATER_FLOW_AMOUNT",
          "WATER_FLOW_AMOUNT_OUOM",
          "WATER_FLOW_AMOUNT_UOM",
          "WELLBORE_COMPLETION_TYPE",
          "Z_FACTOR",
          "ROW_CHANGED_BY",
          "ROW_CHANGED_DATE",
          "ROW_CREATED_BY",
          "ROW_CREATED_DATE",
          "ROW_QUALITY",
          -- IHS extensions
          "PROVINCE_STATE",
          "TOP_STRAT_AGE",
          "BASE_STRAT_AGE",
          "REPORTED_STRAT_AGE",
          "X_FILE_NAME",
          "X_P_MAX",
          "X_STRAT_UNIT_ID"
     FROM IHS_US_WELL_TEST;


DROP SYNONYM DATA_FINDER.WELL_TEST;

CREATE OR REPLACE SYNONYM DATA_FINDER.WELL_TEST FOR PPDM.WELL_TEST;


DROP SYNONYM EDIOS_ADMIN.WELL_TEST;

CREATE OR REPLACE SYNONYM EDIOS_ADMIN.WELL_TEST FOR PPDM.WELL_TEST;


DROP SYNONYM PPDM.WT;

CREATE OR REPLACE SYNONYM PPDM.WT FOR PPDM.WELL_TEST;


GRANT SELECT ON PPDM.WELL_TEST TO PPDM_RO;
