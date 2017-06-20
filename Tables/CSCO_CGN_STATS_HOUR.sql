--------------------------------------------------------
--  DDL for Table CSCO_CGN_STATS_HOUR
--------------------------------------------------------
DROP table csco_cgn_stats_hour2;
CREATE TABLE CSCO_CGN_STATS_HOUR2 (
  FECHA	                  DATE,
  NODE	                  VARCHAR2(255 CHAR),
  CGNINSTANCEID	          VARCHAR2(10 CHAR),
  ACTIVETRANSLATIONS	    NUMBER(15,2),
  CREATERATE	            NUMBER(15,2),
  DELETERATE	            NUMBER(15,2),
  OUTSIDEFORWARDRATE	    NUMBER(15,2),
  INSIDEFORWARDRATE	      NUMBER(15,2),
  DROPSPORTLIMITEXCEEDED	NUMBER(15,2),
  DROPSSYSTEMLIMITREACHED	NUMBER(15,2),
  DROPSRESOURCEDEPLETION	NUMBER(15,2),
  NOTRANSLATIONENTRYDROPS	NUMBER(15,2),
  ADDRESSTOTALLYFREE	    NUMBER(15,2),
  ADDRESSUSED	            NUMBER(15,2),
  NUMBEROFSUBSCRIBERS	    NUMBER(15,2)
 ) NOCOMPRESS NOLOGGING
PARTITION BY RANGE (FECHA ) INTERVAL ( NUMTODSINTERVAL(1,'DAY') ) 
( 
  PARTITION CSCO_CGN_STATS_HOUR_FIRST VALUES LESS THAN ( TO_DATE(' 2017-03-06 00:00:00','SYYYY-MM-DD HH24:MI:SS') )
)
TABLESPACE DEVELOPER ;

   COMMENT ON COLUMN CSCO_CGN_STATS_HOUR.FECHA IS 'Reemplazo de la columna TIMESTAMP por ser palabra reservada';
--------------------------------------------------------
--  DDL for Index CSCO_CGN_STATS_HOUR_PK
--------------------------------------------------------

CREATE UNIQUE INDEX CSCO_CGN_STATS_HOUR_PK ON CSCO_CGN_STATS_HOUR (FECHA, NODE, CGNINSTANCEID) 
--TABLESPACE TBS_HOUR ;
TABLESPACE DEVELOPER ;
--------------------------------------------------------
--  Constraints for Table CSCO_CGN_STATS_HOUR
--------------------------------------------------------

  ALTER TABLE CSCO_CGN_STATS_HOUR ADD CONSTRAINT CSCO_CGN_STATS_HOUR_PK PRIMARY KEY (FECHA, NODE, CGNINSTANCEID)  ENABLE;
  ALTER TABLE CSCO_CGN_STATS_HOUR MODIFY (NUMBEROFSUBSCRIBERS NOT NULL ENABLE);
  ALTER TABLE CSCO_CGN_STATS_HOUR MODIFY (ADDRESSUSED NOT NULL ENABLE);
  ALTER TABLE CSCO_CGN_STATS_HOUR MODIFY (ADDRESSTOTALLYFREE NOT NULL ENABLE);
  ALTER TABLE CSCO_CGN_STATS_HOUR MODIFY (NOTRANSLATIONENTRYDROPS NOT NULL ENABLE);
  ALTER TABLE CSCO_CGN_STATS_HOUR MODIFY (DROPSRESOURCEDEPLETION NOT NULL ENABLE);
  ALTER TABLE CSCO_CGN_STATS_HOUR MODIFY (DROPSSYSTEMLIMITREACHED NOT NULL ENABLE);
  ALTER TABLE CSCO_CGN_STATS_HOUR MODIFY (DROPSPORTLIMITEXCEEDED NOT NULL ENABLE);
  ALTER TABLE CSCO_CGN_STATS_HOUR MODIFY (INSIDEFORWARDRATE NOT NULL ENABLE);
  ALTER TABLE CSCO_CGN_STATS_HOUR MODIFY (OUTSIDEFORWARDRATE NOT NULL ENABLE);
  ALTER TABLE CSCO_CGN_STATS_HOUR MODIFY (DELETERATE NOT NULL ENABLE);
  ALTER TABLE CSCO_CGN_STATS_HOUR MODIFY (CREATERATE NOT NULL ENABLE);
  ALTER TABLE CSCO_CGN_STATS_HOUR MODIFY (ACTIVETRANSLATIONS NOT NULL ENABLE);
  ALTER TABLE CSCO_CGN_STATS_HOUR MODIFY (CGNINSTANCEID NOT NULL ENABLE);
  ALTER TABLE CSCO_CGN_STATS_HOUR MODIFY (NODE NOT NULL ENABLE);
  ALTER TABLE CSCO_CGN_STATS_HOUR MODIFY (FECHA NOT NULL ENABLE);


