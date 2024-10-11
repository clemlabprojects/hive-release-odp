SELECT 'Upgrading MetaStore schema from 2.0.0 to 2.1.0' AS ' ';

-- SOURCE 034-HIVE-13076.mysql.sql;
CREATE TABLE IF NOT EXISTS `KEY_CONSTRAINTS`
(
  `CHILD_CD_ID` BIGINT,
  `CHILD_INTEGER_IDX` INT(11),
  `CHILD_TBL_ID` BIGINT,
  `PARENT_CD_ID` BIGINT NOT NULL,
  `PARENT_INTEGER_IDX` INT(11) NOT NULL,
  `PARENT_TBL_ID` BIGINT NOT NULL,
  `POSITION` BIGINT NOT NULL,
  `CONSTRAINT_NAME` VARCHAR(400) NOT NULL,
  `CONSTRAINT_TYPE` SMALLINT(6)  NOT NULL,
  `UPDATE_RULE` SMALLINT(6),
  `DELETE_RULE` SMALLINT(6),
  `ENABLE_VALIDATE_RELY` SMALLINT(6) NOT NULL,
  PRIMARY KEY (`CONSTRAINT_NAME`, `POSITION`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE INDEX `CONSTRAINTS_PARENT_TABLE_ID_INDEX` ON KEY_CONSTRAINTS (`PARENT_TBL_ID`) USING BTREE;



-- SOURCE 035-HIVE-13395.mysql.sql;
CREATE TABLE WRITE_SET (
  WS_DATABASE varchar(128) NOT NULL,
  WS_TABLE varchar(128) NOT NULL,
  WS_PARTITION varchar(767),
  WS_TXNID bigint NOT NULL,
  WS_COMMIT_ID bigint NOT NULL,
  WS_OPERATION_TYPE char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE TXN_COMPONENTS ADD TC_OPERATION_TYPE char(1);

-- SOURCE 036-HIVE-13354.mysql.sql;
ALTER TABLE COMPACTION_QUEUE ADD CQ_TBLPROPERTIES varchar(2048);
ALTER TABLE COMPLETED_COMPACTIONS ADD CC_TBLPROPERTIES varchar(2048);

UPDATE VERSION SET SCHEMA_VERSION='2.1.0', VERSION_COMMENT='Hive release version 2.1.0' where VER_ID=1;
SELECT 'Finished upgrading MetaStore schema from 2.0.0 to 2.1.0' AS ' ';

