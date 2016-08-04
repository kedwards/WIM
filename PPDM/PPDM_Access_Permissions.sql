-- SCRIPT: PPDM_Access_Permissions.sql
--
-- PURPOSE:
--   Grants specific access permissions on the PPDM schema objects
--
--   This initial version is just capturing the missing permissions and changes
--    rather than being a comprehensive script for all permissions yet.
--
-- DEPENDENCIES
--   None
--
-- EXECUTION:
--   Can be executed from SQLPLUS or Toad
--
--   Syntax:
--    N/A
--
-- HISTORY:
--   18-May-10 R. Masterman  Initial version


--  ******************************
--  Run as PPDM on PET*
--  ******************************



--  ******************************
--    Well tables
--  ******************************

GRANT SELECT ON WELL TO GEOWIZ, GEOWIZ_SURVEY;
GRANT SELECT ON WELL_VERSION TO GEOWIZ, GEOWIZ_SURVEY;
GRANT SELECT ON WELL_NODE TO GEOWIZ, GEOWIZ_SURVEY;
GRANT SELECT ON WELL_NODE_M_B TO GEOWIZ, GEOWIZ_SURVEY;;


--  ******************************
--    Coord tables
--  ******************************

GRANT SELECT ON CS_ALIAS TO GEOWIZ;
GRANT SELECT, INSERT, UPDATE, DELETE ON CS_ALIAS TO GEOWIZ_SURVEY;

GRANT SELECT ON CS_COORD_ACQUISITION TO GEOWIZ;
GRANT SELECT, INSERT, UPDATE, DELETE ON CS_COORD_ACQUISITION TO GEOWIZ_SURVEY;

GRANT SELECT ON CS_COORD_TRANS_PARM TO GEOWIZ;
GRANT SELECT, INSERT, UPDATE, DELETE ON CS_COORD_TRANS_PARM TO GEOWIZ_SURVEY;

GRANT SELECT ON CS_COORD_TRANS_VALUE TO GEOWIZ;
GRANT SELECT, INSERT, UPDATE, DELETE ON CS_COORD_TRANS_VALUE TO GEOWIZ_SURVEY;

GRANT SELECT ON CS_COORD_TRANSFORM TO GEOWIZ;
GRANT SELECT, INSERT, UPDATE, DELETE ON CS_COORD_TRANSFORM TO GEOWIZ_SURVEY;

GRANT SELECT ON CS_COORDINATE_SYSTEM TO GEOWIZ;
GRANT SELECT, INSERT, UPDATE, DELETE ON CS_COORDINATE_SYSTEM TO GEOWIZ_SURVEY;

GRANT SELECT ON CS_ELLIPSOID TO GEOWIZ;
GRANT SELECT, INSERT, UPDATE, DELETE ON CS_ELLIPSOID TO GEOWIZ_SURVEY;

GRANT SELECT ON CS_GEODETIC_DATUM TO GEOWIZ;
GRANT SELECT, INSERT, UPDATE, DELETE ON CS_GEODETIC_DATUM TO GEOWIZ_SURVEY;

GRANT SELECT ON CS_PRIME_MERIDIAN TO GEOWIZ;
GRANT SELECT, INSERT, UPDATE, DELETE ON CS_PRIME_MERIDIAN TO GEOWIZ_SURVEY;

GRANT SELECT ON CS_PRINCIPAL_MERIDIAN TO GEOWIZ;
GRANT SELECT, INSERT, UPDATE, DELETE ON CS_PRINCIPAL_MERIDIAN TO GEOWIZ_SURVEY;


--  ******************************
--    Formations
--  ******************************



--  ******************************
--    Reference Tables
--  ******************************
GRANT SELECT on R_DIR_SRVY_COMPUTE TO GEOWIZ_SURVEY;
GRANT SELECT on R_DIR_SRVY_CLASS TO GEOWIZ_SURVEY;
GRANT SELECT on R_NORTH TO GEOWIZ_SURVEY;
GRANT SELECT on R_WELL_DATUM_TYPE TO GEOWIZ_SURVEY;

