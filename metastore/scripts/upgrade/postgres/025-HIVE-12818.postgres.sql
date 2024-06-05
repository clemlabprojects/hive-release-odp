CREATE TABLE COMPLETED_COMPACTIONS (
  CC_ID bigint PRIMARY KEY,
  CC_DATABASE varchar(128) NOT NULL,
  CC_TABLE varchar(128) NOT NULL,
  CC_PARTITION varchar(767),
  CC_STATE char(1) NOT NULL,
  CC_TYPE char(1) NOT NULL,
  CC_WORKER_ID varchar(128),
  CC_START bigint,
  CC_END bigint,
  CC_RUN_AS varchar(128),
  CC_HIGHEST_TXN_ID bigint,
  CC_META_INFO bytea,
  CC_HADOOP_JOB_ID varchar(32)
);


