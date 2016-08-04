DROP VIEW PPDM.IHS_US_WELL_DIR_SRVY_STATION;

/* Formatted on 11/6/2012 1:22:49 PM (QP5 v5.185.11230.41888) */
CREATE OR REPLACE FORCE VIEW PPDM.IHS_US_WELL_DIR_SRVY_STATION
(
   UWI,
   SURVEY_ID,
   SOURCE,
   DEPTH_OBS_NO,
   ACTIVE_IND,
   AZIMUTH,
   AZIMUTH_OUOM,
   DOG_LEG_SEVERITY,
   EFFECTIVE_DATE,
   EW_DIRECTION,
   EXPIRY_DATE,
   INCLINATION,
   INCLINATION_OUOM,
   LATITUDE,
   LONGITUDE,
   NS_DIRECTION,
   POINT_TYPE,
   PPDM_GUID,
   REMARK,
   STATION_ID,
   STATION_MD,
   STATION_MD_OUOM,
   STATION_TVD,
   STATION_TVD_OUOM,
   VERTICAL_SECTION,
   VERTICAL_SECTION_OUOM,
   X_OFFSET,
   X_OFFSET_OUOM,
   Y_OFFSET,
   Y_OFFSET_OUOM,
   ROW_CHANGED_BY,
   ROW_CHANGED_DATE,
   ROW_CREATED_BY,
   ROW_CREATED_DATE,
   ROW_QUALITY,
   GEOG_COORD_SYSTEM_ID,
   PROVINCE_STATE,
   LOCATION_QUALIFIER
)
AS
   SELECT 
            wv.uwi,
          ppdm_admin.tlm_util.prefix_zeros(wdss.survey_id),
          wv.SOURCE,
          wdss.depth_obs_no,
          wdss.active_ind,
          wdss.azimuth,
          wdss.azimuth_ouom,
          wdss.dog_leg_severity,
          wdss.effective_date,
          wdss.ew_direction,
          wdss.expiry_date,
          wdss.inclination,
          wdss.inclination_ouom,
          wdss.latitude,
          wdss.longitude,
          wdss.ns_direction,
          wdss.point_type,
          wdss.ppdm_guid,
          wdss.remark,
          wdss.station_id,
          wim.WIM_UTIL.UOM_CONVERSION('FT', 'M', wdss.station_md),
          wdss.station_md_ouom,
          wim.WIM_UTIL.UOM_CONVERSION('FT', 'M', wdss.station_tvd),
          wdss.station_tvd_ouom,
          wdss.vertical_section,
          wdss.vertical_section_ouom,
          wdss.x_offset,
          wdss.x_offset_ouom,
          wdss.y_offset,
          wdss.y_offset_ouom,
          wdss.row_changed_by,
          wdss.row_changed_date,
          wdss.row_created_by,
          wdss.row_created_date,
          wdss.row_quality,
          ppdm_admin.tlm_util.Get_coord_System_ID(wdss.geog_coord_system_id),
          wdss.province_state,
          wdss.location_qualifier
     FROM well_dir_srvy_station@C_TALISMAN_US_IHSDATAQ wdss, well_version wv
    WHERE     wv.well_num = wdss.uwi
          AND wv.SOURCE = '450PID'
          AND wv.active_ind = 'Y';

DROP SYNONYM SPATIAL.IHS_US_WELL_DIR_SRVY_STN;

CREATE OR REPLACE SYNONYM SPATIAL.IHS_US_WELL_DIR_SRVY_STN FOR PPDM.IHS_US_WELL_DIR_SRVY_STN;


DROP SYNONYM GEOFRAME_APPL.IHS_US_WELL_DIR_SRVY_STN;

CREATE OR REPLACE SYNONYM GEOFRAME_APPL.IHS_US_WELL_DIR_SRVY_STN FOR PPDM.IHS_US_WELL_DIR_SRVY_STN;


GRANT SELECT ON PPDM.IHS_US_WELL_DIR_SRVY_STATION TO PPDM_RO;

GRANT SELECT ON PPDM.IHS_US_WELL_DIR_SRVY_STATION TO WIM_RO;

GRANT SELECT ON PPDM.IHS_US_WELL_DIR_SRVY_STATION TO DIR_SRVY_RO;

GRANT SELECT ON PPDM.IHS_US_WELL_DIR_SRVY_STATION TO SPATIAL;

