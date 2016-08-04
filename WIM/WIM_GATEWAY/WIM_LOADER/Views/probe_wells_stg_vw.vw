DROP VIEW PROBE_WELLS_STG_VW;

/* Formatted on 30/09/2013 9:18:23 AM (QP5 v5.227.12220.39754) */
CREATE OR REPLACE FORCE VIEW PROBE_WELLS_STG_VW
(
   UWI,
   SOURCE,
   ABANDONMENT_DATE,
   ACTIVE_IND,
   ASSIGNED_FIELD,
   BASE_NODE_ID,
   BOTTOM_HOLE_LATITUDE,
   BOTTOM_HOLE_LONGITUDE,
   CASING_FLANGE_ELEV,
   CASING_FLANGE_ELEV_CUOM,
   CASING_FLANGE_ELEV_OUOM,
   COMPLETION_DATE,
   CONFIDENTIAL_DATE,
   CONFIDENTIAL_DEPTH,
   CONFIDENTIAL_DEPTH_CUOM,
   CONFIDENTIAL_DEPTH_OUOM,
   CONFIDENTIAL_TYPE,
   CONFID_STRAT_NAME_SET_ID,
   CONFID_STRAT_UNIT_ID,
   COUNTRY,
   COUNTY,
   CURRENT_CLASS,
   CURRENT_STATUS,
   CURRENT_STATUS_DATE,
   DEEPEST_DEPTH,
   DEEPEST_DEPTH_CUOM,
   DEEPEST_DEPTH_OUOM,
   DEPTH_DATUM,
   DEPTH_DATUM_ELEV,
   DEPTH_DATUM_ELEV_CUOM,
   DEPTH_DATUM_ELEV_OUOM,
   DERRICK_FLOOR_ELEV,
   DERRICK_FLOOR_ELEV_CUOM,
   DERRICK_FLOOR_ELEV_OUOM,
   DIFFERENCE_LAT_MSL,
   DISCOVERY_IND,
   DISTRICT,
   DRILL_TD,
   DRILL_TD_CUOM,
   DRILL_TD_OUOM,
   EFFECTIVE_DATE,
   ELEV_REF_DATUM,
   EXPIRY_DATE,
   FAULTED_IND,
   FINAL_DRILL_DATE,
   FINAL_TD,
   FINAL_TD_CUOM,
   FINAL_TD_OUOM,
   GEOGRAPHIC_REGION,
   GEOLOGIC_PROVINCE,
   GROUND_ELEV,
   GROUND_ELEV_CUOM,
   GROUND_ELEV_OUOM,
   GROUND_ELEV_TYPE,
   INITIAL_CLASS,
   KB_ELEV,
   KB_ELEV_CUOM,
   KB_ELEV_OUOM,
   LEASE_NAME,
   LEASE_NUM,
   LEGAL_SURVEY_TYPE,
   LOCATION_TYPE,
   LOG_TD,
   LOG_TD_CUOM,
   LOG_TD_OUOM,
   MAX_TVD,
   MAX_TVD_CUOM,
   MAX_TVD_OUOM,
   NET_PAY,
   NET_PAY_CUOM,
   NET_PAY_OUOM,
   OLDEST_STRAT_AGE,
   OLDEST_STRAT_NAME_SET_AGE,
   OLDEST_STRAT_NAME_SET_ID,
   OLDEST_STRAT_UNIT_ID,
   OPERATOR,
   PARENT_RELATIONSHIP_TYPE,
   PARENT_UWI,
   PLATFORM_ID,
   PLATFORM_SF_TYPE,
   PLOT_NAME,
   PLOT_SYMBOL,
   PLUGBACK_DEPTH,
   PLUGBACK_DEPTH_CUOM,
   PLUGBACK_DEPTH_OUOM,
   PPDM_GUID,
   PROFILE_TYPE,
   PROVINCE_STATE,
   REGULATORY_AGENCY,
   REMARK,
   RIG_ON_SITE_DATE,
   RIG_RELEASE_DATE,
   ROTARY_TABLE_ELEV,
   SOURCE_DOCUMENT,
   SPUD_DATE,
   STATUS_TYPE,
   SUBSEA_ELEV_REF_TYPE,
   SURFACE_LATITUDE,
   SURFACE_LONGITUDE,
   SURFACE_NODE_ID,
   TAX_CREDIT_CODE,
   TD_STRAT_AGE,
   TD_STRAT_NAME_SET_AGE,
   TD_STRAT_NAME_SET_ID,
   TD_STRAT_UNIT_ID,
   WATER_ACOUSTIC_VEL,
   WATER_ACOUSTIC_VEL_CUOM,
   WATER_ACOUSTIC_VEL_OUOM,
   WATER_DEPTH,
   WATER_DEPTH_DATUM,
   WATER_DEPTH_CUOM,
   WATER_DEPTH_OUOM,
   WELL_EVENT_NUM,
   WELL_GOVERNMENT_ID,
   WELL_INTERSECT_MD,
   WELL_NAME,
   WELL_NUM,
   WELL_NUMERIC_ID,
   WHIPSTOCK_DEPTH,
   WHIPSTOCK_DEPTH_CUOM,
   WHIPSTOCK_DEPTH_OUOM,
   IPL_LICENSEE,
   IPL_OFFSHORE_IND,
   IPL_PIDSTATUS,
   IPL_PRSTATUS,
   IPL_ORSTATUS,
   IPL_ONPROD_DATE,
   IPL_ONINJECT_DATE,
   IPL_CONFIDENTIAL_STRAT_AGE,
   IPL_POOL,
   IPL_LAST_UPDATE,
   IPL_UWI_SORT,
   IPL_UWI_DISPLAY,
   IPL_TD_TVD,
   IPL_PLUGBACK_TVD,
   IPL_WHIPSTOCK_TVD,
   IPL_WATER_TVD,
   IPL_ALT_SOURCE,
   IPL_XACTION_CODE,
   ROW_CHANGED_BY,
   ROW_CHANGED_DATE,
   ROW_CREATED_BY,
   ROW_CREATED_DATE,
   IPL_BASIN,
   IPL_BLOCK,
   IPL_AREA,
   IPL_TWP,
   IPL_TRACT,
   IPL_LOT,
   IPL_CONC,
   IPL_UWI_LOCAL,
   ROW_QUALITY,
   WL_LICENSE_ID,
   WL_ACTIVE_IND,
   WL_AGENT,
   WL_APPLICATION_ID,
   WL_AUTHORIZED_STRAT_UNIT_ID,
   WL_BIDDING_ROUND_NUM,
   WL_CONTRACTOR,
   WL_DIRECTION_TO_LOC,
   WL_DIRECTION_TO_LOC_CUOM,
   WL_DIRECTION_TO_LOC_OUOM,
   WL_DISTANCE_REF_POINT,
   WL_DISTANCE_TO_LOC,
   WL_DISTANCE_TO_LOC_CUOM,
   WL_DISTANCE_TO_LOC_OUOM,
   WL_DRILL_RIG_NUM,
   WL_DRILL_SLOT_NO,
   WL_DRILL_TOOL,
   WL_EFFECTIVE_DATE,
   WL_EXCEPTION_GRANTED,
   WL_EXCEPTION_REQUESTED,
   WL_EXPIRED_IND,
   WL_EXPIRY_DATE,
   WL_FEES_PAID_IND,
   WL_LICENSEE,
   WL_LICENSEE_CONTACT_ID,
   WL_LICENSE_DATE,
   WL_LICENSE_NUM,
   WL_NO_OF_WELLS,
   WL_OFFSHORE_COMPLETION_TYPE,
   WL_PERMIT_REFERENCE_NUM,
   WL_PERMIT_REISSUE_DATE,
   WL_PERMIT_TYPE,
   WL_PLATFORM_NAME,
   WL_PPDM_GUID,
   WL_PROJECTED_DEPTH,
   WL_PROJECTED_DEPTH_CUOM,
   WL_PROJECTED_DEPTH_OUOM,
   WL_PROJECTED_STRAT_UNIT_ID,
   WL_PROJECTED_TVD,
   WL_PROJECTED_TVD_CUOM,
   WL_PROJECTED_TVD_OUOM,
   WL_PROPOSED_SPUD_DATE,
   WL_PURPOSE,
   WL_RATE_SCHEDULE_ID,
   WL_REGULATION,
   WL_REGULATORY_AGENCY,
   WL_REGULATORY_CONTACT_ID,
   WL_REMARK,
   WL_RIG_CODE,
   WL_RIG_SUBSTR_HEIGHT,
   WL_RIG_SUBSTR_HEIGHT_CUOM,
   WL_RIG_SUBSTR_HEIGHT_OUOM,
   WL_RIG_TYPE,
   WL_SECTION_OF_REGULATION,
   WL_STRAT_NAME_SET_ID,
   WL_SURVEYOR,
   WL_TARGET_OBJECTIVE_FLUID,
   WL_IPL_PROJECTED_STRAT_AGE,
   WL_IPL_ALT_SOURCE,
   WL_IPL_XACTION_CODE,
   WL_ROW_CHANGED_BY,
   WL_ROW_CHANGED_DATE,
   WL_ROW_CREATED_BY,
   WL_ROW_CREATED_DATE,
   WL_IPL_WELL_OBJECTIVE,
   WL_ROW_QUALITY
)
AS
   SELECT wv.uwi,
          wv.SOURCE,
          wv.abandonment_date,
          wv.active_ind,
          wv.assigned_field,
          wv.base_node_id,
          wv.bottom_hole_latitude,
          wv.bottom_hole_longitude,
          wv.casing_flange_elev,
          CAST ('M' AS VARCHAR (2)) AS casing_flange_elev_cuom,          --new
          wv.casing_flange_elev_ouom,
          wv.completion_date,
          wv.confidential_date,
          wv.confidential_depth,
          CAST ('M' AS VARCHAR (2)) AS confidential_depth_cuom,          --new
          wv.confidential_depth_ouom,
          wv.confidential_type,
          wv.confid_strat_name_set_id,
          wv.confid_strat_unit_id,
          wv.country,
          CAST (wv.county AS VARCHAR (20)),
          wv.current_class,
          wv.current_status,
          wv.current_status_date,
          wv.deepest_depth,
          CAST ('M' AS VARCHAR (2)) AS deepest_depth_cuom,               --new
          wv.deepest_depth_ouom,
          wv.depth_datum,
          wv.depth_datum_elev,
          CAST ('M' AS VARCHAR (2)) AS depth_datum_elev_cuom,            --new
          wv.depth_datum_elev_ouom,
          wv.derrick_floor_elev,
          CAST ('M' AS VARCHAR (2)) AS derrick_floor_elev_cuom,          --new
          wv.derrick_floor_elev_ouom,
          wv.difference_lat_msl,
          wv.discovery_ind,
          wv.district,
          wv.drill_td,
          CAST ('M' AS VARCHAR (2)) AS drill_td_cuom,                    --new
          wv.drill_td_ouom,
          wv.effective_date,
          wv.elev_ref_datum,
          wv.expiry_date,
          wv.faulted_ind,
          wv.final_drill_date,
          wv.final_td,
          CAST ('M' AS VARCHAR (2)) AS final_td_cuom,                    --new
          wv.final_td_ouom,
          wv.geographic_region,
          wv.geologic_province,
          wv.ground_elev,
          CAST ('M' AS VARCHAR (2)) AS ground_elev_cuom,                 --new
          wv.ground_elev_ouom,
          wv.ground_elev_type,
          wv.initial_class,
          wv.kb_elev,
          CAST ('M' AS VARCHAR (2)) AS kb_elev_cuom,                     --new
          wv.kb_elev_ouom,
          wv.lease_name,
          wv.lease_num,
          wv.legal_survey_type,
          wv.location_type,
          wv.log_td,
          CAST ('M' AS VARCHAR (2)) AS log_td_cuom,                      --new
          wv.log_td_ouom,
          wv.max_tvd,
          CAST ('M' AS VARCHAR (2)) AS max_tvd_cuom,
          --NEW
          wv.max_tvd_ouom,
          wv.net_pay,
          CAST ('M' AS VARCHAR (2)) AS net_pay_ouom,                     --NEW
          wv.net_pay_ouom,
          CAST (wv.oldest_strat_age AS VARCHAR (20)) oldest_strat_age,
          wv.oldest_strat_name_set_age,
          wv.oldest_strat_name_set_id,
          wv.oldest_strat_unit_id,
          wv.OPERATOR,
          wv.parent_relationship_type,
          wv.parent_uwi,
          wv.platform_id,
          wv.platform_sf_type,
          wv.plot_name,
          wv.plot_symbol,
          wv.plugback_depth,
          CAST ('M' AS VARCHAR (2)) AS plugback_depth_cuom,              --NEW
          wv.plugback_depth_ouom,
          wv.ppdm_guid,
          wv.profile_type,
          wv.province_state,
          wv.regulatory_agency,
          wv.remark,
          wv.rig_on_site_date,
          wv.rig_release_date,
          wv.rotary_table_elev,
          wv.source_document,
          wv.spud_date,
          wv.status_type,
          wv.subsea_elev_ref_type,
          wv.surface_latitude,
          wv.surface_longitude,
          wv.surface_node_id,
          wv.tax_credit_code,
          CAST (wv.td_strat_age AS VARCHAR (20)),
          wv.td_strat_name_set_age,
          wv.td_strat_name_set_id,
          wv.td_strat_unit_id,
          wv.water_acoustic_vel,
          CAST ('M' AS VARCHAR (2)) AS water_acoustic_vel_cuom,          --NEW
          wv.water_acoustic_vel_ouom,
          wv.water_depth,
          wv.water_depth_datum,
          CAST ('M' AS VARCHAR (2)) AS water_depth_cuom,                 --NEW
          wv.water_depth_ouom,
          wv.well_event_num,
          wv.well_government_id,
          wv.well_intersect_md,
          wv.well_name,
          wv.well_num,
          wv.well_numeric_id,
          wv.whipstock_depth,
          CAST ('M' AS VARCHAR (2)) AS whipstock_depth_cuom,             --NEW
          wv.whipstock_depth_ouom,
          wv.ipl_licensee,
          CAST (wv.ipl_offshore_ind AS VARCHAR (12)),
          wv.ipl_pidstatus,
          CAST (wv.ipl_prstatus AS VARCHAR (12)),
          CAST (wv.ipl_orstatus AS VARCHAR (12)),
          wv.ipl_onprod_date,
          wv.ipl_oninject_date,
          CAST (wv.ipl_confidential_strat_age AS VARCHAR (12)),
          CAST (wv.ipl_pool AS VARCHAR (18)),
          wv.ipl_last_update,
          wv.ipl_uwi_sort,
          wv.ipl_uwi_display,
          wv.ipl_td_tvd,
          wv.ipl_plugback_tvd,
          wv.ipl_whipstock_tvd,
          CAST (wv.ipl_water_tvd AS NUMBER) ipl_water_tvd,
          wv.ipl_alt_source,
          wv.ipl_xaction_code,
          CAST (wv.row_changed_by AS VARCHAR (30)),
          --  CAST('PROBE' AS VARCHAR(30)) AS ROW_CHANGED_BY,
          wv.row_changed_date,
          CAST (wv.row_created_by AS VARCHAR (30)) AS row_created_by,
          wv.row_created_date,
          wv.ipl_basin,
          wv.ipl_block,
          wv.ipl_area,
          wv.ipl_twp,
          wv.ipl_tract,
          wv.ipl_lot,
          wv.ipl_conc,
          CAST ('' AS VARCHAR (20)) AS ipl_uwi_local,      --WV.IPL_UWI_LOCAL,
          wv.row_quality,
          DECODE (wl.license_id, 'IPL', NULL, wl.license_id) AS wl_license_id,
          wl.active_ind wl_active_ind,
          wl.AGENT wl_agent,
          wl.application_id wl_application_id,
          wl.authorized_strat_unit_id wl_authorized_strat_unit_id,
          wl.bidding_round_num wl_bidding_round_num,
          wl.contractor wl_contractor,
          wl.direction_to_loc wl_direction_to_loc,
          CAST ('M' AS VARCHAR (2)) AS wl_direction_to_loc_cuom,         --NEW
          wl.direction_to_loc_ouom wl_direction_to_loc_ouom,
          wl.distance_ref_point wl_distance_ref_point,
          wl.distance_to_loc wl_distance_to_loc,
          CAST ('M' AS VARCHAR (2)) AS wl_distance_to_loc_cuom,          --NEW
          wl.distance_to_loc_ouom wl_distance_to_loc_ouom,
          wl.drill_rig_num wl_drill_rig_num,
          wl.drill_slot_no wl_drill_slot_no,
          wl.drill_tool wl_drill_tool,
          wl.effective_date wl_effective_date,
          wl.exception_granted wl_exception_granted,
          wl.exception_requested wl_exception_requested,
          wl.expired_ind wl_expired_ind,
          wl.expiry_date wl_expiry_date,
          wl.fees_paid_ind wl_fees_paid_ind,
          wl.licensee wl_licensee,
          wl.licensee_contact_id wl_licensee_contact_id,
          wl.license_date wl_license_date,
          DECODE (wl.license_num, 'I', NULL, wl.license_num) wl_license_num,
          wl.no_of_wells wl_no_of_wells,
          wl.offshore_completion_type wl_offshore_completion_type,
          wl.permit_reference_num wl_permit_reference_num,
          wl.permit_reissue_date wl_permit_reissue_date,
          wl.permit_type wl_permit_type,
          wl.platform_name wl_platform_name,
          wl.ppdm_guid wl_ppdm_guid,
          wl.projected_depth wl_projected_depth,
          CAST ('M' AS VARCHAR (2)) AS wl_projected_depth_cuom,          --NEW
          wl.projected_depth_ouom wl_projected_depth_ouom,
          wl.projected_strat_unit_id wl_projected_strat_unit_id,
          wl.projected_tvd wl_projected_tvd,
          CAST ('M' AS VARCHAR (2)) AS wl_projected_tvd_cuom,            --NEW
          wl.projected_tvd_ouom wl_projected_tvd_ouom,
          wl.proposed_spud_date wl_proposed_spud_date,
          wl.purpose wl_purpose,
          wl.rate_schedule_id wl_rate_schedule_id,
          wl.regulation wl_regulation,
          wl.regulatory_agency wl_regulatory_agency,
          wl.regulatory_contact_id wl_regulatory_contact_id,
          wl.remark wl_remark,
          wl.rig_code wl_rig_code,
          wl.rig_substr_height wl_rig_substr_height,
          CAST ('M' AS VARCHAR (2)) AS wl_rig_substr_height_cuom,        --NEW
          wl.rig_substr_height_ouom wl_rig_substr_height_ouom,
          wl.rig_type wl_rig_type,
          wl.section_of_regulation wl_section_of_regulation,
          wl.strat_name_set_id wl_strat_name_set_id,
          wl.surveyor wl_surveyor,
          wl.target_objective_fluid wl_target_objective_fluid,
          wl.ipl_projected_strat_age wl_ipl_projected_strat_age,
          wl.ipl_alt_source wl_ipl_alt_source,
          wl.ipl_xaction_code wl_ipl_xaction_code,
          CAST (wl.row_changed_by AS VARCHAR (30)) AS wl_row_changed_by,
          wl.row_changed_date wl_row_changed_date,
          CAST (wl.row_created_by AS VARCHAR (30)) AS wl_row_created_by,
          wl.row_created_date wl_row_created_date,
          CAST (wl.ipl_well_objective AS VARCHAR (12)) wl_ipl_well_objective,
          wl.row_quality wl_row_quality
     FROM well_version@c_tlm_probe.world wv,
          well_license@c_tlm_probe.world wl
    WHERE wv.uwi = wl.uwi(+);