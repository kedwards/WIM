CREATE OR REPLACE PACKAGE WIM.well_core_api
is

/*--------------------------------------------------------------------------------------------------------------------

 PURPOSE:
  Move dependent/associated well-data from one well to another. Basically, update the well-id in the associated records.
  Move data in Well Core tables

  Procedure does NOT COMMIT the change to allow caller to apply as part of wider transaction.

 DEPENDENCIES
   ppdm.TLM_WELL_CORE
   ppdm.WELL_CORE_ANALYSIS
   ppdm.TLM_CORE_SAMPLE_ANAL
   ppdm.TLM_WELL_CORE_SAMPLE_DESC

 EXECUTION:
   Typically, this is invoked by WIM.EXTERNAL_DEPENDENCIES.WELL_MOVE, when the last active well version is moved
   @param  pold_tlm_id - the original/old id of the well-version to be moved
   @param  pnew_tlm_id - the target/new id of well-version to be moved

 HISTORY:
   0.1    xx-xxx-xxx  -unknown- Initial version
   0.2    2015-11-05  kxedward  QC555/QC1480 - update External Dependencies and related move API's


 --------------------------------------------------------------------------------------------------------------------*/

  procedure tlm_id_change (
    pold_tlm_id   in  varchar2,
    pnew_tlm_id   in  varchar2
  );

end well_core_api;
/