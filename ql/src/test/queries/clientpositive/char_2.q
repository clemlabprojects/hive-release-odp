--! qt:dataset:src
drop table char_2_n1;

create table char_2_n1 (
  key char(10),
  value char(20)
);

insert overwrite table char_2_n1 select * from src;

select value, sum(cast(key as int)), count(*) numrows
from src
group by value
order by value asc
limit 5;

-- should match the query from src
select value, sum(cast(key as int)), count(*) numrows
from char_2_n1
group by value
order by value asc
limit 5;

select value, sum(cast(key as int)), count(*) numrows
from src
group by value
order by value desc
limit 5;

-- should match the query from src
select value, sum(cast(key as int)), count(*) numrows
from char_2_n1
group by value
order by value desc
limit 5;

drop table char_2_n1;
