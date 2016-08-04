---Load Sequential 300IPL OBSOLETE Wells in Temp Tables

----Run in PETP to create comparing Load(Test36) to Control(Talisman37) Schemas
---Append new wells prior to each load to Temp tables for Well_Version, Well_Alias, Well_License, Well_Status,
-------and Well_Node_Version - tracked by load rundate column
---Created:  Oct 21, 2009
---Author:  F. Baird
---Reviewer:
---Run Date:Oct 30, 2009
---
---**********---**********---**********---**********---**********---***********

---Well_Version Temp Table

insert into TEMP_WV_300IPL_DELETED 
select 
UWI,SOURCE,ABANDONMENT_DATE,ACTIVE_IND,ASSIGNED_FIELD,BASE_NODE_ID,BOTTOM_HOLE_LATITUDE,
BOTTOM_HOLE_LONGITUDE,CASING_FLANGE_ELEV,CASING_FLANGE_ELEV_OUOM,COMPLETION_DATE,
CONFIDENTIAL_DATE,CONFIDENTIAL_DEPTH,CONFIDENTIAL_DEPTH_OUOM,CONFIDENTIAL_TYPE,CONFID_STRAT_NAME_SET_ID,CONFID_STRAT_UNIT_ID,
COUNTRY,COUNTY,CURRENT_CLASS,CURRENT_STATUS,CURRENT_STATUS_DATE,DEEPEST_DEPTH,DEEPEST_DEPTH_OUOM,DEPTH_DATUM,DEPTH_DATUM_ELEV,
DEPTH_DATUM_ELEV_OUOM,DERRICK_FLOOR_ELEV,DERRICK_FLOOR_ELEV_OUOM,DIFFERENCE_LAT_MSL,DISCOVERY_IND,DISTRICT,DRILL_TD,
DRILL_TD_OUOM,EFFECTIVE_DATE,ELEV_REF_DATUM,EXPIRY_DATE,FAULTED_IND,FINAL_DRILL_DATE,FINAL_TD,FINAL_TD_OUOM,GEOGRAPHIC_REGION,
GEOLOGIC_PROVINCE,GROUND_ELEV,GROUND_ELEV_OUOM,GROUND_ELEV_TYPE,INITIAL_CLASS,KB_ELEV,KB_ELEV_OUOM,LEASE_NAME,LEASE_NUM,
LEGAL_SURVEY_TYPE,LOCATION_TYPE,LOG_TD,LOG_TD_OUOM,MAX_TVD,MAX_TVD_OUOM,NET_PAY,NET_PAY_OUOM,OLDEST_STRAT_AGE,
OLDEST_STRAT_NAME_SET_AGE,OLDEST_STRAT_NAME_SET_ID,OLDEST_STRAT_UNIT_ID,OPERATOR,PARENT_RELATIONSHIP_TYPE,PARENT_UWI,
PLATFORM_ID,PLATFORM_SF_TYPE,PLOT_NAME,PLOT_SYMBOL,PLUGBACK_DEPTH,PLUGBACK_DEPTH_OUOM,PPDM_GUID,PROFILE_TYPE,PROVINCE_STATE,
REGULATORY_AGENCY,REMARK,RIG_ON_SITE_DATE,RIG_RELEASE_DATE,ROTARY_TABLE_ELEV,SOURCE_DOCUMENT,SPUD_DATE,STATUS_TYPE,
SUBSEA_ELEV_REF_TYPE,SURFACE_LATITUDE,SURFACE_LONGITUDE,SURFACE_NODE_ID,TAX_CREDIT_CODE,TD_STRAT_AGE,TD_STRAT_NAME_SET_AGE,
TD_STRAT_NAME_SET_ID,TD_STRAT_UNIT_ID,WATER_ACOUSTIC_VEL,WATER_ACOUSTIC_VEL_OUOM,WATER_DEPTH,WATER_DEPTH_DATUM,WATER_DEPTH_OUOM,
WELL_EVENT_NUM,WELL_GOVERNMENT_ID,WELL_INTERSECT_MD,WELL_NAME,WELL_NUM,WELL_NUMERIC_ID,WHIPSTOCK_DEPTH,WHIPSTOCK_DEPTH_OUOM,
IPL_LICENSEE,IPL_OFFSHORE_IND,IPL_PIDSTATUS,IPL_PRSTATUS,IPL_ORSTATUS,IPL_ONPROD_DATE,IPL_ONINJECT_DATE,IPL_CONFIDENTIAL_STRAT_AGE,
IPL_POOL,IPL_LAST_UPDATE,IPL_UWI_SORT,IPL_UWI_DISPLAY,IPL_TD_TVD,IPL_PLUGBACK_TVD,IPL_WHIPSTOCK_TVD,IPL_WATER_TVD,IPL_ALT_SOURCE,
IPL_XACTION_CODE,ROW_CHANGED_BY,ROW_CHANGED_DATE,ROW_CREATED_BY,ROW_CREATED_DATE,IPL_BASIN,IPL_BLOCK,IPL_AREA,IPL_TWP,
IPL_TRACT,IPL_LOT,IPL_CONC,IPL_UWI_LOCAL,ROW_QUALITY,sysdate, 'Z' as INVENTORY, 'Z' as REASON
from well_version
where uwi in (select uwi from well_version where source in ('300IPL','450PID')
minus
select uwi from test36.well_version where source in ('300IPL','450PID'));

