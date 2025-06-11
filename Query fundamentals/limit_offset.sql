select payment_id,
       payment_date
from payment
order by payment_date desc
limit 3;


select title,
       length,
       rating
from film
where not rating = 'R'
order by length, title
limit 4;


select payment_id,
       amount,
       payment_date
from payment
WHERE payment_date >= '2007-01-01'
  AND payment_date < '2007-02-01'
order by payment_date desc
limit 3;