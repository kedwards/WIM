ALTER TABLE PPDM.TLM_WELL_CORE_DESCRIPTION
 DROP PRIMARY KEY CASCADE;

DROP TABLE PPDM.TLM_WELL_CORE_DESCRIPTION CASCADE CONSTRAINTS;

CREATE TABLE PPDM.TLM_WELL_CORE_DESCRIPTION
(
  UWI                       VARCHAR2(20 BYTE)   NOT NULL,
  SOURCE                    VARCHAR2(20 BYTE)   NOT NULL,
  CORE_ID                   VARCHAR2(20 BYTE)   NOT NULL,
  DESCRIPTION_OBS_NO        NUMBER(8)           NOT NULL,
  ACTIVE_IND                VARCHAR2(1 BYTE),
  BASE_DEPTH                NUMBER(10,5),
  BASE_DEPTH_OUOM           VARCHAR2(20 BYTE),
  CORE_DESCRIPTION_COMPANY  VARCHAR2(20 BYTE),
  DESCRIPTION_DATE          DATE,
  DIP_ANGLE                 NUMBER(3),
  EFFECTIVE_DATE            DATE,
  EXPIRY_DATE               DATE,
  INTERVAL_THICKNESS        NUMBER(10,5),
  INTERVAL_THICKNESS_OUOM   VARCHAR2(20 BYTE),
  LITHOLOGY_DESC            VARCHAR2(240 BYTE),
  POROSITY_LENGTH           NUMBER(10,5),
  POROSITY_LENGTH_OUOM      VARCHAR2(20 BYTE),
  POROSITY_QUALITY          VARCHAR2(20 BYTE),
  POROSITY_TYPE             VARCHAR2(20 BYTE),
  PPDM_GUID                 VARCHAR2(38 BYTE),
  REMARK                    VARCHAR2(2000 BYTE),
  SHOW_LENGTH               NUMBER(10,5),
  SHOW_LENGTH_OUOM          VARCHAR2(20 BYTE),
  SHOW_TYPE                 VARCHAR2(20 BYTE),
  TOP_DEPTH                 NUMBER(10,5),
  TOP_DEPTH_OUOM            VARCHAR2(20 BYTE),
  ROW_CHANGED_BY            VARCHAR2(30 BYTE),
  ROW_CHANGED_DATE          DATE,
  ROW_CREATED_BY            VARCHAR2(30 BYTE),
  ROW_CREATED_DATE          DATE,
  ROW_QUALITY               VARCHAR2(20 BYTE)
)
TABLESPACE PPDM_DATA
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          80K
            NEXT             80K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;

COMMENT ON TABLE PPDM.TLM_WELL_CORE_DESCRIPTION IS 'WELL CORE DESCRIPTION: The Well Core Description table contains textual lithological description and hydrocarbon shows that may appear in a core by geologic examination or chemical analysis.      ';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.UWI IS 'UNIQUE WELL IDENTIFIER: A unique name, code or number designated as the primary key for this row.';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.SOURCE IS 'SOURCE: The individual, company, state, or government agency designated as the source of information for this row.';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.CORE_ID IS 'CORE ID:  Unique identifier for a well core';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.DESCRIPTION_OBS_NO IS 'DESCRIPTION OBSERVATION NUMBER: A sequence number assigned to allow for multiple core descriptions.    ';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.ACTIVE_IND IS 'ACTIVE INDICATOR:  A Y/N flag indicating whether this row of data is currently active or valid.';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.BASE_DEPTH IS 'BASE DEPTH: Measured depth from the surface to the base of the described interval.    ';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.BASE_DEPTH_OUOM IS 'BASE DEPTH OUOM: Base measured depth original unit of measure.    ';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.CORE_DESCRIPTION_COMPANY IS 'BUSINESS ASSOCIATE:  Unique identifier for a business associate, such as a person, company, regulatory agency, government or consortium. ';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.DESCRIPTION_DATE IS 'DESCRIPTION DATE: Date of the core description.    ';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.DIP_ANGLE IS 'DIP ANGLE: The angle of inclination of bedding planes measured in a core.    ';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.EFFECTIVE_DATE IS 'EFFECTIVE DATE:  The date that the data in this row first came into effect.';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.EXPIRY_DATE IS 'EXPIRY DATE:  The date that the data in this row was no longer active or in effect.';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.INTERVAL_THICKNESS IS 'INTERVAL THICKNESS: Measured bed thickness of the core for description purposes. This may be derived from the difference of the top and base depth.    ';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.INTERVAL_THICKNESS_OUOM IS 'INTERVAL THICKNESS OUOM: Thickness original unit of measure.    ';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.LITHOLOGY_DESC IS 'LITHOLOGY DESCRIPTION: Textual description of the core plug sample lithology.    ';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.POROSITY_LENGTH IS 'POROSITY LENGTH: Total length of the cored interval analyzed for porosity.    ';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.POROSITY_LENGTH_OUOM IS 'POROSITY LENGTH OUOM: Porosity length original unit of measure.    ';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.POROSITY_QUALITY IS 'QUALITY: A reference table describing standard quality indicators.  For example poor, good, very good or excellent.     ';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.POROSITY_TYPE IS 'POROSITY TYPE: The unique identifier for the reference table.';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.PPDM_GUID IS 'PPDM GUID:  This value may be used to provide a global unique identifier for this row of data.  If used, optional PPDM NOT NULL constraints should be created.';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.REMARK IS 'REMARK: Descriptive comments about the core sample.    ';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.SHOW_LENGTH IS 'SHOW LENGTH: That portion of the core interval, expressed as length, exhibiting the indicated quality and type of show.    ';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.SHOW_LENGTH_OUOM IS 'SHOW LENGTH OUOM: Show length original unit of measure.    ';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.SHOW_TYPE IS 'ID: The unique identifier for the reference table.';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.TOP_DEPTH IS 'TOP DEPTH: Measured depth from the surface to the top of the described interval.    ';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.TOP_DEPTH_OUOM IS 'TOP DEPTH OUOM: Top measured depth original unit of measure.    ';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.ROW_CHANGED_BY IS 'ROW CHANGED BY: Application login id of the user who last changed the row.';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.ROW_CHANGED_DATE IS 'ROW CHANGED DATE: System date of the last time the row was changed.';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.ROW_CREATED_BY IS 'ROW CREATED BY:  System user who created this row of data.';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.ROW_CREATED_DATE IS 'ROW CREATED DATE: Date that the row was created on.';

