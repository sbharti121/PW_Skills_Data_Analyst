use mavenmovies;
-- Assingment 1--
-- Q1. Identify the primary keys and foreign keys in maven movies db. Discuss the differences
describe actor; -- Primary Key (actor_id)
describe actor_award; -- Primary Key (actor_award_id), foreign keys (Actor_Id)
describe address; -- Primary Key (address_id), foreign keys (city_idactor_award)
describe advisor; -- Primary Key (advisor_id)
describe customer; -- Primary Key (customer_id), foreign keys (store_id,address_id)
describe film; -- Primary Key (film_id), foreign keys (language_id)

-- Q2. List all details of actors
select * from actor;

-- Q3. List all customer information from DB;
select * from customer;

-- Q4. List different countries.
select distinct country from country;

-- Q5. Display all active customers.
select * from customer where active = 1;

-- Q6. List of all rental IDs for customer with ID 1.
select rental_id from rental where customer_id =1;

-- Q7. Display all the films whose rental duration is greater than 5 .
select * from film where rental_duration >5;

-- Q8. List the total number of films whose replacement cost is greater than $15 and less than $20.
select count(*) from film where replacement_cost >15 & replacement_cost< 20;

-- Q9. Find the number of films whose rental rate is less than $1.
select count(*) from film where rental_rate<1;

-- Q10. Display the count of unique first names of actors.
select count(distinct(first_name)) as unique_first_names from actor;

-- Q11. Display the first 10 records from the customer table .
select * from customer limit 10;

-- Q12. Display the first 3 records from the customer table whose first name starts with ‘b’.
select * from customer where first_name like 'b%' limit 3;

-- Q13. Display the names of the first 5 movies which are rated as ‘G’.
select title from film where rating = 'G' limit 5;

-- Q14. Find all customers whose first name starts with "a"
select first_name from customer where first_name like 'a%';

-- Q15. Find all customers whose first name ends with "a".
select first_name from customer where first_name like '%a';

-- Q16. Display the list of first 4 cities which start and end with ‘a’ .
select city from city where city like 'a%a' limit 4;

-- Q17. Find all customers whose first name have "NI" in any position.
select first_name from customer where first_name like '%ni%';

-- Q18. Find all customers whose first name have "r" in the second position .
select first_name from customer where first_name like '_r%';

-- Q19. Find all customers whose first name starts with "a" and are at least 5 characters in length.
select first_name from customer where first_name like 'a%' and length(first_name)=5;

-- Q20. Find all customers whose first name starts with "a" and ends with "o". 
select first_name from customer where first_name like 'a%' and first_name like '%o';

-- Q21. Get the films with pg and pg-13 rating using IN operator.
select title from film where rating in ('PG', 'PG-13');

-- Q22. Get the films with length between 50 to 100 using between operator.
select title from film where length between 50 and 100;

-- Q23. Get the top 50 actors using limit operator.
select * from actor limit 50;

-- Q24. Get the distinct film ids from inventory table.
select distinct(film_id) from inventory;



















