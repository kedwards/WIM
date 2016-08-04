DROP VIEW PPDM.IHS_US_STRAT_WELL_SECTION;

/* Formatted on 4/2/2013 10:49:12 AM (QP5 v5.185.11230.41888) */
CREATE OR REPLACE FORCE VIEW PPDM.IHS_US_STRAT_WELL_SECTION
(
   UWI,
   STRAT_NAME_SET_ID,
   STRAT_UNIT_ID,
   INTERP_ID,
   ACTIVE_IND,
   APPLICATION_NAME,
   AREA_ID,
   AREA_TYPE,
   CERTIFIED_IND,
   CONFORMITY_RELATIONSHIP,
   DOMINANT_LITHOLOGY,
   EFFECTIVE_DATE,
   EXPIRY_DATE,
   INTERPRETER,
   ORDINAL_SEQ_NO,
   OVERTURNED_IND,
   PICK_DATE,
   PICK_DEPTH,
   PICK_DEPTH_OUOM,
   PICK_LOCATION,
   PICK_QUALIFIER,
   PICK_QUALIF_REASON,
   PICK_QUALITY,
   PICK_TVD,
   PICK_VERSION_TYPE,
   PPDM_GUID,
   PREFERRED_PICK_IND,
   REMARK,
   REPEAT_STRAT_OCCUR_NO,
   REPEAT_STRAT_TYPE,
   SOURCE,
   SOURCE_DOCUMENT,
   STRAT_INTERPRET_METHOD,
   TVD_METHOD,
   VERSION_OBS_NO,
   X_BASE_STRAT_UNIT_ID,
   X_BASE_DEPTH,
   ROW_CHANGED_BY,
   ROW_CHANGED_DATE,
   ROW_CREATED_BY,
   ROW_CREATED_DATE,
   ROW_QUALITY,
   PROVINCE_STATE,
   X_STRAT_UNIT_ID_NUM
)
AS
   SELECT wv."UWI",
          sws."STRAT_NAME_SET_ID",
          sws."STRAT_UNIT_ID",
          sws."INTERP_ID",
          sws."ACTIVE_IND",
          sws."APPLICATION_NAME",
          sws."AREA_ID",
          sws."AREA_TYPE",
          sws."CERTIFIED_IND",
          sws."CONFORMITY_RELATIONSHIP",
          sws."DOMINANT_LITHOLOGY",
          sws."EFFECTIVE_DATE",
          sws."EXPIRY_DATE",
          sws."INTERPRETER",
          sws."ORDINAL_SEQ_NO",
          sws."OVERTURNED_IND",
          sws."PICK_DATE",
          sws.PICK_DEPTH*.3048,
          'FT' as "PICK_DEPTH_OUOM",
          sws."PICK_LOCATION",
          sws."PICK_QUALIFIER",
          sws."PICK_QUALIF_REASON",
          sws."PICK_QUALITY",
          sws.PICK_TVD*.3048,
          sws."PICK_VERSION_TYPE",
          sws."PPDM_GUID",
          sws."PREFERRED_PICK_IND",
          sws."REMARK",
          sws."REPEAT_STRAT_OCCUR_NO",
          sws."REPEAT_STRAT_TYPE",
          wv.source AS "SOURCE",
          sws."SOURCE_DOCUMENT",
          sws."STRAT_INTERPRET_METHOD",
          sws."TVD_METHOD",
          sws."VERSION_OBS_NO",
          sws."X_BASE_STRAT_UNIT_ID",
          sws.X_BASE_DEPTH*.3048,
          sws."ROW_CHANGED_BY",
          sws."ROW_CHANGED_DATE",
          sws."ROW_CREATED_BY",
          sws."ROW_CREATED_DATE",
          sws."ROW_QUALITY",
          sws."PROVINCE_STATE",
          sws."X_STRAT_UNIT_ID_NUM"
     FROM strat_well_section@c_talisman_us_ihsdataq sws, well_version wv
    WHERE     sws.uwi = wv.well_num
          AND wv.source = '450PID'
          AND wv.active_ind = 'Y';

GRANT SELECT ON PPDM.IHS_CDN_STRAT_WELL_SECTION TO PPDM_RO;