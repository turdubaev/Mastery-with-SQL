select round(100.0 * count(case when rating = 'NC-17' then 1 end) / count(*))  as "NC-17%",
       round(100.0 * count(case when rating = 'PG' then 1 end) / count(*))  as "PG%",
       round(100.0 * count(case when rating = 'G' then 1 end) / count(*))  as "G%",
       round(100.0 * count(case when rating = 'R' then 1 end) / count(*))  as "R%",
       round(100.0 * count(case when rating = 'PG-13' then 1 end) / count(*))  as "PG-13%"
from film;


select int '33';
select int '33.3';
select cast(33.3 as int);
select cast(33.8 as int);
select 33::text;
select 'hello'::varchar(2);
select cast(35000 as smallint);
select 12.1::numeric(1,1);