CREATE OR REPLACE PACKAGE BODY WIM.pden_vol_api
is

/*--------------------------------------------------------------------------------------------------------------------

 PURPOSE:
  Move dependent/associated well-data from one well to another. Basically, update the well-id in the associated records.
  Move data in TLM_PDEN_VOL_BY_MONTH table

  Procedure does NOT COMMIT the change to allow caller to apply as part of wider transaction.

 DEPENDENCIES
   See Package Specification

 EXECUTION:
   Typically, this is invoked by WIM.EXTERNAL_DEPENDENCIES.WELL_MOVE, when the last active well version is moved
   @param  pold_tlm_id - the original/old id of the well-version to be moved
   @param  pnew_tlm_id - the target/new id of well-version to be moved

 HISTORY:
   0.1    10-Jan-12   V.Rajpoot Initial version
   0.2    2015-11-05  kxedward  QC555/QC1480 - update External Dependencies and related move API's


 --------------------------------------------------------------------------------------------------------------------*/

  procedure tlm_id_change (
    pold_tlm_id   in  varchar2,
    pnew_tlm_id   in  varchar2
  )
  is
    v_detail varchar2(2000);
  begin
    -- Insert a new row to this parent table first, so the child tables records can be updated.
    insert into ppdm.pden
    select pnew_tlm_id, pden_type, source, active_ind, country, current_operator, current_prod_str_name, current_status_date,
        current_well_str_number, district, effective_date, enhanced_recovery_type, expiry_date, field_id, geographic_region,
        geologic_province, last_injection_date, last_production_date, last_reported_date, location_desc, location_desc_type,
        on_injection_date, on_production_date, pden_name, pden_short_name, pden_status, plot_name, plot_symbol, pool_id, ppdm_guid,
        primary_product,production_method, proprietary_ind, province_state, remark, state_or_federal_waters, strat_name_set_id, strat_unit_id,
        string_serial_number, row_changed_by,row_changed_date, row_created_by, row_created_date, row_quality
    from ppdm.pden
    where pden_id = pold_tlm_id;

    v_detail :=  ', ' || CHR(10) || SQL%ROWCOUNT || ' PDEN records moved';


    update ppdm.tlm_pden_vol_by_month
    set pden_id = pnew_tlm_id
    where pden_id = pold_tlm_id;

    v_detail := v_detail || ', ' || CHR(10) || SQL%ROWCOUNT || ' TLM_PDEN_VOL_BY_MONTH records moved.';

    delete
    from ppdm.pden
    where pden_id = pold_tlm_id;

    ppdm_admin.tlm_process_logger.info('WIM.PDEN_VOL_API: Records moved from TLM ID: ' || pold_tlm_id || ' TO TLM ID: '|| pnew_tlm_id || v_detail);

  end tlm_id_change;

end pden_vol_api;
/