DROP VIEW PPDM.IHS_US_WELL_TEST;

/* Formatted on 4/2/2013 11:40:26 AM (QP5 v5.185.11230.41888) */
CREATE OR REPLACE FORCE VIEW PPDM.IHS_US_WELL_TEST
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
   SELECT WV.UWI,
          WV.SOURCE,
          WT.TEST_TYPE,
          WT.RUN_NUM,
          WT.TEST_NUM,
          WT.ACTIVE_IND,
          WT.BASE_DEPTH*.3048,
          'FT' as "BASE_DEPTH_OUOM",
          WT.BASE_STRAT_UNIT_ID,
          WT.BHP_Z,
          WT.BOTTOM_CHOKE_DESC,
          WT.BSW_PERCENT,
          WT.CALIPER_HOLE_DIAMETER,
          WT.CALIPER_HOLE_DIAMETER_OUOM,
          WT.CASED_HOLE_IND,
          WT.CASING_PRESSURE,
          WT.CASING_PRESSURE_OUOM,
          WT.CHOKE_SIZE_DESC,
          WT.COMPLETION_OBS_NO,
          WT.COMPLETION_SOURCE,
          WT.CONDENSATE_AMOUNT_PERCENT,
          WT.CONDENSATE_FLOW_AMOUNT,
          WT.CONDENSATE_FLOW_AMOUNT_OUOM,
          WT.CONDENSATE_FLOW_AMOUNT_UOM,
          WT.CONDENSATE_GRAVITY,
          WT.CONDENSATE_RATIO,
          WT.CONDENSATE_RATIO_OUOM,
          WT.DAMAGE_QUALITY,
          WT.EFFECTIVE_DATE,
          WT.EVENT_OBS_NO,
          WT.EVENT_SOURCE,
          WT.EXPIRY_DATE,
          WT.FLOW_PRESSURE,
          WT.FLOW_PRESSURE_OUOM,
          WT.FLOW_TEMPERATURE,
          WT.FLOW_TEMPERATURE_OUOM,
          WT.GAS_FLOW_AMOUNT,
          WT.GAS_FLOW_AMOUNT_OUOM,
          WT.GAS_FLOW_AMOUNT_UOM,
          WT.GAS_GRAVITY,
          WT.GOR,
          WT.GOR_OUOM,
          WT.H2S_PERCENT,
          WT.HOLE_CONDITION,
          WT.MAX_CONDENS_FLOW_RATE,
          WT.MAX_CONDENS_FLOW_RATE_OUOM,
          WT.MAX_GAS_FLOW_RATE,
          WT.MAX_GAS_FLOW_RATE_OUOM,
          WT.MAX_HYDROSTATIC_PRESSURE,
          WT.MAX_HYDROSTATIC_PRESS_OUOM,
          WT.MAX_OIL_FLOW_RATE,
          WT.MAX_OIL_FLOW_RATE_OUOM,
          WT.MAX_WATER_FLOW_RATE,
          WT.MAX_WATER_FLOW_RATE_OUOM,
          WT.OIL_AMOUNT_PERCENT,
          WT.OIL_FLOW_AMOUNT,
          WT.OIL_FLOW_AMOUNT_OUOM,
          WT.OIL_FLOW_AMOUNT_UOM,
          WT.OIL_GRAVITY,
          WT.PERMEABILITY_QUALITY,
          WT.PPDM_GUID,
          WT.PRIMARY_FLUID_RECOVERED,
          WT.PRODUCTION_METHOD,
          WT.PROD_STRING_ID,
          WT.PROD_STR_FORM_OBS_NO,
          WT.RAT_HOLE_DIAMETER,
          WT.RAT_HOLE_DIAMETER_OUOM,
          WT.RAT_HOLE_LENGTH,
          WT.RAT_HOLE_LENGTH_OUOM,
          WT.REMARK,
          WT.REPORTED_STRAT_UNIT_ID,
          WT.REPORT_TEMPERATURE,
          WT.REPORT_TEMPERATURE_OUOM,
          WT.REPORT_TEST_NUM,
          WT.SHOW_TYPE,
          WT.SI_FLOW_RATIO,
          WT.START_TIME,
          WT.STATIC_PRESSURE,
          WT.STATIC_PRESSURE_OUOM,
          WT.STRAT_AGE,
          WT.STRAT_AGE_NAME_SET_ID,
          WT.STRAT_NAME_SET_ID,
          WT.STRING_SOURCE,
          WT.SULPHUR_IND,
          WT.TD*.3048,
          'FT' AS "TD_OUOM",
          WT.TEMPERATURE_CORRECTION,
          WT.TEMPERATURE_CORRECTION_IND,
          WT.TEMPERATURE_CORRECTION_OUOM,
          WT.TEST_COMPANY,
          WT.TEST_DATE,
          WT.TEST_DURATION,
          TEST_DURATION_OUOM,
          WT.TEST_HOLE_DIAMETER,
          WT.TEST_HOLE_DIAMETER_OUOM,
          WT.TEST_RESULT_CODE,
          WT.TEST_SUBTYPE,
          WT.TOOL_OPEN_TIME,
          WT.TOP_CHOKE_DESC,
          WT.TOP_DEPTH*.3048,
          'FT' AS "TOP_DEPTH_OUOM",
          WT.TOP_STRAT_UNIT_ID,
          WT.WATER_AMOUNT_PERCENT,
          WT.WATER_CUT_PERCENT,
          WT.WATER_FLOW_AMOUNT,
          WT.WATER_FLOW_AMOUNT_OUOM,
          WT.WATER_FLOW_AMOUNT_UOM,
          WT.WELLBORE_COMPLETION_TYPE,
          WT.Z_FACTOR,
          WT.ROW_CHANGED_BY,
          WT.ROW_CHANGED_DATE,
          WT.ROW_CREATED_BY,
          WT.ROW_CREATED_DATE,
          WT.ROW_QUALITY,
          WT.PROVINCE_STATE,
          WT.TOP_STRAT_AGE,
          WT.BASE_STRAT_AGE,
          WT.REPORTED_STRAT_AGE,
          WT.X_FILE_NAME,
          WT.X_P_MAX,
          WT.X_STRAT_UNIT_ID
     FROM well_test@C_TALISMAN_US_IHSDATAQ wt, well_version wv
    WHERE     wv.well_num = wt.uwi
          AND wv.SOURCE = '450PID'
          AND wv.active_ind = 'Y';


GRANT SELECT ON PPDM.IHS_US_WELL_TEST TO PPDM_RO;