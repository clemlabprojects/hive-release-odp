-- Test HIVE-16019
drop table if exists test_n0;
create table test_n0(key int, value1 int, value2 string);
insert into table test_n0 values (1, 1, 'val111'), (1, 2, 'val121'), (1, 3, 'val131'), (2, 1, 'val211'), (2, 2, 'val221'), (2, 2, 'val222'), (2, 3, 'val231'), (2, 4, 'val241'),
(3, 1, 'val311'), (3, 2, 'val321'), (3, 2, 'val322'), (3, 3, 'val331'), (3, 3, 'val332'), (3, 3, 'val333'), (4, 1, 'val411');

set hive.cbo.enable=true;
EXPLAIN SELECT T1.KEY AS MYKEY FROM TEST_n0 T1 GROUP BY T1.KEY ORDER BY T1.KEY LIMIT 3;
SELECT T1.KEY AS MYKEY FROM TEST_n0 T1 GROUP BY T1.KEY ORDER BY T1.KEY LIMIT 3;

EXPLAIN SELECT T1.KEY AS MYKEY, MAX(T1.VALUE1) AS MYVALUE1 FROM TEST_n0 T1 GROUP BY T1.KEY ORDER BY T1.KEY LIMIT 3;
SELECT T1.KEY AS MYKEY, MAX(T1.VALUE1) AS MYVALUE1 FROM TEST_n0 T1 GROUP BY T1.KEY ORDER BY T1.KEY LIMIT 3;

EXPLAIN SELECT T1.KEY AS MYKEY, COUNT(T1.VALUE1) AS MYVALUE1, 'AAA' AS C FROM TEST_n0 T1 GROUP BY T1.KEY, 'AAA' ORDER BY T1.KEY, 'AAA' LIMIT 3;
SELECT T1.KEY AS MYKEY, COUNT(T1.VALUE1) AS MYVALUE1, 'AAA' AS C FROM TEST_n0 T1 GROUP BY T1.KEY, 'AAA' ORDER BY T1.KEY, 'AAA' LIMIT 3;

set hive.cbo.enable=false;
EXPLAIN SELECT T1.KEY AS MYKEY FROM TEST_n0 T1 GROUP BY T1.KEY ORDER BY T1.KEY LIMIT 3;
SELECT T1.KEY AS MYKEY FROM TEST_n0 T1 GROUP BY T1.KEY ORDER BY T1.KEY LIMIT 3;

EXPLAIN SELECT T1.KEY AS MYKEY, MAX(T1.VALUE1) AS MYVALUE1 FROM TEST_n0 T1 GROUP BY T1.KEY ORDER BY T1.KEY LIMIT 3;
SELECT T1.KEY AS MYKEY, MAX(T1.VALUE1) AS MYVALUE1 FROM TEST_n0 T1 GROUP BY T1.KEY ORDER BY T1.KEY LIMIT 3;

EXPLAIN SELECT T1.KEY AS MYKEY, COUNT(T1.VALUE1) AS MYVALUE1, 'AAA' AS C FROM TEST_n0 T1 GROUP BY T1.KEY, 'AAA' ORDER BY T1.KEY, 'AAA' LIMIT 3;
SELECT T1.KEY AS MYKEY, COUNT(T1.VALUE1) AS MYVALUE1, 'AAA' AS C FROM TEST_n0 T1 GROUP BY T1.KEY, 'AAA' ORDER BY T1.KEY, 'AAA' LIMIT 3;

