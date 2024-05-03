USE bad_sakila;

SELECT inventory_id, count(rental_id) AS rentals
FROM rental
GROUP BY inventory_id;

--

-- In this exercise, you will use the film_actor table to count how many times an actor has performed in different movies.

SELECT actor.actor_id, count(film_actor.actor_id) AS films
FROM actor
JOIN film_actor
ON actor.actor_id = film_actor.actor_id
GROUP BY actor.actor_id;

-- Now, let’s create a histogram that displays the number of movies each actor has acted in.
-- First find in how many movies each actor has performed in. Then aggregate the number of actors per each amount of films using these results of your first query.

SELECT films, COUNT(actor_id) AS num_actors, REPEAT('*', COUNT(actor_id)) AS bar
FROM
(
  SELECT actor_id, count(actor_id) AS films
  FROM film_actor
  GROUP BY actor_id
) AS f
GROUP BY films;


-- In the next exercise, you will produce a histogram of the city table.


SELECT num_cities, COUNT(*) AS num_countries, REPEAT('*', COUNT(*)) AS bar
FROM (
  SELECT country_id, COUNT(city_id) AS num_cities
  FROM city
  GROUP BY country_id
) AS s
GROUP BY num_cities

-- In the file window, write a query to show a table that contains the columns country_id and city. Order the entries in the column country_id in descending order.

SELECT country_id, city
FROM city
ORDER BY country_id DESC

-- -- Bin the entries of the table you have produced in the previous query with columns country_id and city in the following way:
-- if country_id is lesser or equal than 10, then write ‘Country starts with A’
-- if country_id is between 11 and 17, then write ‘Country starts with B’
-- if country_id is between 18 and 27, then write ‘Country starts with C’
-- if country_id is between 28 and 43, then write ‘Country starts with D, E, F, G, or H’
-- if country_id is between 44 and 70, then write ‘Country starts with I, J, K, L, M, or N’
-- if country_id is between 71 and 91, then write ‘Country starts with O, P, R, or S’
-- if country_id is between 92 and 109, then write ‘Country starts with T, U, V, Y, or Z’
-- Make sure that the resulting table has columns bin and count.

-- output should be
--+-----------------------------------------+-------+
| bin                                     | count |
+-----------------------------------------+-------+
| Country starts with A                   |    28 |
| Country starts with B                   |    39 |
| Country starts with C                   |    80 |
| Country starts with D, E, F, G, or H    |    34 |
| Country starts with I, J, K, L, M, or N |   200 |
| Country starts with O, P, R or S        |   111 |
| Country starts with T, U, V, Y, or Z    |   108 |
+-----------------------------------------+-------+

SELECT (
    CASE
      WHEN country_id <= 10 THEN 'Country starts with A'
      WHEN country_id BETWEEN 11 AND 17 THEN 'Country starts with B'
      WHEN country_id BETWEEN 18 AND 27 THEN 'Country starts with C'
      WHEN country_id BETWEEN 28 AND 43 THEN 'Country starts with D, E, F, G, or H'
      WHEN country_id BETWEEN 44 AND 70 THEN 'Country starts with I, J, K, L, M, or N'
      WHEN country_id BETWEEN 71 AND 91 THEN 'Country starts with O, P, R or S'
      WHEN country_id BETWEEN 92 AND 109 THEN 'Country starts with T, U, V, Y, or Z'
      END
) AS bin, COUNT(*) AS count
FROM city
GROUP BY bin;


--  construct a query to retrieve the details of any customer that have a duplicate customer_id. If any duplicate records are present, the resulting table should have columns customer_id, first_name, last_name, and records.

USE bad_sakila;
SELECT * 
FROM (
  SELECT customer_id, first_name, last_name, count(*) as records 
  FROM customer 
  GROUP BY 1,2,3 
  ORDER BY records DESC
  ) a 
WHERE records >1;