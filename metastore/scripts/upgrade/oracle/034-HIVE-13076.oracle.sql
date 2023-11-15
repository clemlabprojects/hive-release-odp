CREATE TABLE KEY_CONSTRAINTS
(
  CHILD_CD_ID NUMBER,
  CHILD_INTEGER_IDX NUMBER,
  CHILD_TBL_ID NUMBER,
  PARENT_CD_ID NUMBER NOT NULL,
  PARENT_INTEGER_IDX NUMBER NOT NULL,
  PARENT_TBL_ID NUMBER NOT NULL,
  POSITION NUMBER NOT NULL,
  CONSTRAINT_NAME VARCHAR(400) NOT NULL,
  CONSTRAINT_TYPE NUMBER NOT NULL,
  UPDATE_RULE NUMBER,
  DELETE_RULE NUMBER,
  ENABLE_VALIDATE_RELY NUMBER NOT NULL
) ;
ALTER TABLE KEY_CONSTRAINTS ADD CONSTRAINT CONSTRAINTS_PK PRIMARY KEY (CONSTRAINT_NAME, POSITION);
CREATE INDEX CONSTRAINTS_PT_INDEX ON KEY_CONSTRAINTS(PARENT_TBL_ID);
