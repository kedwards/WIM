
--RUN AS PPDM_ADMIN USER
DROP USER FME CASCADE;

CREATE USER FME
  IDENTIFIED BY "winter3"
  DEFAULT TABLESPACE APP_DATA
  TEMPORARY TABLESPACE TEMP
  PROFILE DEFAULT
  ACCOUNT UNLOCK;

  -- ROLES 
  --GRANT CONNECT TO FME;  --included in role R_APPBASE: create session
  GRANT RESOURCE TO FME;  --some privileges covered in role R_APPBASE
  GRANT R_APPBASE TO FME;
  GRANT PPDM_RO TO FME;
  
  ALTER USER FME DEFAULT ROLE ALL;  
  
  -- System Privileges for SPATIAL 
  GRANT UNLIMITED TABLESPACE TO FME;
  --GRANT CREATE DATABASE LINK TO FME;
  --GRANT CREATE SESSION TO FME;  --included in role R_APPBASE 
  --GRANT CREATE MATERIALIZED VIEW TO FME;  --included in role R_APPBASE 
  --GRANT CREATE PROCEDURE TO FME;  --included in role R_APPBASE 
  --GRANT CREATE TABLE TO FME;  --included in role R_APPBASE 
  --GRANT CREATE TRIGGER TO FME;  --included in role R_APPBASE 
  --GRANT CREATE VIEW TO FME;  --included in role R_APPBASE 

  -- Tablespace Quotas
  ALTER USER FME QUOTA UNLIMITED ON APP_DATA;
  ALTER USER FME QUOTA UNLIMITED ON APP_INDEXES;

  -- Object Privileges 

  