select 1.0 * sum(length) / count(*) as avg1,
       1.0 * avg(length)            as avg2
from film;

select customer_id,
       avg(return_date - rental_date) as avg_rent_duration
from rental
group by 1
order by 2 desc;

select customer_id
from payment
group by customer_id
having bool_and(amount > 2);

select customer_id
from payment
group by customer_id
having min(amount) > 2;


select rating, repeat('*', (count(*) / 10)::int) as "count/10"
from film
where rating is not null
group by rating;