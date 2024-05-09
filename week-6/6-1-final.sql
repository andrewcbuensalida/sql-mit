source bad-sakila-schema.sql
source bad-sakila-data.sql
source sakila-schema.sql
source sakila-data.sql
source schools.sql
source education.sql

-- In the file window, type the correct commands to visualize all the tables present in the bad sakila database.

USE bad_sakila;
SHOW TABLES;

-- In the file window, type the commands to display the number of customers across the database.
SELECT COUNT(*) AS total_customers
FROM customer;

-- Suppose you want to retrieve the rows in the actor table where the last_name column values have DER somewhere in the last_name value. Ensure that the resulting table contains the columns actor_id, first_name, and last_name.
SELECT actor_id, first_name, last_name 
FROM actor 
WHERE last_name LIKE '%DER%';

-- Suppose you want to know how many times an address of a store is repeated in the database.
SELECT COUNT(*), address.address
FROM store
JOIN address
ON store.address_id = address.address_id
GROUP BY address.address;

-- Rearrange the code blocks below to retrieve the movie category that has the least amount of sales along with the amount of sales.
USE sakila;
SELECT * FROM sales_by_film_category ORDER BY total_sales LIMIT 1;

-- to export database to sql file, add C:\Program Files\MySQL\MySQL Server 8.0\bin\ to the PATH environment variable, then in command prompt
  mysqldump -u root -p sakila > sakila.sql
-- sakila is the name of the database

-- Suppose that you want to know which movie category has the most sales.
SELECT category, total_sales AS total_sales
FROM sales_by_film_category
ORDER BY total_sales DESC
LIMIT 1;


-- In the next exercise, you will produce a histogram of the city table.
-- For your convenience, the columns on the city table are displayed below:

+-------------+----------------------+------+-----+-------------------+-----------------------------+
| Field       | Type                 | Null | Key | Default           | Extra                       |
+-------------+----------------------+------+-----+-------------------+-----------------------------+
| city_id     | smallint(5) unsigned | NO   | PRI | NULL              | auto_increment              |
| city        | varchar(50)          | NO   |     | NULL              |                             |
| country_id  | smallint(5) unsigned | NO   | MUL | NULL              |                             |
| last_update | timestamp            | NO   |     | CURRENT_TIMESTAMP | on update CURRENT_TIMESTAMP |
+-------------+----------------------+------+-----+-------------------+-----------------------------+

USE sakila;
SELECT num_cities, count(*) AS num_countries, 
RPAD('', count(*), '*') as bar 
FROM 
  (
    select country_id, count(city_id) AS num_cities FROM city GROUP BY 1
  ) a 
GROUP BY 1;


-- get average age
use Schools;
select avg(age_in_years) as average_age from Entries;


-- coalesce null values
USE Schools;
select *, COALESCE(age_in_years, 20.5) as corrected_ages from Entries;