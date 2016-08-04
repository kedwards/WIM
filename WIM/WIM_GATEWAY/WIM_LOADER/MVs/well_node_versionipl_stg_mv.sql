DROP MATERIALIZED VIEW WELL_NODE_VERSIONIPL_STG_MV;
CREATE MATERIALIZED VIEW WELL_NODE_VERSIONIPL_STG_MV (NODE_ID,SOURCE,NODE_OBS_NO,ACQUISITION_ID,ACTIVE_IND,COUNTRY,COUNTY,EASTING,EASTING_OUOM,EFFECTIVE_DATE,ELEV,ELEV_OUOM,EW_DIRECTION,EXPIRY_DATE,GEOG_COORD_SYSTEM_ID,LATITUDE,LEGAL_SURVEY_TYPE,LOCATION_QUALIFIER,LOCATION_QUALITY,LONGITUDE,MAP_COORD_SYSTEM_ID,MD,MD_OUOM,MONUMENT_ID,MONUMENT_SF_TYPE,NODE_POSITION,NORTHING,NORTHING_OUOM,NORTH_TYPE,NS_DIRECTION,POLAR_AZIMUTH,POLAR_OFFSET,POLAR_OFFSET_OUOM,PPDM_GUID,PREFERRED_IND,PROVINCE_STATE,REMARK,REPORTED_TVD,REPORTED_TVD_OUOM,VERSION_TYPE,X_OFFSET,X_OFFSET_OUOM,Y_OFFSET,Y_OFFSET_OUOM,ROW_CHANGED_BY,ROW_CHANGED_DATE,ROW_CREATED_BY,ROW_CREATED_DATE,ROW_QUALITY,UWI,X_NODE_ZONE)
TABLESPACE APP_DATA
PCTUSED    0
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOCACHE
LOGGING
NOCOMPRESS
NOPARALLEL
BUILD IMMEDIATE
REFRESH FORCE ON DEMAND
WITH PRIMARY KEY
AS 
/* Formatted on 30/09/2013 9:13:49 AM (QP5 v5.227.12220.39754) */
SELECT *
  FROM ( (SELECT * FROM well_node_Version@c_talisman_ihsdata));


COMMENT ON MATERIALIZED VIEW WELL_NODE_VERSIONIPL_STG_MV IS 'snapshot table for snapshot WIM_LOADER.WELL_NODE_VERSIONIPL_STG_MV';

CREATE INDEX WNVIPL_UWI ON WELL_NODE_VERSIONIPL_STG_MV
(UWI)
LOGGING
TABLESPACE APP_DATA
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;
