DROP DATABASE LINK "C_TLM_PROBE.WORLD";

CREATE DATABASE LINK "C_TLM_PROBE.WORLD"
 CONNECT TO C_TLM_PROBE_STG
 IDENTIFIED BY <PWD>
 USING 'IHSDATAQ';
