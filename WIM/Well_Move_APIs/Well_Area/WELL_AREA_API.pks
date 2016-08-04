CREATE OR REPLACE PACKAGE WIM.well_area_api
is

/*--------------------------------------------------------------------------------------------------------------------

 PURPOSE:
  Move dependent/associated well-data from one well to another. Basically, update the well-id in the associated records.
  Move data in WELL_AREA system

  Reassign items in the WELL_AREA  table to a new TLM Well ID.
  Used when wells are merged or split to ensure WELL_AREA data is linked to the correct TLM IDs.

  Procedure does NOT COMMIT the change to allow caller to apply as part of wider transaction.

 DEPENDENCIES
   PPDM.WELL_AREA

 EXECUTION:
   Typically, this is invoked by WIM.EXTERNAL_DEPENDENCIES.WELL_MOVE, when the last active well version is moved
   @param  pold_tlm_id - the original/old id of the well-version to be moved
   @param  pnew_tlm_id - the target/new id of well-version to be moved

 HISTORY:
   0.1    9-June-11   VRajpoot  Initial version
   0.2    16-Jan-12   VRajpoot  Added Detail logs (counts) to the TLM_Process_Log
   0.3    2015-11-05  kxedward  QC555/QC1480 - update External Dependencies and related move API's


 --------------------------------------------------------------------------------------------------------------------*/

  procedure tlm_id_change (
    pold_tlm_id   in  varchar2,
    pnew_tlm_id   in  varchar2
  );

end well_area_api;
/