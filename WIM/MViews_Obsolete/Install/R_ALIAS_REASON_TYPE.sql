{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fmodern Courier;}{\f1\fnil\fcharset0 Courier New;}}
{\colortbl ;\red0\green0\blue255;\red255\green255\blue255;\red0\green0\blue0;\red128\green128\blue0;\red128\green0\blue0;\red0\green128\blue0;\red255\green0\blue0;}
{\*\generator Msftedit 5.41.21.2509;}\viewkind4\uc1\pard\cf1\highlight2\f0\fs20 DROP\cf3  \cf1 MATERIALIZED\cf3  \cf1 VIEW\cf3  PPDM\cf1 .\cf4 R_ALIAS_REASON_TYPE\cf1 ;\cf3\par
\cf1 CREATE\cf3  \cf1 MATERIALIZED\cf3  \cf1 VIEW\cf3  PPDM\cf1 .\cf4 R_ALIAS_REASON_TYPE\cf3  \par
\cf1 TABLESPACE\cf3  PPDMDATA\par
\cf1 PCTUSED\cf3     \cf5 40\cf3\par
\cf1 PCTFREE\cf3     \cf5 0\cf3\par
\cf1 INITRANS\cf3    \cf5 2\cf3\par
\cf1 MAXTRANS\cf3    \cf5 255\cf3\par
\cf1 STORAGE\cf3     \cf1 (\cf3\par
            \cf1 INITIAL\cf3           \cf5 64\cf1 K\cf3\par
            \cf1 NEXT\cf3              \cf5 1\cf1 M\cf3\par
            \cf1 MINEXTENTS\cf3        \cf5 1\cf3\par
            \cf1 MAXEXTENTS\cf3        \cf1 UNLIMITED\cf3\par
            \cf1 PCTINCREASE\cf3       \cf5 0\cf3\par
            \cf1 FREELISTS\cf3         \cf5 1\cf3\par
            \cf1 FREELIST\cf3  \cf1 GROUPS\cf3   \cf5 1\cf3\par
            \cf1 BUFFER_POOL\cf3       \cf1 DEFAULT\cf3\par
           \cf1 )\cf3\par
\cf1 NOCACHE\cf3\par
\cf1 NOLOGGING\cf3\par
\cf1 NOPARALLEL\cf3\par
\cf1 BUILD\cf3  \cf1 IMMEDIATE\cf3\par
\cf1 USING\cf3  \cf1 INDEX\cf3\par
            \cf1 TABLESPACE\cf3  PPDMINDEX\par
            \cf1 PCTFREE\cf3     \cf5 0\cf3\par
            \cf1 INITRANS\cf3    \cf5 2\cf3\par
            \cf1 MAXTRANS\cf3    \cf5 255\cf3\par
            \cf1 STORAGE\cf3     \cf1 (\cf3\par
                        \cf1 INITIAL\cf3           \cf5 64\cf1 K\cf3\par
                        \cf1 NEXT\cf3              \cf5 1\cf1 M\cf3\par
                        \cf1 MINEXTENTS\cf3        \cf5 1\cf3\par
                        \cf1 MAXEXTENTS\cf3        \cf1 UNLIMITED\cf3\par
                        \cf1 PCTINCREASE\cf3       \cf5 0\cf3\par
                        \cf1 FREELISTS\cf3         \cf5 1\cf3\par
                        \cf1 FREELIST\cf3  \cf1 GROUPS\cf3   \cf5 1\cf3\par
                        \cf1 BUFFER_POOL\cf3       \cf1 DEFAULT\cf3\par
                       \cf1 )\cf3\par
