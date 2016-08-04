/***************************************************************************************************
 ihs_us_well_test_press_meas  (view)

 20150812   cdong       Task 1164 add IHS-US data to combo views
   **** NOTE:  object  WELL_TEST_PRESS_MEAS  does not exist at c_talisman_us@ihsdataq  ****

 **************************************************************************************************/

--drop view ppdm.ihs_us_well_test_press_meas;


--create or replace force view ppdm.ihs_us_well_test_press_meas
--(
--  uwi,
--  source,
--  test_type,
--  run_num,
--  test_num,
--  measurement_obs_no,
--  active_ind,
--  effective_date,
--  expiry_date,
--  measurement_pressure,
--  measurement_pressure_ouom,
--  measurement_temperature,
--  measurement_temp_ouom,
--  measurement_time,
--  measurement_time_ouom,
--  period_obs_no,
--  period_type,
--  ppdm_guid,
--  recorder_id,
--  remark,
--  row_changed_by,
--  row_changed_date,
--  row_created_by,
--  row_created_date,
--  row_quality,
--  province_state
--)
--as
--  select /*+ use_nl(wtpm wv) */
--         wv.uwi,
--         wv.source,
--         wtpm.test_type,
--         wtpm.run_num,
--         wtpm.test_num,
--         wtpm.measurement_obs_no,
--         wtpm.active_ind,
--         wtpm.effective_date,
--         wtpm.expiry_date,
--         wtpm.measurement_pressure,
--         wtpm.measurement_pressure_ouom,
--         wtpm.measurement_temperature,
--         wtpm.measurement_temp_ouom,
--         wtpm.measurement_time,
--         wtpm.measurement_time_ouom,
--         wtpm.period_obs_no,
--         wtpm.period_type,
--         wtpm.ppdm_guid,
--         wtpm.recorder_id,
--         wtpm.remark,
--         wtpm.row_changed_by,
--         wtpm.row_changed_date,
--         wtpm.row_created_by,
--         wtpm.row_created_date,
--         wtpm.row_quality,
--         wtpm.province_state
--    from well_test_press_meas@c_talisman_us_ihsdataq wtpm, ppdm.well_version wv
--   where     wv.well_num = wtpm.uwi
--         and wv.source = '450PID'
--         and wv.active_ind = 'Y'
--;


--grant select on ppdm.ihs_us_well_test_press_meas to ppdm_ro;
