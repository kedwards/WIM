DROP VIEW PPDM.WELL_CORE;

/* Formatted on 4/2/2013 9:10:37 AM (QP5 v5.185.11230.41888) */
CREATE OR REPLACE FORCE VIEW PPDM.WELL_CORE
(
   UWI,
   SOURCE,
   CORE_ID,
   ACTIVE_IND,
   ANALYSIS_REPORT,
   BASE_DEPTH,
   BASE_DEPTH_OUOM,
   CONTRACTOR,
   CORE_BARREL_SIZE,
   CORE_BARREL_SIZE_OUOM,
   CORE_DIAMETER,
   CORE_DIAMETER_OUOM,
   CORE_HANDLING_TYPE,
   CORE_ORIENTED_IND,
   CORE_SHOW_TYPE,
   CORE_TYPE,
   CORING_FLUID,
   DIGIT_AVAIL_IND,
   EFFECTIVE_DATE,
   EXPIRY_DATE,
   GAMMA_CORRELATION_IND,
   OPERATION_SEQ_NO,
   PPDM_GUID,
   PRIMARY_CORE_STRAT_UNIT_ID,
   RECOVERED_AMOUNT,
   RECOVERED_AMOUNT_OUOM,
   RECOVERED_AMOUNT_UOM,
   RECOVERY_DATE,
   REMARK,
   REPORTED_CORE_NUM,
   RUN_NUM,
   SHOT_RECOVERED_COUNT,
   SIDEWALL_IND,
   STRAT_NAME_SET_ID,
   TOP_DEPTH,
   TOP_DEPTH_OUOM,
   TOTAL_SHOT_COUNT,
   ROW_CHANGED_BY,
   ROW_CHANGED_DATE,
   ROW_CREATED_BY,
   ROW_CREATED_DATE,
   ROW_QUALITY,
   PROVINCE_STATE,
   TOP_STRAT_AGE,
   BASE_STRAT_AGE,
   PRIMARY_STRAT_AGE,
   X_TOP_STRAT_UNIT_ID,
   X_BASE_STRAT_UNIT_ID
)
AS
   SELECT twc."UWI",
          twc."SOURCE",
          twc."CORE_ID",
          twc."ACTIVE_IND",
          twc."ANALYSIS_REPORT",
          twc."BASE_DEPTH",
          twc."BASE_DEPTH_OUOM",
          twc."CONTRACTOR",
          twc."CORE_BARREL_SIZE",
          twc."CORE_BARREL_SIZE_OUOM",
          twc."CORE_DIAMETER",
          twc."CORE_DIAMETER_OUOM",
          twc."CORE_HANDLING_TYPE",
          twc."CORE_ORIENTED_IND",
          twc."CORE_SHOW_TYPE",
          twc."CORE_TYPE",
          twc."CORING_FLUID",
          twc."DIGIT_AVAIL_IND",
          twc."EFFECTIVE_DATE",
          twc."EXPIRY_DATE",
          twc."GAMMA_CORRELATION_IND",
          twc."OPERATION_SEQ_NO",
          twc."PPDM_GUID",
          twc."PRIMARY_CORE_STRAT_UNIT_ID",
          twc."RECOVERED_AMOUNT",
          twc."RECOVERED_AMOUNT_OUOM",
          twc."RECOVERED_AMOUNT_UOM",
          twc."RECOVERY_DATE",
          twc."REMARK",
          twc."REPORTED_CORE_NUM",
          twc."RUN_NUM",
          twc."SHOT_RECOVERED_COUNT",
          twc."SIDEWALL_IND",
          twc."STRAT_NAME_SET_ID",
          twc."TOP_DEPTH",
          twc."TOP_DEPTH_OUOM",
          twc."TOTAL_SHOT_COUNT",
          twc."ROW_CHANGED_BY",
          twc."ROW_CHANGED_DATE",
          twc."ROW_CREATED_BY",
          twc."ROW_CREATED_DATE",
          twc."ROW_QUALITY",
          --  IHS extensions
          NULL AS "PROVINCE_STATE",
          NULL AS "TOP_STRAT_AGE",
          NULL AS "BASE_STRAT_AGE",
          NULL AS "PRIMARY_STRAT_AGE",
          NULL AS "X_TOP_STRAT_UNIT_ID",
          NULL AS "X_BASE_STRAT_UNIT_ID"
     FROM ppdm.tlm_well_core twc
   UNION ALL
   SELECT iwc."UWI",
          iwc."SOURCE",
          iwc."CORE_ID",
          iwc."ACTIVE_IND",
          iwc."ANALYSIS_REPORT",
          iwc."BASE_DEPTH",
          iwc."BASE_DEPTH_OUOM",
          iwc."CONTRACTOR",
          iwc."CORE_BARREL_SIZE",
          iwc."CORE_BARREL_SIZE_OUOM",
          iwc."CORE_DIAMETER",
          iwc."CORE_DIAMETER_OUOM",
          iwc."CORE_HANDLING_TYPE",
          iwc."CORE_ORIENTED_IND",
          iwc."CORE_SHOW_TYPE",
          iwc."CORE_TYPE",
          iwc."CORING_FLUID",
          iwc."DIGIT_AVAIL_IND",
          iwc."EFFECTIVE_DATE",
          iwc."EXPIRY_DATE",
          iwc."GAMMA_CORRELATION_IND",
          iwc."OPERATION_SEQ_NO",
          iwc."PPDM_GUID",
          iwc."PRIMARY_CORE_STRAT_UNIT_ID",
          iwc."RECOVERED_AMOUNT",
          iwc."RECOVERED_AMOUNT_OUOM",
          iwc."RECOVERED_AMOUNT_UOM",
          iwc."RECOVERY_DATE",
          iwc."REMARK",
          iwc."REPORTED_CORE_NUM",
          iwc."RUN_NUM",
          iwc."SHOT_RECOVERED_COUNT",
          iwc."SIDEWALL_IND",
          iwc."STRAT_NAME_SET_ID",
          iwc."TOP_DEPTH",
          iwc."TOP_DEPTH_OUOM",
          iwc."TOTAL_SHOT_COUNT",
          iwc."ROW_CHANGED_BY",
          iwc."ROW_CHANGED_DATE",
          iwc."ROW_CREATED_BY",
          iwc."ROW_CREATED_DATE",
          iwc."ROW_QUALITY",
          -- IHS Extensions
          iwc."PROVINCE_STATE",
          iwc."TOP_STRAT_AGE",
          iwc."BASE_STRAT_AGE",
          iwc."PRIMARY_STRAT_AGE",
          iwc."X_TOP_STRAT_UNIT_ID",
          iwc."X_BASE_STRAT_UNIT_ID"
     FROM ihs_cdn_well_core iwc
   UNION ALL
   SELECT iuwc."UWI",
          iuwc."SOURCE",
          iuwc."CORE_ID",
          iuwc."ACTIVE_IND",
          iuwc."ANALYSIS_REPORT",
          iuwc."BASE_DEPTH",
          iuwc."BASE_DEPTH_OUOM",
          iuwc."CONTRACTOR",
          iuwc."CORE_BARREL_SIZE",
          iuwc."CORE_BARREL_SIZE_OUOM",
          iuwc."CORE_DIAMETER",
          iuwc."CORE_DIAMETER_OUOM",
          iuwc."CORE_HANDLING_TYPE",
          iuwc."CORE_ORIENTED_IND",
          iuwc."CORE_SHOW_TYPE",
          iuwc."CORE_TYPE",
          iuwc."CORING_FLUID",
          iuwc."DIGIT_AVAIL_IND",
          iuwc."EFFECTIVE_DATE",
          iuwc."EXPIRY_DATE",
          iuwc."GAMMA_CORRELATION_IND",
          iuwc."OPERATION_SEQ_NO",
          iuwc."PPDM_GUID",
          iuwc."PRIMARY_CORE_STRAT_UNIT_ID",
          iuwc."RECOVERED_AMOUNT",
          iuwc."RECOVERED_AMOUNT_OUOM",
          iuwc."RECOVERED_AMOUNT_UOM",
          iuwc."RECOVERY_DATE",
          iuwc."REMARK",
          iuwc."REPORTED_CORE_NUM",
          iuwc."RUN_NUM",
          iuwc."SHOT_RECOVERED_COUNT",
          iuwc."SIDEWALL_IND",
          iuwc."STRAT_NAME_SET_ID",
          iuwc."TOP_DEPTH",
          iuwc."TOP_DEPTH_OUOM",
          iuwc."TOTAL_SHOT_COUNT",
          iuwc."ROW_CHANGED_BY",
          iuwc."ROW_CHANGED_DATE",
          iuwc."ROW_CREATED_BY",
          iuwc."ROW_CREATED_DATE",
          iuwc."ROW_QUALITY",
          -- IHS Extensions
          iuwc."PROVINCE_STATE",
          iuwc."TOP_STRAT_AGE",
          iuwc."BASE_STRAT_AGE",
          iuwc."PRIMARY_STRAT_AGE",
          iuwc."X_TOP_STRAT_UNIT_ID",
          iuwc."X_BASE_STRAT_UNIT_ID"
     FROM ihs_us_well_core iuwc;


DROP SYNONYM DATA_FINDER.WELL_CORE;
CREATE OR REPLACE SYNONYM DATA_FINDER.WELL_CORE FOR PPDM.WELL_CORE;


DROP SYNONYM EDIOS_ADMIN.WELL_CORE;
CREATE OR REPLACE SYNONYM EDIOS_ADMIN.WELL_CORE FOR PPDM.WELL_CORE;



GRANT SELECT ON PPDM.WELL_CORE TO PPDM_RO;