select count(1) from TEMP_WV_300IPL_DELETED;


----Well_Alias Temp Table
insert into TEMP_WA_300IPL_DELETED
select UWI,SOURCE,WELL_ALIAS_ID,ACTIVE_IND,ALIAS_OWNER_BA_ID,ALIAS_TYPE,
APPLICATION_ID,EFFECTIVE_DATE,EXPIRY_DATE,LOCATION_TYPE,PPDM_GUID,PREFERRED_IND,
REASON_TYPE,REMARK,WELL_ALIAS,IPL_ALT_SOURCE,IPL_XACTION_CODE,ROW_CHANGED_BY,
ROW_CHANGED_DATE,ROW_CREATED_BY,ROW_CREATED_DATE,ROW_QUALITY,sysdate,
'Z' as INVENTORY, 'Z' as REASON 
from well_alias 
where uwi in (select uwi from well_version where source in ('300IPL','450PID')
minus
select uwi from test36.well_version where source in ('300IPL','450PID'));

----Well_Node_Version Temp Table
insert into TEMP_WNV_300IPL_DELETED 
select NODE_ID,SOURCE,NODE_OBS_NO,ACQUISITION_ID,ACTIVE_IND,COUNTRY,COUNTY,
EASTING,EASTING_OUOM,EFFECTIVE_DATE,ELEV,ELEV_OUOM,EW_DIRECTION,EXPIRY_DATE,
GEOG_COORD_SYSTEM_ID,LATITUDE,LEGAL_SURVEY_TYPE,LOCATION_QUALIFIER,
LOCATION_QUALITY,LONGITUDE,MAP_COORD_SYSTEM_ID,MD,MD_OUOM,MONUMENT_ID,
MONUMENT_SF_TYPE,NODE_POSITION,NORTHING,NORTHING_OUOM,NORTH_TYPE,NS_DIRECTION,
POLAR_AZIMUTH,POLAR_OFFSET,POLAR_OFFSET_OUOM,PPDM_GUID,PREFERRED_IND,
PROVINCE_STATE,REMARK,REPORTED_TVD,REPORTED_TVD_OUOM,VERSION_TYPE,X_OFFSET,
X_OFFSET_OUOM,Y_OFFSET,Y_OFFSET_OUOM,IPL_XACTION_CODE,ROW_CHANGED_BY,
ROW_CHANGED_DATE,ROW_CREATED_BY,ROW_CREATED_DATE,IPL_UWI,ROW_QUALITY,
IPL_UWI_LOCAL,sysdate,'Z' as INVENTORY, 'Z' as REASON
from well_node_version
where node_id in (select surface_node_id from TEMP_WV_300IPL_DELETED
where rundate > to_date ('14-JAN-2010', 'DD-MON-YYYY')
union
select base_node_id from TEMP_WV_300IPL_DELETED
where rundate > to_date ('14-JAN-2010', 'DD-MON-YYYY'));

select count(1) from TEMP_WV_300IPL_DELETED where rundate > to_date ('14-JAN-2010', 'DD-MON-YYYY');

