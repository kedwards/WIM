DROP DATABASE LINK C_TALISMAN_IHSDATA;

CREATE DATABASE LINK C_TALISMAN_IHSDATA
 CONNECT TO C_TALISMAN
 IDENTIFIED BY <PWD>
 USING 'IHSDATA';
