mysql
source bad-sakila-schema.sql
source bad-sakila-data.sql
USE bad_sakila;


SHOW TABLES;

SHOW TABLE STATUS;


SELECT actor_id, first_name, last_name 
FROM actor 
WHERE last_name LIKE '%GEN%';


-- Suppose you want to know how many films each actor with the same first name participated in.


SELECT COUNT(*), actor.first_name
FROM actor
JOIN film_actor
ON actor.actor_id = film_actor.actor_id
GROUP BY actor.first_name;
--

Query 1: 

SELECT actor.actor_id, actor.first_name, actor.last_name, COUNT(film_actor.film_id) as film_count 
FROM actor 
JOIN film_actor ON actor.actor_id = film_actor.actor_id 
GROUP BY actor.actor_id, actor.first_name, actor.last_name 
ORDER BY film_count DESC 
LIMIT 1;

Describe the output: This query would output the actor with the most films in the database, Fay Winslet.

Why it is helpful understanding the database: It is helpful because it shows that there is a bridge table (aka association table, join table) between films and actors, meaning there is a many to many relationship, an actor can have many films, a film can have many actors.

Query 2: 

SELECT film.title, SUM(payment.amount) as total_payment 
FROM film 
JOIN inventory ON film.film_id = inventory.film_id 
JOIN rental ON inventory.inventory_id = rental.inventory_id 
JOIN payment ON rental.rental_id = payment.rental_id 
GROUP BY film.title 
ORDER BY total_payment DESC 
LIMIT 5;

Describe the output: This query would output the top 5 films with the highest total payment amounts.

Why it is helpful understanding the database: It is helpful because it shows how the inventory tables connect to the business tables.

Query 3:


SELECT country.country, COUNT(DISTINCT customer.customer_id) as customer_count
FROM film_category
JOIN category ON film_category.category_id = category.category_id
JOIN film ON film_category.film_id = film.film_id
JOIN inventory ON film.film_id = inventory.film_id
JOIN rental ON inventory.inventory_id = rental.inventory_id
JOIN customer ON rental.customer_id = customer.customer_id
JOIN address ON customer.address_id = address.address_id
JOIN city ON address.city_id = city.city_id
JOIN country ON city.country_id = country.country_id
WHERE category.name = 'Children'
GROUP BY country.country
ORDER BY customer_count DESC
LIMIT 5;

Describe the output: This query would output the top 5 Countries with the most customers that rented Children's films.

Why it is helpful understanding the database: It is helpful because it shows how the customer's tables connect to the business tables and the films tables.


--

