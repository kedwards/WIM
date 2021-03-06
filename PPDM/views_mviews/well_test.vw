/*******************************************************************************************
  WELL_TEST  (View)

  20150818  cdong   include IHS US data (tis task 1164)

 *******************************************************************************************/

--drop view ppdm.well_test;


create or replace force view ppdm.well_test
(
   uwi,
   source,
   test_type,
   run_num,
   test_num,
   active_ind,
   base_depth,
   base_depth_ouom,
   base_strat_unit_id,
   bhp_z,
   bottom_choke_desc,
   bsw_percent,
   caliper_hole_diameter,
   caliper_hole_diameter_ouom,
   cased_hole_ind,
   casing_pressure,
   casing_pressure_ouom,
   choke_size_desc,
   completion_obs_no,
   completion_source,
   condensate_amount_percent,
   condensate_flow_amount,
   condensate_flow_amount_ouom,
   condensate_flow_amount_uom,
   condensate_gravity,
   condensate_ratio,
   condensate_ratio_ouom,
   damage_quality,
   effective_date,
   event_obs_no,
   event_source,
   expiry_date,
   flow_pressure,
   flow_pressure_ouom,
   flow_temperature,
   flow_temperature_ouom,
   gas_flow_amount,
   gas_flow_amount_ouom,
   gas_flow_amount_uom,
   gas_gravity,
   gor,
   gor_ouom,
   h2s_percent,
   hole_condition,
   max_condens_flow_rate,
   max_condens_flow_rate_ouom,
   max_gas_flow_rate,
   max_gas_flow_rate_ouom,
   max_hydrostatic_pressure,
   max_hydrostatic_press_ouom,
   max_oil_flow_rate,
   max_oil_flow_rate_ouom,
   max_water_flow_rate,
   max_water_flow_rate_ouom,
   oil_amount_percent,
   oil_flow_amount,
   oil_flow_amount_ouom,
   oil_flow_amount_uom,
   oil_gravity,
   permeability_quality,
   ppdm_guid,
   primary_fluid_recovered,
   production_method,
   prod_string_id,
   prod_str_form_obs_no,
   rat_hole_diameter,
   rat_hole_diameter_ouom,
   rat_hole_length,
   rat_hole_length_ouom,
   remark,
   reported_strat_unit_id,
   report_temperature,
   report_temperature_ouom,
   report_test_num,
   show_type,
   si_flow_ratio,
   start_time,
   static_pressure,
   static_pressure_ouom,
   strat_age,
   strat_age_name_set_id,
   strat_name_set_id,
   string_source,
   sulphur_ind,
   td,
   td_ouom,
   temperature_correction,
   temperature_correction_ind,
   temperature_correction_ouom,
   test_company,
   test_date,
   test_duration,
   test_duration_ouom,
   test_hole_diameter,
   test_hole_diameter_ouom,
   test_result_code,
   test_subtype,
   tool_open_time,
   top_choke_desc,
   top_depth,
   top_depth_ouom,
   top_strat_unit_id,
   water_amount_percent,
   water_cut_percent,
   water_flow_amount,
   water_flow_amount_ouom,
   water_flow_amount_uom,
   wellbore_completion_type,
   z_factor,
   row_changed_by,
   row_changed_date,
   row_created_by,
   row_created_date,
   row_quality,
   --IHS extensions
   province_state,
   top_strat_age,
   base_strat_age,
   reported_strat_age,
   x_file_name,
   x_p_max,
   x_strat_unit_id
)
as
   select uwi,
          source,
          test_type,
          run_num,
          test_num,
          active_ind,
          base_depth,
          base_depth_ouom,
          base_strat_unit_id,
          bhp_z,
          bottom_choke_desc,
          bsw_percent,
          caliper_hole_diameter,
          caliper_hole_diameter_ouom,
          cased_hole_ind,
          casing_pressure,
          casing_pressure_ouom,
          choke_size_desc,
          completion_obs_no,
          completion_source,
          condensate_amount_percent,
          condensate_flow_amount,
          condensate_flow_amount_ouom,
          condensate_flow_amount_uom,
          condensate_gravity,
          condensate_ratio,
          condensate_ratio_ouom,
          damage_quality,
          effective_date,
          event_obs_no,
          event_source,
          expiry_date,
          flow_pressure,
          flow_pressure_ouom,
          flow_temperature,
          flow_temperature_ouom,
          gas_flow_amount,
          gas_flow_amount_ouom,
          gas_flow_amount_uom,
          gas_gravity,
          gor,
          gor_ouom,
          h2s_percent,
          hole_condition,
          max_condens_flow_rate,
          max_condens_flow_rate_ouom,
          max_gas_flow_rate,
          max_gas_flow_rate_ouom,
          max_hydrostatic_pressure,
          max_hydrostatic_press_ouom,
          max_oil_flow_rate,
          max_oil_flow_rate_ouom,
          max_water_flow_rate,
          max_water_flow_rate_ouom,
          oil_amount_percent,
          oil_flow_amount,
          oil_flow_amount_ouom,
          oil_flow_amount_uom,
          oil_gravity,
          permeability_quality,
          ppdm_guid,
          primary_fluid_recovered,
          production_method,
          prod_string_id,
          prod_str_form_obs_no,
          rat_hole_diameter,
          rat_hole_diameter_ouom,
          rat_hole_length,
          rat_hole_length_ouom,
          remark,
          reported_strat_unit_id,
          report_temperature,
          report_temperature_ouom,
          report_test_num,
          show_type,
          si_flow_ratio,
          start_time,
          static_pressure,
          static_pressure_ouom,
          strat_age,
          strat_age_name_set_id,
          strat_name_set_id,
          string_source,
          sulphur_ind,
          td,
          td_ouom,
          temperature_correction,
          temperature_correction_ind,
          temperature_correction_ouom,
          test_company,
          test_date,
          test_duration,
          test_duration_ouom,
          test_hole_diameter,
          test_hole_diameter_ouom,
          test_result_code,
          test_subtype,
          tool_open_time,
          top_choke_desc,
          top_depth,
          top_depth_ouom,
          top_strat_unit_id,
          water_amount_percent,
          water_cut_percent,
          water_flow_amount,
          water_flow_amount_ouom,
          water_flow_amount_uom,
          wellbore_completion_type,
          z_factor,
          row_changed_by,
          row_changed_date,
          row_created_by,
          row_created_date,
          row_quality,
          --IHS extensions
          NULL as   province_state,
          NULL as   top_strat_age,
          NULL as   base_strat_age,
          NULL as   reported_strat_age,
          NULL as   x_file_name,
          NULL as   x_p_max,
          NULL as   x_strat_unit_id
     from tlm_well_test
   union all
   select uwi,
          source,
          test_type,
          run_num,
          test_num,
          active_ind,
          base_depth,
          base_depth_ouom,
          base_strat_unit_id,
          bhp_z,
          bottom_choke_desc,
          bsw_percent,
          caliper_hole_diameter,
          caliper_hole_diameter_ouom,
          cased_hole_ind,
          casing_pressure,
          casing_pressure_ouom,
          choke_size_desc,
          completion_obs_no,
          completion_source,
          condensate_amount_percent,
          condensate_flow_amount,
          condensate_flow_amount_ouom,
          condensate_flow_amount_uom,
          condensate_gravity,
          condensate_ratio,
          condensate_ratio_ouom,
          damage_quality,
          effective_date,
          event_obs_no,
          event_source,
          expiry_date,
          flow_pressure,
          flow_pressure_ouom,
          flow_temperature,
          flow_temperature_ouom,
          gas_flow_amount,
          gas_flow_amount_ouom,
          gas_flow_amount_uom,
          gas_gravity,
          gor,
          gor_ouom,
          h2s_percent,
          hole_condition,
          max_condens_flow_rate,
          max_condens_flow_rate_ouom,
          max_gas_flow_rate,
          max_gas_flow_rate_ouom,
          max_hydrostatic_pressure,
          max_hydrostatic_press_ouom,
          max_oil_flow_rate,
          max_oil_flow_rate_ouom,
          max_water_flow_rate,
          max_water_flow_rate_ouom,
          oil_amount_percent,
          oil_flow_amount,
          oil_flow_amount_ouom,
          oil_flow_amount_uom,
          oil_gravity,
          permeability_quality,
          ppdm_guid,
          primary_fluid_recovered,
          production_method,
          prod_string_id,
          prod_str_form_obs_no,
          rat_hole_diameter,
          rat_hole_diameter_ouom,
          rat_hole_length,
          rat_hole_length_ouom,
          remark,
          reported_strat_unit_id,
          report_temperature,
          report_temperature_ouom,
          report_test_num,
          show_type,
          si_flow_ratio,
          start_time,
          static_pressure,
          static_pressure_ouom,
          strat_age,
          strat_age_name_set_id,
          strat_name_set_id,
          string_source,
          sulphur_ind,
          td,
          td_ouom,
          temperature_correction,
          temperature_correction_ind,
          temperature_correction_ouom,
          test_company,
          test_date,
          test_duration,
          test_duration_ouom,
          test_hole_diameter,
          test_hole_diameter_ouom,
          test_result_code,
          test_subtype,
          tool_open_time,
          top_choke_desc,
          top_depth,
          top_depth_ouom,
          top_strat_unit_id,
          water_amount_percent,
          water_cut_percent,
          water_flow_amount,
          water_flow_amount_ouom,
          water_flow_amount_uom,
          wellbore_completion_type,
          z_factor,
          row_changed_by,
          row_changed_date,
          row_created_by,
          row_created_date,
          row_quality,
          --IHS extensions
          province_state,
          top_strat_age,
          base_strat_age,
          reported_strat_age,
          x_file_name,
          x_p_max,
          x_strat_unit_id
     from ihs_cdn_well_test
   union all
   select uwi,
          source,
          test_type,
          run_num,
          test_num,
          active_ind,
          base_depth,
          base_depth_ouom,
          base_strat_unit_id,
          bhp_z,
          bottom_choke_desc,
          bsw_percent,
          caliper_hole_diameter,
          caliper_hole_diameter_ouom,
          cased_hole_ind,
          casing_pressure,
          casing_pressure_ouom,
          choke_size_desc,
          completion_obs_no,
          completion_source,
          condensate_amount_percent,
          condensate_flow_amount,
          condensate_flow_amount_ouom,
          condensate_flow_amount_uom,
          condensate_gravity,
          condensate_ratio,
          condensate_ratio_ouom,
          damage_quality,
          effective_date,
          event_obs_no,
          event_source,
          expiry_date,
          flow_pressure,
          flow_pressure_ouom,
          flow_temperature,
          flow_temperature_ouom,
          gas_flow_amount,
          gas_flow_amount_ouom,
          gas_flow_amount_uom,
          gas_gravity,
          gor,
          gor_ouom,
          h2s_percent,
          hole_condition,
          max_condens_flow_rate,
          max_condens_flow_rate_ouom,
          max_gas_flow_rate,
          max_gas_flow_rate_ouom,
          max_hydrostatic_pressure,
          max_hydrostatic_press_ouom,
          max_oil_flow_rate,
          max_oil_flow_rate_ouom,
          max_water_flow_rate,
          max_water_flow_rate_ouom,
          oil_amount_percent,
          oil_flow_amount,
          oil_flow_amount_ouom,
          oil_flow_amount_uom,
          oil_gravity,
          permeability_quality,
          ppdm_guid,
          primary_fluid_recovered,
          production_method,
          prod_string_id,
          prod_str_form_obs_no,
          rat_hole_diameter,
          rat_hole_diameter_ouom,
          rat_hole_length,
          rat_hole_length_ouom,
          remark,
          reported_strat_unit_id,
          report_temperature,
          report_temperature_ouom,
          report_test_num,
          show_type,
          si_flow_ratio,
          start_time,
          static_pressure,
          static_pressure_ouom,
          strat_age,
          strat_age_name_set_id,
          strat_name_set_id,
          string_source,
          sulphur_ind,
          td,
          td_ouom,
          temperature_correction,
          temperature_correction_ind,
          temperature_correction_ouom,
          test_company,
          test_date,
          test_duration,
          test_duration_ouom,
          test_hole_diameter,
          test_hole_diameter_ouom,
          test_result_code,
          test_subtype,
          tool_open_time,
          top_choke_desc,
          top_depth,
          top_depth_ouom,
          top_strat_unit_id,
          water_amount_percent,
          water_cut_percent,
          water_flow_amount,
          water_flow_amount_ouom,
          water_flow_amount_uom,
          wellbore_completion_type,
          z_factor,
          row_changed_by,
          row_changed_date,
          row_created_by,
          row_created_date,
          row_quality,
          --IHS extensions
          province_state,
          top_strat_age,
          base_strat_age,
          reported_strat_age,
          x_file_name,
          x_p_max,
          x_strat_unit_id
     from ihs_us_well_test
;


grant select on ppdm.well_test to ppdm_ro;


--create or replace synonym data_finder.well_test for ppdm.well_test;
--create or replace synonym ppdm.wt for ppdm.well_test;
