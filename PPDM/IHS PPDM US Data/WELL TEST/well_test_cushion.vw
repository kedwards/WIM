DROP VIEW PPDM.WELL_TEST_CUSHION;

/* Formatted on 4/2/2013 11:41:00 AM (QP5 v5.185.11230.41888) */
CREATE OR REPLACE FORCE VIEW PPDM.WELL_TEST_CUSHION
(
   UWI,
   SOURCE,
   TEST_TYPE,
   RUN_NUM,
   TEST_NUM,
   CUSHION_OBS_NO,
   ACTIVE_IND,
   CUSHION_GAS_PRESSURE,
   CUSHION_GAS_PRESSURE_OUOM,
   CUSHION_INHIBITOR_VOLUME,
   CUSHION_INHIBITOR_VOL_OUOM,
   CUSHION_LENGTH,
   CUSHION_LENGTH_OUOM,
   CUSHION_TYPE,
   CUSHION_VOLUME,
   CUSHION_VOLUME_OUOM,
   EFFECTIVE_DATE,
   EXPIRY_DATE,
   PPDM_GUID,
   REMARK,
   ROW_CHANGED_BY,
   ROW_CHANGED_DATE,
   ROW_CREATED_BY,
   ROW_CREATED_DATE,
   ROW_QUALITY,
   PROVINCE_STATE
)
AS
   SELECT UWI,
          SOURCE,
          TEST_TYPE,
          RUN_NUM,
          TEST_NUM,
          CUSHION_OBS_NO,
          ACTIVE_IND,
          CUSHION_GAS_PRESSURE,
          CUSHION_GAS_PRESSURE_OUOM,
          CUSHION_INHIBITOR_VOLUME,
          CUSHION_INHIBITOR_VOL_OUOM,
          CUSHION_LENGTH,
          CUSHION_LENGTH_OUOM,
          CUSHION_TYPE,
          CUSHION_VOLUME,
          CUSHION_VOLUME_OUOM,
          EFFECTIVE_DATE,
          EXPIRY_DATE,
          PPDM_GUID,
          REMARK,
          ROW_CHANGED_BY,
          ROW_CHANGED_DATE,
          ROW_CREATED_BY,
          ROW_CREATED_DATE,
          ROW_QUALITY,
          -- IHS EXTENSIONS
          NULL AS PROVINCE_STATE
     FROM tlm_well_TEST_CUSHION
   UNION ALL
   SELECT UWI,
          SOURCE,
          TEST_TYPE,
          RUN_NUM,
          TEST_NUM,
          CUSHION_OBS_NO,
          ACTIVE_IND,
          CUSHION_GAS_PRESSURE,
          CUSHION_GAS_PRESSURE_OUOM,
          CUSHION_INHIBITOR_VOLUME,
          CUSHION_INHIBITOR_VOL_OUOM,
          CUSHION_LENGTH,
          CUSHION_LENGTH_OUOM,
          CUSHION_TYPE,
          CUSHION_VOLUME,
          CUSHION_VOLUME_OUOM,
          EFFECTIVE_DATE,
          EXPIRY_DATE,
          PPDM_GUID,
          REMARK,
          ROW_CHANGED_BY,
          ROW_CHANGED_DATE,
          ROW_CREATED_BY,
          ROW_CREATED_DATE,
          ROW_QUALITY,
          -- IHS EXTENSIONS
          PROVINCE_STATE
     FROM IHS_CDN_WELL_TEST_CUSHION
   UNION ALL
   SELECT UWI,
          SOURCE,
          TEST_TYPE,
          RUN_NUM,
          TEST_NUM,
          CUSHION_OBS_NO,
          ACTIVE_IND,
          CUSHION_GAS_PRESSURE,
          CUSHION_GAS_PRESSURE_OUOM,
          CUSHION_INHIBITOR_VOLUME,
          CUSHION_INHIBITOR_VOL_OUOM,
          CUSHION_LENGTH,
          CUSHION_LENGTH_OUOM,
          CUSHION_TYPE,
          CUSHION_VOLUME,
          CUSHION_VOLUME_OUOM,
          EFFECTIVE_DATE,
          EXPIRY_DATE,
          PPDM_GUID,
          REMARK,
          ROW_CHANGED_BY,
          ROW_CHANGED_DATE,
          ROW_CREATED_BY,
          ROW_CREATED_DATE,
          ROW_QUALITY,
          -- IHS EXTENSIONS
          PROVINCE_STATE
     FROM IHS_US_WELL_TEST_CUSHION;


DROP SYNONYM DATA_FINDER.WELL_TEST_CUSHION;

CREATE OR REPLACE SYNONYM DATA_FINDER.WELL_TEST_CUSHION FOR PPDM.WELL_TEST_CUSHION;


DROP SYNONYM EDIOS_ADMIN.WELL_TEST_CUSHION;

CREATE OR REPLACE SYNONYM EDIOS_ADMIN.WELL_TEST_CUSHION FOR PPDM.WELL_TEST_CUSHION;


DROP SYNONYM PPDM.WTCU;

CREATE OR REPLACE SYNONYM PPDM.WTCU FOR PPDM.WELL_TEST_CUSHION;


GRANT SELECT ON PPDM.WELL_TEST_CUSHION TO PPDM_RO;
