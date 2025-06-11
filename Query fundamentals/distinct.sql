select distinct rating
from film
where not rating is null
order by rating;


select distinct date_part('hour', rental_date) as hour
from rental
order by hour;


select distinct rental_duration, rental_rate
from film
order by rental_duration;