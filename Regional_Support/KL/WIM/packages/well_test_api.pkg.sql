-- PPDM schema
grant select, insert, delete on ppdm.tlm_well_test_period to wim;
grant select, insert, delete on ppdm.tlm_well_test_recorder to wim;
grant select, insert, delete on ppdm.tlm_well_core_sample_anal to wim;
grant select, update on ppdm.tlm_well_test to wim;
grant select, update on ppdm.tlm_well_test_analysis to wim;
grant select, update on ppdm.tlm_well_test_blow_desc to wim;
grant select, update on ppdm.tlm_well_test_contaminant to wim;
grant select, update on ppdm.tlm_well_test_cushion to wim;
grant select, update on ppdm.tlm_well_test_equipment to wim;
grant select, update on ppdm.tlm_well_test_flow to wim;
grant select, update on ppdm.tlm_well_test_flow_meas to wim;
grant select, update on ppdm.tlm_well_test_mud to wim;
grant select, update on ppdm.tlm_well_test_press_meas to wim;
grant select, update on ppdm.tlm_well_test_pressure to wim;
grant select, update on ppdm.tlm_well_test_quality to wim;
grant select, update on ppdm.tlm_well_test_recovery to wim;
grant select, update on ppdm.tlm_well_test_remark to wim;
grant select, update on ppdm.tlm_well_test_slope to wim;

-- WIM schema
drop synonym well_test_api;

/*
    Script: well_test_api

    Purpose:   
        Reassign items in the TLM_WELL_TEST_* table to a new TLM Well ID.

    Dependencies
        ppdm.tlm_well_test
        ppdm.tlm_well_test_analysis
        ppdm.tlm_well_test_contaminant
        ppdm.tlm_well_test_cushion
        ppdm.tlm_well_test_equipment
        ppdm.tlm_well_test_flow
        ppdm.tlm_well_test_flow_meas
        ppdm.tlm_well_test_mud
        ppdm.tlm_well_test_period
        ppdm.tlm_well_test_pressure
        ppdm.tlm_well_test_press_meas
        ppdm.tlm_well_test_quality
        ppdm.tlm_well_test_recovery
        ppdm.tlm_well_test_recorder
        ppdm.tlm_well_test_remark
        ppdm.tlm_well_test_slope        

    History:
        0.1 10-Jan-12   V.Rajpoot   Initial version
        1.0 09-Sep-15   K. Edward   Remove tlm_id_can_change
*/
create or replace package well_test_api
is
    /*
        @name   tlm_id_change
        @param  pold_tlm_id - the id of the well_version that is to be moved
        @param  pold_tlm_id - the id of the well_version that is to be moved
        @logs               - logs to process log
    */
    procedure tlm_id_change (pold_tlm_id in varchar2, pnew_tlm_id in varchar2);
end well_test_api;
/

