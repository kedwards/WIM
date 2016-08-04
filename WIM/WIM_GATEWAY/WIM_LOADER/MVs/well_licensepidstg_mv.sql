DROP MATERIALIZED VIEW WELL_LICENSEPIDSTG_MV;
CREATE MATERIALIZED VIEW WELL_LICENSEPIDSTG_MV (UWI,LICENSE_ID,SOURCE,ACTIVE_IND,AGENT,APPLICATION_ID,AUTHORIZED_STRAT_UNIT_ID,BIDDING_ROUND_NUM,CONTRACTOR,DIRECTION_TO_LOC,DIRECTION_TO_LOC_OUOM,DISTANCE_REF_POINT,DISTANCE_TO_LOC,DISTANCE_TO_LOC_OUOM,DRILL_RIG_NUM,DRILL_SLOT_NO,DRILL_TOOL,EFFECTIVE_DATE,EXCEPTION_GRANTED,EXCEPTION_REQUESTED,EXPIRED_IND,EXPIRY_DATE,FEES_PAID_IND,LICENSEE,LICENSEE_CONTACT_ID,LICENSE_DATE,LICENSE_NUM,NO_OF_WELLS,OFFSHORE_COMPLETION_TYPE,PERMIT_REFERENCE_NUM,PERMIT_REISSUE_DATE,PERMIT_TYPE,PLATFORM_NAME,PPDM_GUID,PROJECTED_DEPTH,PROJECTED_DEPTH_OUOM,PROJECTED_STRAT_UNIT_ID,PROJECTED_TVD,PROJECTED_TVD_OUOM,PROPOSED_SPUD_DATE,PURPOSE,RATE_SCHEDULE_ID,REGULATION,REGULATORY_AGENCY,REGULATORY_CONTACT_ID,REMARK,RIG_CODE,RIG_SUBSTR_HEIGHT,RIG_SUBSTR_HEIGHT_OUOM,RIG_TYPE,SECTION_OF_REGULATION,STRAT_NAME_SET_ID,SURVEYOR,TARGET_OBJECTIVE_FLUID,ROW_CHANGED_BY,ROW_CHANGED_DATE,ROW_CREATED_BY,ROW_CREATED_DATE,IPL_WELL_OBJECTIVE,ROW_QUALITY)
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
/* Formatted on 30/09/2013 9:13:48 AM (QP5 v5.227.12220.39754) */
SELECT UWI,
       LICENSE_ID,
       SOURCE,
       ACTIVE_IND,
       AGENT,
       APPLICATION_ID,
       AUTHORIZED_STRAT_UNIT_ID,
       BIDDING_ROUND_NUM,
       CONTRACTOR,
       DIRECTION_TO_LOC,
       DIRECTION_TO_LOC_OUOM,
       DISTANCE_REF_POINT,
       DISTANCE_TO_LOC,
       DISTANCE_TO_LOC_OUOM,
       DRILL_RIG_NUM,
       DRILL_SLOT_NO,
       DRILL_TOOL,
       EFFECTIVE_DATE,
       EXCEPTION_GRANTED,
       EXCEPTION_REQUESTED,
       EXPIRED_IND,
       EXPIRY_DATE,
       FEES_PAID_IND,
       LICENSEE,
       LICENSEE_CONTACT_ID,
       LICENSE_DATE,
       LICENSE_NUM,
       NO_OF_WELLS,
       OFFSHORE_COMPLETION_TYPE,
       PERMIT_REFERENCE_NUM,
       PERMIT_REISSUE_DATE,
       PERMIT_TYPE,
       PLATFORM_NAME,
       PPDM_GUID,
       PROJECTED_DEPTH,
       PROJECTED_DEPTH_OUOM,
       PROJECTED_STRAT_UNIT_ID,
       PROJECTED_TVD,
       PROJECTED_TVD_OUOM,
       PROPOSED_SPUD_DATE,
       PURPOSE,
       RATE_SCHEDULE_ID,
       REGULATION,
       REGULATORY_AGENCY,
       REGULATORY_CONTACT_ID,
       REMARK,
       RIG_CODE,
       RIG_SUBSTR_HEIGHT,
       RIG_SUBSTR_HEIGHT_OUOM,
       RIG_TYPE,
       SECTION_OF_REGULATION,
       STRAT_NAME_SET_ID,
       SURVEYOR,
       TARGET_OBJECTIVE_FLUID,
       --IPL_PROJECTED_STRAT_AGE,
       --  IPL_ALT_SOURCE,
       --  IPL_XACTION_CODE,
       ROW_CHANGED_BY,
       ROW_CHANGED_DATE,
       ROW_CREATED_BY,
       ROW_CREATED_DATE,
       X_WELL_OBJECTIVE AS "IPL_WELL_OBJECTIVE",
       ROW_QUALITY
  FROM WELL_LICENSE@c_talisman_us;


COMMENT ON MATERIALIZED VIEW WELL_LICENSEPIDSTG_MV IS 'snapshot table for snapshot WIM_LOADER.WELL_LICENSEPIDSTG_MV';

CREATE UNIQUE INDEX WLIC_PK ON WELL_LICENSEPIDSTG_MV
(UWI, LICENSE_ID, SOURCE)
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

CREATE INDEX WLPID_UWI ON WELL_LICENSEPIDSTG_MV
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
