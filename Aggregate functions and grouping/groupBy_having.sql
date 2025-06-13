select actor_id,
       count(*) as nun_films
from film_actor
group by actor_id
order by nun_films desc;

select customer_id, count(*)
from rental
group by customer_id
having count(*) > 40;

select date_part('year', payment_date)  as year,
       date_part('month', payment_date) as month,
       staff_id,
       count(*)                         as nun_payments,
       sum(amount)                      as payment_total,
       avg(amount)                      as avg_payment_amount
from payment
group by year, month, staff_id
order by year, month, staff_id;

select sum(case when return_date - rental_date < interval '3 days' then 1 else 0 end)  as "lt 3 days",
       sum(case when return_date - rental_date >= interval '3 days' then 1 else 0 end) as "gt 3 days",
       sum(case when return_date is null then 1 else 0 end)                            as "never returned"
from rental;

select count(*) filter
    (where return_date - rental_date < interval '3 days')         as "lt 3 days",
       count(*) filter
           (where return_date - rental_date >= interval '3 days') as "gt 3 days",
       count(*) filter
           (where return_date is null)                            as "never returned"
from rental;

select case
           when length < 60 then '0-1hrs'
           when length between 60 and 119 then '1-2hrs'
           when length between 120 and 179 then '2-3hrs'
           else '3hrs+'
           end as "length",
       count(*)
from film
group by 1
order by 1;
