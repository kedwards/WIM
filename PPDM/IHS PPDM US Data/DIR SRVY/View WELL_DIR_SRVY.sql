DROP VIEW PPDM.WELL_DIR_SRVY;

/* Formatted on 11/7/2012 11:12:36 AM (QP5 v5.185.11230.41888) */
CREATE OR REPLACE FORCE VIEW PPDM.WELL_DIR_SRVY
(
   UWI,
   SURVEY_ID,
   SOURCE,
   ACTIVE_IND,
   AZIMUTH_NORTH_TYPE,
   BASE_DEPTH,
   BASE_DEPTH_OUOM,
   COMPUTE_METHOD,
   COORD_SYSTEM_ID,
   DIR_SURVEY_CLASS,
   EFFECTIVE_DATE,
   EW_DIRECTION,
   EXPIRY_DATE,
   MAGNETIC_DECLINATION,
   OFFSET_NORTH_TYPE,
   PLANE_OF_PROPOSAL,
   PPDM_GUID,
   RECORD_MODE,
   REMARK,
   REPORT_APD,
   REPORT_LOG_DATUM,
   REPORT_LOG_DATUM_ELEV,
   REPORT_LOG_DATUM_ELEV_OUOM,
   REPORT_PERM_DATUM,
   REPORT_PERM_DATUM_ELEV,
   REPORT_PERM_DATUM_ELEV_OUOM,
   SOURCE_DOCUMENT,
   SURVEY_COMPANY,
   SURVEY_DATE,
   SURVEY_NUMERIC_ID,
   SURVEY_QUALITY,
   SURVEY_TYPE,
   TOP_DEPTH,
   TOP_DEPTH_OUOM,
   ROW_CHANGED_BY,
   ROW_CHANGED_DATE,
   ROW_CREATED_BY,
   ROW_CREATED_DATE,
   ROW_QUALITY,
   PROVINCE_STATE,
   X_ORIG_DOCUMENT
)
AS
   SELECT "UWI",
          "SURVEY_ID",
          "SOURCE",
          "ACTIVE_IND",
          "AZIMUTH_NORTH_TYPE",
          "BASE_DEPTH",
          "BASE_DEPTH_OUOM",
          "COMPUTE_METHOD",
          "COORD_SYSTEM_ID",
          "DIR_SURVEY_CLASS",
          "EFFECTIVE_DATE",
          "EW_DIRECTION",
          "EXPIRY_DATE",
          "MAGNETIC_DECLINATION",
          "OFFSET_NORTH_TYPE",
          "PLANE_OF_PROPOSAL",
          "PPDM_GUID",
          "RECORD_MODE",
          "REMARK",
          "REPORT_APD",
          "REPORT_LOG_DATUM",
          "REPORT_LOG_DATUM_ELEV",
          "REPORT_LOG_DATUM_ELEV_OUOM",
          "REPORT_PERM_DATUM",
          "REPORT_PERM_DATUM_ELEV",
          "REPORT_PERM_DATUM_ELEV_OUOM",
          "SOURCE_DOCUMENT",
          "SURVEY_COMPANY",
          "SURVEY_DATE",
          "SURVEY_NUMERIC_ID",
          "SURVEY_QUALITY",
          "SURVEY_TYPE",
          "TOP_DEPTH",
          "TOP_DEPTH_OUOM",
          "ROW_CHANGED_BY",
          "ROW_CHANGED_DATE",
          "ROW_CREATED_BY",
          "ROW_CREATED_DATE",
          "ROW_QUALITY",
          "PROVINCE_STATE",
          "X_ORIG_DOCUMENT"
     FROM tlm_well_dir_srvy
   UNION ALL
   SELECT "UWI",
          "SURVEY_ID",
          "SOURCE",
          "ACTIVE_IND",
          "AZIMUTH_NORTH_TYPE",
          "BASE_DEPTH",
          "BASE_DEPTH_OUOM",
          "COMPUTE_METHOD",
          "COORD_SYSTEM_ID",
          "DIR_SURVEY_CLASS",
          "EFFECTIVE_DATE",
          "EW_DIRECTION",
          "EXPIRY_DATE",
          "MAGNETIC_DECLINATION",
          "OFFSET_NORTH_TYPE",
          "PLANE_OF_PROPOSAL",
          "PPDM_GUID",
          "RECORD_MODE",
          "REMARK",
          "REPORT_APD",
          "REPORT_LOG_DATUM",
          "REPORT_LOG_DATUM_ELEV",
          "REPORT_LOG_DATUM_ELEV_OUOM",
          "REPORT_PERM_DATUM",
          "REPORT_PERM_DATUM_ELEV",
          "REPORT_PERM_DATUM_ELEV_OUOM",
          "SOURCE_DOCUMENT",
          "SURVEY_COMPANY",
          "SURVEY_DATE",
          "SURVEY_NUMERIC_ID",
          "SURVEY_QUALITY",
          "SURVEY_TYPE",
          "TOP_DEPTH",
          "TOP_DEPTH_OUOM",
          "ROW_CHANGED_BY",
          "ROW_CHANGED_DATE",
          "ROW_CREATED_BY",
          "ROW_CREATED_DATE",
          "ROW_QUALITY",
          "PROVINCE_STATE",
          "X_ORIG_DOCUMENT"
     FROM IHS_CDN_WELL_DIR_SRVY
   UNION ALL
   SELECT "UWI",
          "SURVEY_ID",
          "SOURCE",
          "ACTIVE_IND",
          "AZIMUTH_NORTH_TYPE",
          "BASE_DEPTH",
          "BASE_DEPTH_OUOM",
          "COMPUTE_METHOD",
          "COORD_SYSTEM_ID",
          "DIR_SURVEY_CLASS",
          "EFFECTIVE_DATE",
          "EW_DIRECTION",
          "EXPIRY_DATE",
          "MAGNETIC_DECLINATION",
          "OFFSET_NORTH_TYPE",
          "PLANE_OF_PROPOSAL",
          "PPDM_GUID",
          "RECORD_MODE",
          "REMARK",
          "REPORT_APD",
          "REPORT_LOG_DATUM",
          "REPORT_LOG_DATUM_ELEV",
          "REPORT_LOG_DATUM_ELEV_OUOM",
          "REPORT_PERM_DATUM",
          "REPORT_PERM_DATUM_ELEV",
          "REPORT_PERM_DATUM_ELEV_OUOM",
          "SOURCE_DOCUMENT",
          "SURVEY_COMPANY",
          "SURVEY_DATE",
          "SURVEY_NUMERIC_ID",
          "SURVEY_QUALITY",
          "SURVEY_TYPE",
          "TOP_DEPTH",
          "TOP_DEPTH_OUOM",
          "ROW_CHANGED_BY",
          "ROW_CHANGED_DATE",
          "ROW_CREATED_BY",
          "ROW_CREATED_DATE",
          "ROW_QUALITY",
          "PROVINCE_STATE",
          ' ' as "X_ORIG_DOCUMENT" 
     FROM IHS_US_WELL_DIR_SRVY ;