COMMENT ON COLUMN PPDM.TLM_WELL_CORE_DESCRIPTION.ROW_QUALITY IS 'PPDM ROW QUALILTY:  A set of values indicating the quality of data in this row, usually with reference to the method or procedures used to load the data, although other types of quality reference are permitted.';



CREATE INDEX PPDM.TWCRD_BA_IDX ON PPDM.TLM_WELL_CORE_DESCRIPTION
(CORE_DESCRIPTION_COMPANY)
LOGGING
TABLESPACE PPDM_INDEXES
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE INDEX PPDM.TWCRD_OUOM_IDX ON PPDM.TLM_WELL_CORE_DESCRIPTION
(BASE_DEPTH_OUOM)
LOGGING
TABLESPACE PPDM_INDEXES
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE INDEX PPDM.TWCRD_OUOM_IDX1 ON PPDM.TLM_WELL_CORE_DESCRIPTION
(INTERVAL_THICKNESS_OUOM)
LOGGING
TABLESPACE PPDM_INDEXES
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE INDEX PPDM.TWCRD_OUOM_IDX2 ON PPDM.TLM_WELL_CORE_DESCRIPTION
(POROSITY_LENGTH_OUOM)
LOGGING
TABLESPACE PPDM_INDEXES
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE INDEX PPDM.TWCRD_OUOM_IDX3 ON PPDM.TLM_WELL_CORE_DESCRIPTION
(SHOW_LENGTH_OUOM)
LOGGING
TABLESPACE PPDM_INDEXES
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE INDEX PPDM.TWCRD_OUOM_IDX4 ON PPDM.TLM_WELL_CORE_DESCRIPTION
(TOP_DEPTH_OUOM)
LOGGING
TABLESPACE PPDM_INDEXES
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE UNIQUE INDEX PPDM.TWCRD_PK ON PPDM.TLM_WELL_CORE_DESCRIPTION
(UWI, SOURCE, CORE_ID, DESCRIPTION_OBS_NO)
LOGGING
TABLESPACE PPDM_DATA
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE INDEX PPDM.TWCRD_R_PT8_IDX ON PPDM.TLM_WELL_CORE_DESCRIPTION
(POROSITY_TYPE)
LOGGING
TABLESPACE PPDM_INDEXES
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE INDEX PPDM.TWCRD_R_Q_IDX ON PPDM.TLM_WELL_CORE_DESCRIPTION
(POROSITY_QUALITY)
LOGGING
TABLESPACE PPDM_INDEXES
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE INDEX PPDM.TWCRD_R_ST4_IDX ON PPDM.TLM_WELL_CORE_DESCRIPTION
(SHOW_TYPE)
LOGGING
TABLESPACE PPDM_INDEXES
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE INDEX PPDM.TWCRD_WCR_IDX ON PPDM.TLM_WELL_CORE_DESCRIPTION
(UWI, SOURCE, CORE_ID)
LOGGING
TABLESPACE PPDM_INDEXES
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;



