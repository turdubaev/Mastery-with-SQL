select rental_id, return_date
from rental
where return_date is null;


select title, rating
from film
where (rating != 'G' and rating != 'PG')
   or rating is null;