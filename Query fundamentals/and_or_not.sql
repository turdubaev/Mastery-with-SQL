select rental_id, rental_date
from rental
where customer_id = 388
  and (rental_date >= '2005-01-01' and rental_date < '2006-01-01');


select title, rental_duration, length
from film
where not length > 60;

select title, rental_duration, length
from film
where length <= 60;


select rental_id, rental_date, return_date
from rental
where (return_date > rental_date)
   or (return_date = rental_date)
   or (return_date < rental.rental_date);