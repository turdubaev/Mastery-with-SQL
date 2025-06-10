select first_name,
       last_name
from customer
where email is not null
order by last_name desc;


select country_id,
       city
from city
order by country_id, city;


select first_name || ' ' || last_name as full_name,
       length(first_name || ' ' || last_name) as len
from actor
order by len desc;