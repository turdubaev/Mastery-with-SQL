select count(customer_id) as customers,
       count(email)       as "customers with email"
from customer;

select count(customer_id)                          as customers,
       count(email)                                as "customers with email",
       (count(email) * 100.0 / count(customer_id)) as "% with email"
from customer;

select count(distinct customer_id)
from payment;

select avg(return_date - rental_date)
from rental;

select sum(amount)
from payment;