\cf1 REFRESH\cf3  \cf1 FORCE\cf3  \cf1 ON\cf3  \cf1 DEMAND\cf3\par
\cf1 WITH\cf3  \cf1 PRIMARY\cf3  \cf1 KEY\cf3\par
\cf1 AS\cf3  \par
\cf6\i /* Formatted on 2010/05/31 08:14 (Formatter Plus v4.8.8) */\cf3\i0\par
\cf1 SELECT\cf3  r\cf1 .\cf3 reason_type\cf1 ,\cf3  r\cf1 .\cf3 abbreviation\cf1 ,\cf3  r\cf1 .\cf3 active_ind\cf1 ,\cf3  r\cf1 .\cf3 effective_date\cf1 ,\cf3\par
       r\cf1 .\cf3 expiry_date\cf1 ,\cf3  r\cf1 .\cf3 long_name\cf1 ,\cf3  r\cf1 .\cf3 ppdm_guid\cf1 ,\cf3  r\cf1 .remark,\cf3  r\cf1 .\cf3 short_name\cf1 ,\cf3\par
       r\cf1 .SOURCE,\cf3  r\cf1 .\cf3 row_changed_by\cf1 ,\cf3  r\cf1 .\cf3 row_changed_date\cf1 ,\cf3  r\cf1 .\cf3 row_created_by\cf1 ,\cf3\par
       r\cf1 .\cf3 row_created_date\cf1 ,\cf3  r\cf1 .\cf3 ipl_xaction_code\cf1 ,\cf3  r\cf1 .\cf3 row_quality\cf1 ,\cf3\par
       \cf1 CAST\cf3  \cf1 (\cf7 'IPL_ALIAS_REASON_TYPE'\cf3  \cf1 AS\cf3  \cf7 VARCHAR2\cf3  \cf1 (\cf5 30\cf1 ))\cf3  \cf1 AS\cf3  source_table_name\par
  \cf1 FROM\cf3  ppdm\cf1 .\cf4 ipl_r_alias_reason_type\cf3  r\par
\cf1 UNION\cf3  \cf1 ALL\cf3\par
\cf1 SELECT\cf3  \cf1 t.\cf3 reason_type\cf1 ,\cf3  \cf1 t.\cf3 abbreviation\cf1 ,\cf3  \cf1 t.\cf3 active_ind\cf1 ,\cf3  \cf1 t.\cf3 effective_date\cf1 ,\cf3\par
       \cf1 t.\cf3 expiry_date\cf1 ,\cf3  \cf1 t.\cf3 long_name\cf1 ,\cf3  \cf1 t.\cf3 ppdm_guid\cf1 ,\cf3  \cf1 t.remark,\cf3  \cf1 t.\cf3 short_name\cf1 ,\cf3\par
       \cf1 t.SOURCE,\cf3  \cf1 t.\cf3 row_changed_by\cf1 ,\cf3  \cf1 t.\cf3 row_changed_date\cf1 ,\cf3  \cf1 t.\cf3 row_created_by\cf1 ,\cf3\par
       \cf1 t.\cf3 row_created_date\cf1 ,\cf3  \cf1 CAST\cf3  \cf1 (NULL\cf3  \cf1 AS\cf3  \cf7 VARCHAR2\cf3  \cf1 (\cf5 1\cf1 ))\cf3  \cf1 AS\cf3  ipl_action_code\cf1 ,\cf3\par
       \cf1 t.\cf3 row_quality\cf1 ,\cf3\par
       \cf1 CAST\cf3  \cf1 (\cf7 'TLM_R_ALIAS_REASON_TYPE'\cf3  \cf1 AS\cf3  \cf7 VARCHAR2\cf3  \cf1 (\cf5 30\cf1 ))\cf3  \cf1 AS\cf3  source_table_name\par
  \cf1 FROM\cf3  ppdm\cf1 .\cf4 tlm_r_alias_reason_type\cf3  \cf1 t\cf3\par
 \cf1 WHERE\cf3  \cf1 t.\cf3 reason_type \cf1 NOT\cf3  \cf1 IN\cf3  \cf1 (SELECT\cf3  i\cf1 .\cf3 reason_type\par
                               \cf1 FROM\cf3  ppdm\cf1 .\cf4 ipl_r_alias_reason_type\cf3  i\cf1 );\cf3\par