DROP SYNONYM GEOWIZ.WELL_DIR_SRVY;

CREATE OR REPLACE SYNONYM GEOWIZ.WELL_DIR_SRVY FOR PPDM.WELL_DIR_SRVY;


DROP SYNONYM GEOWIZ_SURVEY.WELL_DIR_SRVY;

CREATE OR REPLACE SYNONYM GEOWIZ_SURVEY.WELL_DIR_SRVY FOR PPDM.WELL_DIR_SRVY;


DROP SYNONYM SDP.WELL_DIR_SRVY;

CREATE OR REPLACE SYNONYM SDP.WELL_DIR_SRVY FOR PPDM.WELL_DIR_SRVY;


DROP SYNONYM GEOWIZ_APPL.WELL_DIR_SRVY;

CREATE OR REPLACE SYNONYM GEOWIZ_APPL.WELL_DIR_SRVY FOR PPDM.WELL_DIR_SRVY;


DROP SYNONYM GEOFRAME_APPL.WELL_DIR_SRVY;

CREATE OR REPLACE SYNONYM GEOFRAME_APPL.WELL_DIR_SRVY FOR PPDM.WELL_DIR_SRVY;


DROP SYNONYM GEOWIZ_SURVEY_APPL.WELL_DIR_SRVY;

CREATE OR REPLACE SYNONYM GEOWIZ_SURVEY_APPL.WELL_DIR_SRVY FOR PPDM.WELL_DIR_SRVY;


DROP SYNONYM SPATIAL_APPL.WELL_DIR_SRVY;

CREATE OR REPLACE SYNONYM SPATIAL_APPL.WELL_DIR_SRVY FOR PPDM.WELL_DIR_SRVY;


DROP SYNONYM SDP_APPL.WELL_DIR_SRVY;

CREATE OR REPLACE SYNONYM SDP_APPL.WELL_DIR_SRVY FOR PPDM.WELL_DIR_SRVY;


DROP SYNONYM PPDM.WDS;

CREATE OR REPLACE SYNONYM PPDM.WDS FOR PPDM.WELL_DIR_SRVY;


DROP SYNONYM DATA_FINDER.WELL_DIR_SRVY;

CREATE OR REPLACE SYNONYM DATA_FINDER.WELL_DIR_SRVY FOR PPDM.WELL_DIR_SRVY;


GRANT SELECT ON PPDM.WELL_DIR_SRVY TO DIR_SRVY_RO;

GRANT DELETE, INSERT, SELECT, UPDATE ON PPDM.WELL_DIR_SRVY TO DIR_SRVY_RW;

GRANT SELECT ON PPDM.WELL_DIR_SRVY TO PPDM_RO;
