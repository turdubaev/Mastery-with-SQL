select title || ' is ' || coalesce(length || ' minutes', 'unknown length') as length_desc
from film;

select left(title, 3) || repeat('*', (length(title)) - 3) as "Guess!"
from film
order by title;