\par
\cf1 COMMENT\cf3  \cf1 ON\cf3  \cf1 TABLE\cf3  PPDM\cf1 .\cf4 R_ALIAS_REASON_TYPE\cf3  \cf1 IS\cf3  \cf7 'snapshot table for snapshot PPDM.R_ALIAS_REASON_TYPE'\cf1 ;\cf3\par
\par
\cf1 CREATE\cf3  \cf1 UNIQUE\cf3  \cf1 INDEX\cf3  PPDM\cf1 .\cf3 MV_RART_PK \cf1 ON\cf3  PPDM\cf1 .\cf4 R_ALIAS_REASON_TYPE\cf3\par
\cf1 (\cf3 REASON_TYPE\cf1 )\cf3\par
\cf1 NOLOGGING\cf3\par
\cf1 TABLESPACE\cf3  PPDMINDEX\par
\cf1 PCTFREE\cf3     \cf5 0\cf3\par
\cf1 INITRANS\cf3    \cf5 2\cf3\par
\cf1 MAXTRANS\cf3    \cf5 255\cf3\par
\cf1 STORAGE\cf3     \cf1 (\cf3\par
            \cf1 INITIAL\cf3           \cf5 64\cf1 K\cf3\par
            \cf1 NEXT\cf3              \cf5 1\cf1 M\cf3\par
            \cf1 MINEXTENTS\cf3        \cf5 1\cf3\par
            \cf1 MAXEXTENTS\cf3        \cf1 UNLIMITED\cf3\par
            \cf1 PCTINCREASE\cf3       \cf5 0\cf3\par
            \cf1 FREELISTS\cf3         \cf5 1\cf3\par
            \cf1 FREELIST\cf3  \cf1 GROUPS\cf3   \cf5 1\cf3\par
            \cf1 BUFFER_POOL\cf3       \cf1 DEFAULT\cf3\par
           \cf1 )\cf3\par
\cf1 NOPARALLEL;\cf3\par
\par
\cf1 GRANT\cf3  \cf1 SELECT\cf3  \cf1 ON\cf3  PPDM\cf1 .\cf4 R_ALIAS_REASON_TYPE\cf3  \cf1 TO\cf3  AMT_READ\cf1 ;\cf3\par
\par
\cf1 GRANT\cf3  \cf1 SELECT\cf3  \cf1 ON\cf3  PPDM\cf1 .\cf4 R_ALIAS_REASON_TYPE\cf3  \cf1 TO\cf3  EDIOS_ADMIN\cf1 ;\cf3\par
\par
\cf1 GRANT\cf3  \cf1 SELECT\cf3  \cf1 ON\cf3  PPDM\cf1 .\cf4 R_ALIAS_REASON_TYPE\cf3  \cf1 TO\cf3  PPDM_BROWSE\cf1 ;\cf3\par
\par
\cf1 GRANT\cf3  \cf1 DELETE,\cf3  \cf1 INSERT,\cf3  \cf1 SELECT,\cf3  \cf1 UPDATE\cf3  \cf1 ON\cf3  PPDM\cf1 .\cf4 R_ALIAS_REASON_TYPE\cf3  \cf1 TO\cf3  PPDM_CHANGE\cf1 ;\cf3\par
\par
\cf1 GRANT\cf3  \cf1 SELECT\cf3  \cf1 ON\cf3  PPDM\cf1 .\cf4 R_ALIAS_REASON_TYPE\cf3  \cf1 TO\cf3  PPDM_OW\cf1 ;\cf3\par
\par
\cf1 GRANT\cf3  \cf1 SELECT\cf3  \cf1 ON\cf3  PPDM\cf1 .\cf4 R_ALIAS_REASON_TYPE\cf3  \cf1 TO\cf3  PPDM_READ\cf1 ;\cf3\par
\par
\cf1 GRANT\cf3  \cf1 DELETE,\cf3  \cf1 INSERT,\cf3  \cf1 SELECT,\cf3  \cf1 UPDATE\cf3  \cf1 ON\cf3  PPDM\cf1 .\cf4 R_ALIAS_REASON_TYPE\cf3  \cf1 TO\cf3  PPDM_WRITE\cf1 ;\cf3\par
\par
\cf1 GRANT\cf3  \cf1 INSERT,\cf3  \cf1 SELECT\cf3  \cf1 ON\cf3  PPDM\cf1 .\cf4 R_ALIAS_REASON_TYPE\cf3  \cf1 TO\cf3  SDP\cf1 ;\cf3\par
\par
\cf1 GRANT\cf3  \cf1 DELETE,\cf3  \cf1 INSERT,\cf3  \cf1 SELECT,\cf3  \cf1 UPDATE\cf3  \cf1 ON\cf3  PPDM\cf1 .\cf4 R_ALIAS_REASON_TYPE\cf3  \cf1 TO\cf3  SDP_PPDM\cf1 ;\cf3\par
\par
\cf1 GRANT\cf3  \cf1 DELETE,\cf3  \cf1 INSERT,\cf3  \cf1 SELECT,\cf3  \cf1 UPDATE\cf3  \cf1 ON\cf3  PPDM\cf1 .\cf4 R_ALIAS_REASON_TYPE\cf3  \cf1 TO\cf3  UPDATE_OBJECTS\cf1 ;\cf0\highlight0\f1\par
}
 