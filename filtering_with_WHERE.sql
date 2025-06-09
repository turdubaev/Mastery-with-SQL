select title, rating
from film
where rating = 'G';

select title, length
from film
where length > 120;

select rental_id, rental_date
from rental
where rental_date < '2005-06-01';

select title, 
       replacement_cost, 
       ceil(replacement_cost / rental_rate) as "rentals to break-even"
from film
where ceil(replacement_cost / rental_rate) > 30;