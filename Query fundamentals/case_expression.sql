select distinct rating,
                case rating
                    when 'G' then 'General'
                    when 'PG' then 'Parental Guidance Recommended'
                    when 'PG-13' then 'Parents Strongly Cautioned'
                    when 'R' then 'Restricted'
                    when 'NC-17' then 'Adults Only'
                    end as rating_description
from film
where not rating is null
order by rating;


select rental_id,
       rental_date,
       return_date,
       case
           when return_date is null then 'Not Returned'
           else 'Returned'
           end as return_status
from rental
order by return_status;


select country
from country
order by case
             country
             when 'Australia' then 1
             when 'United Kingdom' then 2
             when 'United States' then 3 end, country;