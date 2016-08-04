DROP VIEW PPDM.IHS_US_WELL_TEST_ANALYSIS;

/* Formatted on 4/2/2013 11:40:27 AM (QP5 v5.185.11230.41888) */
CREATE OR REPLACE FORCE VIEW PPDM.IHS_US_WELL_TEST_ANALYSIS
(
   UWI,
   SOURCE,
   TEST_TYPE,
   RUN_NUM,
   TEST_NUM,
   PERIOD_TYPE,
   PERIOD_OBS_NO,
   ANALYSIS_OBS_NO,
   ACTIVE_IND,
   BSW,
   COMPLETION_OBS_NO,
   CONDENSATE_GRAVITY,
   CONDENSATE_RATIO,
   CONDENSATE_RATIO_OUOM,
   CONDENSATE_TEMPERATURE,
   CONDENSATE_TEMPERATURE_OUOM,
   EFFECTIVE_DATE,
   EXPIRY_DATE,
   FLUID_TYPE,
   GAS_CONTENT,
   GAS_GRAVITY,
   GOR,
   GOR_OUOM,
   GWR,
   GWR_OUOM,
   H2S_PERCENT,
   LGR,
   LGR_OUOM,
   OIL_DENSITY,
   OIL_DENSITY_OUOM,
   OIL_GRAVITY,
   OIL_TEMPERATURE,
   OIL_TEMPERATURE_OUOM,
   PPDM_GUID,
   REMARK,
   SALINITY_TYPE,
   SULPHUR_PERCENT,
   WATER_CUT,
   WATER_RESISTIVITY,
   WATER_RESISTIVITY_OUOM,
   WATER_SALINITY,
   WATER_SALINITY_OUOM,
   WATER_TEMPERATURE,
   WATER_TEMPERATURE_OUOM,
   WOR,
   ROW_CHANGED_BY,
   ROW_CHANGED_DATE,
   ROW_CREATED_BY,
   ROW_CREATED_DATE,
   ROW_QUALITY,
   PROVINCE_STATE
)
AS
   SELECT WV.UWI,
          WV.SOURCE,
          WTA.TEST_TYPE,
          WTA.RUN_NUM,
          WTA.TEST_NUM,
          WTA.PERIOD_TYPE,
          WTA.PERIOD_OBS_NO,
          WTA.ANALYSIS_OBS_NO,
          WTA.ACTIVE_IND,
          WTA.BSW,
          WTA.COMPLETION_OBS_NO,
          WTA.CONDENSATE_GRAVITY,
          WTA.CONDENSATE_RATIO,
          WTA.CONDENSATE_RATIO_OUOM,
          WTA.CONDENSATE_TEMPERATURE,
          WTA.CONDENSATE_TEMPERATURE_OUOM,
          WTA.EFFECTIVE_DATE,
          WTA.EXPIRY_DATE,
          WTA.FLUID_TYPE,
          WTA.GAS_CONTENT,
          WTA.GAS_GRAVITY,
          WTA.GOR,
          WTA.GOR_OUOM,
          WTA.GWR,
          WTA.GWR_OUOM,
          WTA.H2S_PERCENT,
          WTA.LGR,
          WTA.LGR_OUOM,
          WTA.OIL_DENSITY,
          WTA.OIL_DENSITY_OUOM,
          WTA.OIL_GRAVITY,
          WTA.OIL_TEMPERATURE,
          WTA.OIL_TEMPERATURE_OUOM,
          WTA.PPDM_GUID,
          WTA.REMARK,
          WTA.SALINITY_TYPE,
          WTA.SULPHUR_PERCENT,
          WTA.WATER_CUT,
          WTA.WATER_RESISTIVITY,
          WTA.WATER_RESISTIVITY_OUOM,
          WTA.WATER_SALINITY,
          WTA.WATER_SALINITY_OUOM,
          WTA.WATER_TEMPERATURE,
          WTA.WATER_TEMPERATURE_OUOM,
          WTA.WOR,
          WTA.ROW_CHANGED_BY,
          WTA.ROW_CHANGED_DATE,
          WTA.ROW_CREATED_BY,
          WTA.ROW_CREATED_DATE,
          WTA.ROW_QUALITY,
          WTA.PROVINCE_STATE
     FROM well_test_analysis@C_TALISMAN_US_IHSDATAQ wta, well_version wv
    WHERE     wv.well_num = wta.uwi
          AND wv.SOURCE = '450PID'
          AND wv.active_ind = 'Y';


GRANT SELECT ON PPDM.IHS_US_WELL_TEST_ANALYSIS TO PPDM_RO;