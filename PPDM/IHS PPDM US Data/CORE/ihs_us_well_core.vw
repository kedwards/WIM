DROP VIEW PPDM.IHS_US_WELL_CORE;

/* Formatted on 4/2/2013 9:10:29 AM (QP5 v5.185.11230.41888) */
CREATE OR REPLACE FORCE VIEW PPDM.IHS_US_WELL_CORE
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
   X_TOP_STRAT_UNIT_ID,
   X_BASE_STRAT_UNIT_ID,
   PROVINCE_STATE,
   TOP_STRAT_AGE,
   BASE_STRAT_AGE,
   PRIMARY_STRAT_AGE
)
AS
   SELECT /*+ COST */
         wv."UWI",
          wv."SOURCE",
          wc."CORE_ID",
          wc."ACTIVE_IND",
          wc."ANALYSIS_REPORT",
          wc.BASE_DEPTH*.3048 as "BASE_DEPTH",
          'FT' as "BASE_DEPTH_OUOM",
          wc."CONTRACTOR",
          wc."CORE_BARREL_SIZE",
          wc."CORE_BARREL_SIZE_OUOM",
          wc."CORE_DIAMETER",
          wc."CORE_DIAMETER_OUOM",
          wc."CORE_HANDLING_TYPE",
          wc."CORE_ORIENTED_IND",
          wc."CORE_SHOW_TYPE",
          wc."CORE_TYPE",
          wc."CORING_FLUID",
          wc."DIGIT_AVAIL_IND",
          wc."EFFECTIVE_DATE",
          wc."EXPIRY_DATE",
          wc."GAMMA_CORRELATION_IND",
          wc."OPERATION_SEQ_NO",
          wc."PPDM_GUID",
          wc."PRIMARY_CORE_STRAT_UNIT_ID",
          wc."RECOVERED_AMOUNT",
          wc."RECOVERED_AMOUNT_OUOM",
          wc."RECOVERED_AMOUNT_UOM",
          wc."RECOVERY_DATE",
          wc."REMARK",
          wc."REPORTED_CORE_NUM",
          wc."RUN_NUM",
          wc."SHOT_RECOVERED_COUNT",
          wc."SIDEWALL_IND",
          wc."STRAT_NAME_SET_ID",
          wc.TOP_DEPTH*.3048 as "TOP_DEPTH",          
          'FT' as "TOP_DEPTH_OUOM",
          wc."TOTAL_SHOT_COUNT",
          wc."ROW_CHANGED_BY",
          wc."ROW_CHANGED_DATE",
          wc."ROW_CREATED_BY",
          wc."ROW_CREATED_DATE",
          wc."ROW_QUALITY",
          wc."X_TOP_STRAT_UNIT_ID",
          wc."X_BASE_STRAT_UNIT_ID",
          wc."PROVINCE_STATE",
          wc."TOP_STRAT_AGE",
          wc."BASE_STRAT_AGE",
          wc."PRIMARY_STRAT_AGE"
     FROM well_core@C_TALISMAN_US_IHSDATAQ wc, well_version wv
    WHERE     wv.well_num = wc.uwi
          AND wv.SOURCE = '450PID'
          AND wv.active_ind = 'Y';


GRANT SELECT ON PPDM.IHS_US_WELL_CORE TO PPDM_RO;
