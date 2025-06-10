select title,
       rating
from film
where rating in ('PG', 'G', 'PG-13');


select title,
       length
from film
where length between 90 and 120;


select title
from film
where title like '%GRAFFITI';


select title,
       rating
from film
where rating not in ('PG', 'G');