---Well_License Temp Table 
insert into TEMP_WL_300IPL_DELETED 
select UWI,LICENSE_ID,SOURCE,ACTIVE_IND,AGENT,APPLICATION_ID,AUTHORIZED_STRAT_UNIT_ID,
BIDDING_ROUND_NUM,CONTRACTOR,DIRECTION_TO_LOC,DIRECTION_TO_LOC_OUOM,DISTANCE_REF_POINT,
DISTANCE_TO_LOC,DISTANCE_TO_LOC_OUOM,DRILL_RIG_NUM,DRILL_SLOT_NO,DRILL_TOOL,
EFFECTIVE_DATE,EXCEPTION_GRANTED,EXCEPTION_REQUESTED,EXPIRED_IND,EXPIRY_DATE,
FEES_PAID_IND,LICENSEE,LICENSEE_CONTACT_ID,LICENSE_DATE,LICENSE_NUM,NO_OF_WELLS,
OFFSHORE_COMPLETION_TYPE,PERMIT_REFERENCE_NUM,PERMIT_REISSUE_DATE,PERMIT_TYPE,
PLATFORM_NAME,PPDM_GUID,PROJECTED_DEPTH,PROJECTED_DEPTH_OUOM,
PROJECTED_STRAT_UNIT_ID,PROJECTED_TVD,PROJECTED_TVD_OUOM,PROPOSED_SPUD_DATE,
PURPOSE,RATE_SCHEDULE_ID,REGULATION,REGULATORY_AGENCY,REGULATORY_CONTACT_ID,
REMARK,RIG_CODE,RIG_SUBSTR_HEIGHT,RIG_SUBSTR_HEIGHT_OUOM,RIG_TYPE,
SECTION_OF_REGULATION,STRAT_NAME_SET_ID,SURVEYOR,TARGET_OBJECTIVE_FLUID,
IPL_PROJECTED_STRAT_AGE,IPL_ALT_SOURCE,IPL_XACTION_CODE,ROW_CHANGED_BY,
ROW_CHANGED_DATE,ROW_CREATED_BY,ROW_CREATED_DATE,IPL_WELL_OBJECTIVE,
ROW_QUALITY,IPL_UWI_LOCAL,sysdate, 'Z' as INVENTORY, 'Z' as REASON
from well_License
where uwi in (select uwi from well_version where source in ('300IPL','450PID')
minus
select uwi from test36.well_version where source in ('300IPL','450PID'));

--Well_Status Temp Table 
insert into TEMP_WS_300IPL_DELETED 
select UWI,SOURCE,STATUS_ID,ACTIVE_IND,EFFECTIVE_DATE,EXPIRY_DATE,PPDM_GUID,
REMARK,STATUS,STATUS_DATE,STATUS_DEPTH,STATUS_DEPTH_OUOM,IPL_XACTION_CODE,
STATUS_TYPE,ROW_CHANGED_BY,ROW_CHANGED_DATE,ROW_CREATED_BY,ROW_CREATED_DATE,
ROW_QUALITY,IPL_UWI_LOCAL,sysdate, 'Z' as INVENTORY, 'Z' as REASON
from well_Status
where uwi in (select uwi from well_version where source in ('300IPL','450PID')
minus
select uwi from test36.well_version where source in ('300IPL','450PID'));

---Check Inventory for these deleted wells
---Run in PETP as XXXXXX
select WI.*
  from DATA_ACCESS_COAT_CHECK.WELL_INVENTORY WI
 where wi.uwi in (select well_alias
          from TEMP_WA_300IPL_DELETED@TLM37.world
         where alias_type in ('UWI_PRIOR','UWI'));
---14 (12 with inventory?) results Oct 30 2009
         
Select * from TEMP_WV_300IPL_DELETED@tlm37.world twv, 
DATA_ACCESS_COAT_CHECK.WELL_INVENTORY WI
where wi.uwi = twv.uwi 
and twv.inventory='Z'; 
---Nov 13 4 with inventory:  50000164210,50000263982,50000268717,50281524000

select * from DATA_ACCESS_COAT_CHECK.WELL_INVENTORY 
where uwi in ('50000189414','50000078939');


select uwi, ipl_uwi_local from well_version where well_num='B0244252';
---50000258493 from PETP
-----50000267307 from Test36
select * from well_version where uwi='50000267307';
---0 result set
select * from TEMP_WV_300IPL_DELETED where inventory='ZZ';


---check well table against Well Inventory
Select * from  
DATA_ACCESS_COAT_CHECK.WELL_INVENTORY WI,well w
where (select wi.uwi minus w.uwi
and rundate > to_date ('16-DEC-2009', 'DD-MON-YYYY'));