ALTER TABLE PPDM.TLM_WELL_CORE_DESCRIPTION ADD (
  CONSTRAINT TWCRD_PK
  PRIMARY KEY
  (UWI, SOURCE, CORE_ID, DESCRIPTION_OBS_NO)
  USING INDEX PPDM.TWCRD_PK
  ENABLE VALIDATE);

ALTER TABLE PPDM.TLM_WELL_CORE_DESCRIPTION ADD (
  CONSTRAINT TWCRD_BA_FK 
  FOREIGN KEY (CORE_DESCRIPTION_COMPANY) 
  REFERENCES PPDM.BUSINESS_ASSOCIATE (BUSINESS_ASSOCIATE)
  ENABLE VALIDATE,
  CONSTRAINT TWCRD_OUOM_FK 
  FOREIGN KEY (BASE_DEPTH_OUOM) 
  REFERENCES PPDM.PPDM_UNIT_OF_MEASURE (UOM_ID)
  ENABLE VALIDATE,
  CONSTRAINT TWCRD_OUOM_FK1 
  FOREIGN KEY (INTERVAL_THICKNESS_OUOM) 
  REFERENCES PPDM.PPDM_UNIT_OF_MEASURE (UOM_ID)
  ENABLE VALIDATE,
  CONSTRAINT TWCRD_OUOM_FK2 
  FOREIGN KEY (POROSITY_LENGTH_OUOM) 
  REFERENCES PPDM.PPDM_UNIT_OF_MEASURE (UOM_ID)
  ENABLE VALIDATE,
  CONSTRAINT TWCRD_OUOM_FK3 
  FOREIGN KEY (SHOW_LENGTH_OUOM) 
  REFERENCES PPDM.PPDM_UNIT_OF_MEASURE (UOM_ID)
  ENABLE VALIDATE,
  CONSTRAINT TWCRD_OUOM_FK4 
  FOREIGN KEY (TOP_DEPTH_OUOM) 
  REFERENCES PPDM.PPDM_UNIT_OF_MEASURE (UOM_ID)
  ENABLE VALIDATE,
  CONSTRAINT TWCRD_R_PT8_FK 
  FOREIGN KEY (POROSITY_TYPE) 
  REFERENCES PPDM.R_POROSITY_TYPE (POROSITY_TYPE)
  ENABLE VALIDATE,
  CONSTRAINT TWCRD_R_Q_FK 
  FOREIGN KEY (POROSITY_QUALITY) 
  REFERENCES PPDM.R_QUALITY (QUALITY)
  ENABLE VALIDATE,
  CONSTRAINT TWCRD_R_ST4_FK 
  FOREIGN KEY (SHOW_TYPE) 
  REFERENCES PPDM.R_SHOW_TYPE (SHOW_TYPE)
  ENABLE VALIDATE,
  CONSTRAINT TWCRD_WCR_FK 
  FOREIGN KEY (UWI, SOURCE, CORE_ID) 
  REFERENCES PPDM.TLM_WELL_CORE (UWI,SOURCE,CORE_ID)
  ENABLE VALIDATE);

GRANT INSERT, SELECT ON PPDM.TLM_WELL_CORE_DESCRIPTION TO DATMANGEO_ADMIN;

GRANT SELECT ON PPDM.TLM_WELL_CORE_DESCRIPTION TO EDIOS_ADMIN;

GRANT SELECT ON PPDM.TLM_WELL_CORE_DESCRIPTION TO PPDM_RO;

GRANT DELETE, INSERT, SELECT, UPDATE ON PPDM.TLM_WELL_CORE_DESCRIPTION TO PPDM_RW;

DROP SYNONYM DATA_FINDER.TLM_WELL_CORE_DESCRIPTION;
CREATE OR REPLACE SYNONYM DATA_FINDER.TLM_WELL_CORE_DESCRIPTION FOR PPDM.TLM_WELL_CORE_DESCRIPTION;


DROP SYNONYM EDIOS_ADMIN.TLM_WELL_CORE_DESCRIPTION;
CREATE OR REPLACE SYNONYM EDIOS_ADMIN.TLM_WELL_CORE_DESCRIPTION FOR PPDM.TLM_WELL_CORE_DESCRIPTION;


DROP SYNONYM PPDM.TWCRD;
CREATE OR REPLACE SYNONYM PPDM.TWCRD FOR PPDM.TLM_WELL_CORE_DESCRIPTION;
