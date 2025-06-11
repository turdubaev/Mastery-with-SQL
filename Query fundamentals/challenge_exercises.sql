select first_name,
       last_name,
       email
from customer
ORDER BY RANDOM()
limit 5;


select rental_id,
       rental_date
from rental
where date_part('year', rental_date) = '2005'
  and date_part('month', rental_date) = '06';

select rental_id,
       rental_date
from rental
where rental_date between '2005-06-01'
    and '2005-07-01';

select rental_id,
       rental_date
from rental
where rental_date >= '2005-06-01'
  and rental_date < '2005-07-01';



select title,
       rental_rate,
       length,
       (rental_rate / length) as per_minute
from film
where not length = 0 and not length is null
order by per_minute desc
limit 5;


select first_name
from customer
where first_name similar to '%A{1}%A{1}%';

select first_name
from customer
where first_name ilike '%a%a%';



select distinct on(customer_id) customer_id,
                                rental_date
from rental
order by customer_id asc, rental_date desc;

select first_name, 
       last_name, 
       email
from customer
where email != (first_name || '.' || last_name || '@sakilacustomer.org')