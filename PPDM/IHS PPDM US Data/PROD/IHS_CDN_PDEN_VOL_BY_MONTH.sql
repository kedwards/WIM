select * from PPDM.IHS_CDN_PDEN_VOL_BY_MONTH;

DROP VIEW PPDM.IHS_CDN_PDEN_VOL_BY_MONTH;

/* Formatted on 4/2/2013 7:36:13 AM (QP5 v5.185.11230.41888) */
CREATE OR REPLACE FORCE VIEW PPDM.IHS_CDN_PDEN_VOL_BY_MONTH
(
   PDEN_ID,
   PDEN_TYPE,
   PDEN_SOURCE,
   VOLUME_METHOD,
   ACTIVITY_TYPE,
   PRODUCT_TYPE,
   YEAR,
   AMENDMENT_SEQ_NO,
   ACTIVE_IND,
   AMEND_REASON,
   APR_VOLUME,
   APR_VOLUME_QUAL,
   AUG_VOLUME,
   AUG_VOLUME_QUAL,
   CUM_VOLUME,
   DEC_VOLUME,
   DEC_VOLUME_QUAL,
   EFFECTIVE_DATE,
   EXPIRY_DATE,
   FEB_VOLUME,
   FEB_VOLUME_QUAL,
   JAN_VOLUME,
   JAN_VOLUME_QUAL,
   JUL_VOLUME,
   JUL_VOLUME_QUAL,
   JUN_VOLUME,
   JUN_VOLUME_QUAL,
   MAR_VOLUME,
   MAR_VOLUME_QUAL,
   MAY_VOLUME,
   MAY_VOLUME_QUAL,
   NOV_VOLUME,
   NOV_VOLUME_QUAL,
   OCT_VOLUME,
   OCT_VOLUME_QUAL,
   POSTED_DATE,
   PPDM_GUID,
   REMARK,
   SEP_VOLUME,
   SEP_VOLUME_QUAL,
   VOLUME_END_DATE,
   VOLUME_OUOM,
   VOLUME_QUALITY_OUOM,
   VOLUME_START_DATE,
   VOLUME_UOM,
   YTD_VOLUME,
   ROW_CHANGED_BY,
   ROW_CHANGED_DATE,
   ROW_CREATED_BY,
   ROW_CREATED_DATE,
   ROW_QUALITY,
   PROVINCE_STATE,
   POOL_ID,
   X_STRAT_UNIT_ID,
   TOP_STRAT_AGE,
   BASE_STRAT_AGE,
   STRAT_NAME_SET_ID
)
AS
   SELECT 
         wv.uwi AS "PDEN_ID",
          pvbm."PDEN_TYPE",
          wv.source AS "PDEN_SOURCE",
          pvbm."VOLUME_METHOD",
          pvbm."ACTIVITY_TYPE",
          pvbm."PRODUCT_TYPE",
          pvbm."YEAR",
          pvbm."AMENDMENT_SEQ_NO",
          pvbm."ACTIVE_IND",
          pvbm."AMEND_REASON",
          pvbm."APR_VOLUME",
          pvbm."APR_VOLUME_QUAL",
          pvbm."AUG_VOLUME",
          pvbm."AUG_VOLUME_QUAL",
          pvbm."CUM_VOLUME",
          pvbm."DEC_VOLUME",
          pvbm."DEC_VOLUME_QUAL",
          pvbm."EFFECTIVE_DATE",
          pvbm."EXPIRY_DATE",
          pvbm."FEB_VOLUME",
          pvbm."FEB_VOLUME_QUAL",
          pvbm."JAN_VOLUME",
          pvbm."JAN_VOLUME_QUAL",
          pvbm."JUL_VOLUME",
          pvbm."JUL_VOLUME_QUAL",
          pvbm."JUN_VOLUME",
          pvbm."JUN_VOLUME_QUAL",
          pvbm."MAR_VOLUME",
          pvbm."MAR_VOLUME_QUAL",
          pvbm."MAY_VOLUME",
          pvbm."MAY_VOLUME_QUAL",
          pvbm."NOV_VOLUME",
          pvbm."NOV_VOLUME_QUAL",
          pvbm."OCT_VOLUME",
          pvbm."OCT_VOLUME_QUAL",
          pvbm."POSTED_DATE",
          pvbm."PPDM_GUID",
          pvbm."REMARK",
          pvbm."SEP_VOLUME",
          pvbm."SEP_VOLUME_QUAL",
          pvbm."VOLUME_END_DATE",
          pvbm."VOLUME_OUOM",
          pvbm."VOLUME_QUALITY_OUOM",
          pvbm."VOLUME_START_DATE",
          pvbm."VOLUME_UOM",
          pvbm."YTD_VOLUME",
          pvbm."ROW_CHANGED_BY",
          pvbm."ROW_CHANGED_DATE",
          pvbm."ROW_CREATED_BY",
          pvbm."ROW_CREATED_DATE",
          pvbm."ROW_QUALITY",
          pvbm."PROVINCE_STATE",
          pvbm."POOL_ID",
          pvbm."X_STRAT_UNIT_ID",
          pvbm."TOP_STRAT_AGE",
          pvbm."BASE_STRAT_AGE",
          pvbm."STRAT_NAME_SET_ID"
     FROM PDEN_VOL_BY_MONTH@C_TALISMAN_IHSDATA PVBM, well_version wv
    WHERE     wv.ipl_uwi_local = pvbm.pden_id
          AND pvbm.pden_type = 'PDEN_WELL'
          AND wv.SOURCE = '300IPL'
          AND wv.active_ind = 'Y';


GRANT SELECT ON PPDM.IHS_CDN_PDEN_VOL_BY_MONTH TO PPDM_RO;