create or replace package body well_test_api
is
    procedure tlm_id_change(pold_tlm_id in varchar2, pnew_tlm_id in varchar2)
    is
        v_detail    varchar2(2000);
    begin
        -- Insert a new row to these 2 parent tables first, so the child tables records can be updated.
        insert into ppdm.tlm_well_test_period(
            select pnew_tlm_id, source,test_type, run_num,test_num, period_type,period_obs_no,
                active_ind, casing_pressure, casing_pressure_ouom, effective_date, expiry_date,
                period_duration, period_duration_ouom, ppdm_guid, remark, tubing_pressure, 
                tubing_pressure_ouom, row_changed_by, row_changed_date, row_created_by, 
                row_created_date, row_quality
            from ppdm.tlm_well_test_period
            where uwi = pold_tlm_id
        );
        v_detail := ', ' || chr(10) || SQL%ROWCOUNT || ' TLM_WELL_TEST_PERIOD records moved.';
  
 
        insert into ppdm.tlm_well_test_recorder(
            select pnew_tlm_id,source, test_type, run_num, test_num, recorder_id, active_ind,
                effective_date, expiry_date, max_capacity_pressure, max_capacity_pressure_ouom,
                max_capacity_temp, max_capacity_temp_ouom,performance_quality, ppdm_guid,
                recorder_depth, recorder_depth_ouom, recorder_inside_ind, recorder_max_temp,
                recorder_max_temp_ouom, recorder_min_temp, recorder_min_temp_ouom,
                recorder_position, recorder_resolution, recorder_resolution_ouom, recorder_type,
                recorder_used_ind, remark, row_changed_by, row_changed_date, row_created_by,
                row_created_date, row_quality
            from ppdm.tlm_well_test_recorder
            where uwi = pold_tlm_id
        );
        v_detail := v_detail || ', ' || chr(10) || SQL%ROWCOUNT ||  ' TLM_WELL_TEST_RECORDER records moved.';
             
                
        --  reassign any information items to the new tlm id
        update ppdm.tlm_well_test
        set uwi = pnew_tlm_id
        where uwi = pold_tlm_id;
        v_detail := v_detail || ', ' || chr(10) || SQL%ROWCOUNT || ' TLM_WELL_TEST records moved.';
 
        update ppdm.tlm_well_test_analysis
        set uwi = pnew_tlm_id
        where uwi = pold_tlm_id;
        v_detail := v_detail || ', ' || chr(10) || SQL%ROWCOUNT || ' TLM_WELL_TEST_ANALYSIS records moved.';
 
        update ppdm.tlm_well_test_blow_desc
        set uwi = pnew_tlm_id
        where uwi = pold_tlm_id;
        v_detail := v_detail || ', ' || chr(10) || SQL%ROWCOUNT || ' TLM_WELL_TEST_BLOW_DESC records moved.';
 
        update ppdm.tlm_well_test_contaminant
        set uwi = pnew_tlm_id
        where uwi = pold_tlm_id;
        v_detail := v_detail || ', ' || chr(10) || SQL%ROWCOUNT || ' TLM_WELL_TEST_CONTAMINANT records moved.';

        update ppdm.tlm_well_test_cushion
        set uwi = pnew_tlm_id
        where uwi = pold_tlm_id;
        v_detail := v_detail || ', ' || chr(10) || SQL%ROWCOUNT || ' TLM_WELL_TEST_CUSHION records moved.';

        update ppdm.tlm_well_test_equipment
        set uwi = pnew_tlm_id
        where uwi = pold_tlm_id;
        v_detail := v_detail || ', ' || chr(10) || SQL%ROWCOUNT || ' TLM_WELL_TEST_EQUIPMENT records moved.';

        update ppdm.tlm_well_test_flow
        set uwi = pnew_tlm_id
        where uwi = pold_tlm_id;
        v_detail := v_detail || ', ' || chr(10) || SQL%ROWCOUNT || ' TLM_WELL_TEST_FLOW records moved.';

        update ppdm.tlm_well_test_flow_meas
        set uwi = pnew_tlm_id
        where uwi = pold_tlm_id;
        v_detail := v_detail || ', ' || chr(10) || SQL%ROWCOUNT || ' TLM_WELL_TEST_FLOW_MEAS records moved.';

        update ppdm.tlm_well_test_mud
        set uwi = pnew_tlm_id
        where uwi = pold_tlm_id;
        v_detail := v_detail || ', ' || chr(10) || SQL%ROWCOUNT || ' TLM_WELL_TEST_MUD records moved.';

        update ppdm.tlm_well_test_press_meas
        set uwi = pnew_tlm_id
        where uwi = pold_tlm_id;
        v_detail := v_detail || ', ' || chr(10) || SQL%ROWCOUNT || ' TLM_WELL_TEST_PRESS_MEAS records moved.';
        
        update ppdm.tlm_well_test_pressure
        set uwi = pnew_tlm_id
        where uwi = pold_tlm_id;
        v_detail := v_detail || ', ' || chr(10) || SQL%ROWCOUNT || ' TLM_WELL_TEST_PRESSURE records moved.';

        update ppdm.tlm_well_test_quality
        set uwi = pnew_tlm_id
        where uwi = pold_tlm_id;
        v_detail := v_detail || ', ' || chr(10) || SQL%ROWCOUNT || ' TLM_WELL_TEST_QUALITY records moved.';

        update ppdm.tlm_well_test_recovery
        set uwi = pnew_tlm_id
        where uwi = pold_tlm_id;
        v_detail := v_detail || ', ' || chr(10) || SQL%ROWCOUNT || ' TLM_WELL_TEST_RECOVERY records moved.';

        update ppdm.tlm_well_test_remark
        set uwi = pnew_tlm_id
        where uwi = pold_tlm_id;
        v_detail := v_detail || ', ' || chr(10) || SQL%ROWCOUNT || ' TLM_WELL_TEST_REMARK records moved.';

        update ppdm.tlm_well_test_slope
        set uwi = pnew_tlm_id
        where uwi = pold_tlm_id;
        v_detail := v_detail || ', ' || chr(10) || SQL%ROWCOUNT || ' TLM_WELL_TEST_SLOPE records moved.';

        delete from ppdm.tlm_well_test_period
        where uwi = pold_tlm_id;

        delete from ppdm.tlm_well_test_recorder
        where uwi = pold_tlm_id;

        -- Log the changes
        ppdm_admin.tlm_process_logger.info('WIM.WELL_TEST_API: records moved from TLM ID: ' || pold_tlm_id || ' TO TLM ID: '|| pnew_tlm_id ||  v_detail);
   end tlm_id_change;
end well_test_api;
/