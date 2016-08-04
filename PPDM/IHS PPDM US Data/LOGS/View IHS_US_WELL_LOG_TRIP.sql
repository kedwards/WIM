DROP VIEW PPDM.IHS_US_WELL_LOG_TRIP;

/* Formatted on 11/7/2012 2:41:33 PM (QP5 v5.185.11230.41888) */
CREATE OR REPLACE FORCE VIEW PPDM.IHS_US_WELL_LOG_TRIP
(
   UWI  ,
  SOURCE,
  JOB_ID,
  TRIP_OBS_NO,
  ACTIVE_IND ,
  BASE_DEPTH,
  BASE_DEPTH_OUOM  ,
  BASE_STRAT_UNIT_ID,
  EFFECTIVE_DATE,
  EXPIRY_DATE   ,
  LOGGING_SERVICE_TYPE,
  MAX_DEPTH  ,
  MAX_DEPTH_OUOM ,
  MAX_TEMPERATURE,
  MAX_TEMPERATURE_OUOM ,
  MUD_SAMPLE_ID,
  MUD_SAMPLE_TYPE ,
  MUD_SOURCE ,
  OBSERVER,
  ON_BOTTOM_DATE,
  ON_BOTTOM_TIME,
  PPDM_GUID ,
  REMARK ,
  REPORTED_TVD,
  REPORTED_TVD_OUOM,
  REPORT_APD,
  REPORT_LOG_DATUM ,
  REPORT_LOG_DATUM_ELEV ,
  REPORT_LOG_DATUM_ELEV_OUOM,
  REPORT_LOG_RUN,
  REPORT_PERM_DATUM,
  REPORT_PERM_DATUM_ELEV,
  REPORT_PERM_DATUM_ELEV_OUOM,
  STRAT_NAME_SET_ID,
  TOP_DEPTH,
  TOP_DEPTH_OUOM,
  TOP_STRAT_UNIT_ID,
  TRIP_DATE,
  TUBING_BOTTOM_DEPTH,
  TUBING_BOTTOM_DEPTH_OUOM,
  ROW_CHANGED_BY,
  ROW_CHANGED_DATE,
  ROW_CREATED_BY,
  ROW_CREATED_DATE,
  ROW_QUALITY ,
  PROVINCE_STATE,
  TOP_STRAT_AGE ,
  BASE_STRAT_AGE
)
AS
   SELECT   WV.UWI  ,
  WV.SOURCE,
  wlt.JOB_ID,
  wlt.TRIP_OBS_NO,
  wlt.ACTIVE_IND ,
  wlt.BASE_DEPTH,
  wlt.BASE_DEPTH_OUOM  ,
  wlt.BASE_STRAT_UNIT_ID,
  wlt.EFFECTIVE_DATE,
  wlt.EXPIRY_DATE   ,
  wlt.LOGGING_SERVICE_TYPE,
  wlt.MAX_DEPTH  ,
  wlt.MAX_DEPTH_OUOM ,
  wlt.MAX_TEMPERATURE,
  wlt.MAX_TEMPERATURE_OUOM ,
  wlt.MUD_SAMPLE_ID,
  wlt.MUD_SAMPLE_TYPE ,
  wlt.MUD_SOURCE ,
  wlt.OBSERVER,
  wlt.ON_BOTTOM_DATE,
  wlt.ON_BOTTOM_TIME,
  wlt.PPDM_GUID ,
  wlt.REMARK ,
  wlt.REPORTED_TVD,
  wlt.REPORTED_TVD_OUOM,
  wlt.REPORT_APD,
  wlt.REPORT_LOG_DATUM ,
  wlt.REPORT_LOG_DATUM_ELEV ,
  wlt.REPORT_LOG_DATUM_ELEV_OUOM,
  wlt.REPORT_LOG_RUN,
  wlt.REPORT_PERM_DATUM,
  wlt.REPORT_PERM_DATUM_ELEV,
  wlt.REPORT_PERM_DATUM_ELEV_OUOM,
  wlt.STRAT_NAME_SET_ID,
  wlt.TOP_DEPTH,
  wlt.TOP_DEPTH_OUOM,
  wlt.TOP_STRAT_UNIT_ID,
  wlt.TRIP_DATE,
  wlt.TUBING_BOTTOM_DEPTH,
  wlt.TUBING_BOTTOM_DEPTH_OUOM,
  wlt.ROW_CHANGED_BY,
  wlt.ROW_CHANGED_DATE,
  wlt.ROW_CREATED_BY,
  wlt.ROW_CREATED_DATE,
  wlt.ROW_QUALITY ,
  wlt.PROVINCE_STATE,
  wlt.TOP_STRAT_AGE ,
  wlt.BASE_STRAT_AGE
     FROM well_log_trip@C_TALISMAN_US_IHSDATAQ wlt, well_version wv
    WHERE     wv.well_num = wlt.uwi
          AND wv.SOURCE = '450PID'
          AND wv.active_ind = 'Y';


GRANT SELECT ON PPDM.IHS_US_WELL_LOG_TRIP TO PPDM_RO;
