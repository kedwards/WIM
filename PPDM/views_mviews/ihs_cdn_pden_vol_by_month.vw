/***************************************************************************************************
 ihs_cdn_pden_vol_by_month  (view)

 20150813 copied from ihs_pden_vol_by_month, adapted code by vrajpoot  (task 1164)
          *** NOTE: MUST join wv.ipl_uwi_local to ihs pden_id ... do not use wv.well_num to join to pden_id
 20150909 cdong
          Hard-code 'UNKNOWN' for x_strat_unit_id if null

 **************************************************************************************************/

--drop view ppdm.ihs_cdn_pden_vol_by_month;


create or replace force view ppdm.ihs_cdn_pden_vol_by_month
(
  pden_id,
  pden_type,
  pden_source,
  volume_method,
  activity_type,
  product_type,
  year,
  amendment_seq_no,
  active_ind,
  amend_reason,
  apr_volume,
  apr_volume_qual,
  aug_volume,
  aug_volume_qual,
  cum_volume,
  dec_volume,
  dec_volume_qual,
  effective_date,
  expiry_date,
  feb_volume,
  feb_volume_qual,
  jan_volume,
  jan_volume_qual,
  jul_volume,
  jul_volume_qual,
  jun_volume,
  jun_volume_qual,
  mar_volume,
  mar_volume_qual,
  may_volume,
  may_volume_qual,
  nov_volume,
  nov_volume_qual,
  oct_volume,
  oct_volume_qual,
  posted_date,
  ppdm_guid,
  remark,
  sep_volume,
  sep_volume_qual,
  volume_end_date,
  volume_ouom,
  volume_quality_ouom,
  volume_start_date,
  volume_uom,
  ytd_volume,
  row_changed_by,
  row_changed_date,
  row_created_by,
  row_created_date,
  row_quality,
  province_state,
  pool_id,
  x_strat_unit_id,
  top_strat_age,
  base_strat_age,
  strat_name_set_id
)
as
  select /*+ use_nl(pvbm wv) */
         wv.uwi AS PDEN_ID,
         pvbm.PDEN_TYPE,
         wv.source as PDEN_SOURCE,
         pvbm.VOLUME_METHOD,
         pvbm.ACTIVITY_TYPE,
         pvbm.PRODUCT_TYPE,
         pvbm.YEAR,
         pvbm.AMENDMENT_SEQ_NO,
         pvbm.ACTIVE_IND,
         pvbm.AMEND_REASON,
         pvbm.APR_VOLUME,
         pvbm.APR_VOLUME_QUAL,
         pvbm.AUG_VOLUME,
         pvbm.AUG_VOLUME_QUAL,
         pvbm.CUM_VOLUME,
         pvbm.DEC_VOLUME,
         pvbm.DEC_VOLUME_QUAL,
         pvbm.EFFECTIVE_DATE,
         pvbm.EXPIRY_DATE,
         pvbm.FEB_VOLUME,
         pvbm.FEB_VOLUME_QUAL,
         pvbm.JAN_VOLUME,
         pvbm.JAN_VOLUME_QUAL,
         pvbm.JUL_VOLUME,
         pvbm.JUL_VOLUME_QUAL,
         pvbm.JUN_VOLUME,
         pvbm.JUN_VOLUME_QUAL,
         pvbm.MAR_VOLUME,
         pvbm.MAR_VOLUME_QUAL,
         pvbm.MAY_VOLUME,
         pvbm.MAY_VOLUME_QUAL,
         pvbm.NOV_VOLUME,
         pvbm.NOV_VOLUME_QUAL,
         pvbm.OCT_VOLUME,
         pvbm.OCT_VOLUME_QUAL,
         pvbm.POSTED_DATE,
         pvbm.PPDM_GUID,
         pvbm.REMARK,
         pvbm.SEP_VOLUME,
         pvbm.SEP_VOLUME_QUAL,
         pvbm.VOLUME_END_DATE,
         pvbm.VOLUME_OUOM,
         pvbm.VOLUME_QUALITY_OUOM,
         pvbm.VOLUME_START_DATE,
         pvbm.VOLUME_UOM,
         pvbm.YTD_VOLUME,
         pvbm.ROW_CHANGED_BY,
         pvbm.ROW_CHANGED_DATE,
         pvbm.ROW_CREATED_BY,
         pvbm.ROW_CREATED_DATE,
         pvbm.ROW_QUALITY,
         pvbm.PROVINCE_STATE,
         pvbm.POOL_ID,
         nvl(pvbm.X_STRAT_UNIT_ID, 'UNKNOWN')   as x_strat_unit_id,
         pvbm.TOP_STRAT_AGE,
         pvbm.BASE_STRAT_AGE,
         pvbm.STRAT_NAME_SET_ID
    from pden_vol_by_month@c_talisman_ihsdata pvbm, well_version wv
   where     wv.ipl_uwi_local = pvbm.pden_id
         and pvbm.pden_type = 'PDEN_WELL'
         and wv.source = '300IPL'
         and wv.active_ind = 'Y'
;


grant select on ppdm.ihs_cdn_pden_vol_by_month to ppdm_ro;
