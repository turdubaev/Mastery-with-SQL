select first_name, 
       length(first_name)
from customer;


select first_name,
       last_name,
       left(first_name, 1) || left(last_name, 1) as initial
from customer;


select title, 
       rental_rate, 
       replacement_cost, 
       ceil(replacement_cost / rental_rate) as "rentals to break-even"
from film;