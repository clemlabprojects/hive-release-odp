-- max allowed length for check value is 255
-- create with check expression length 256
create table t (i int, j string CHECK
	j > '345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234');
