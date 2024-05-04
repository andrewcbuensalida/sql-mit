-- To replicate database from codio assignment, in codio > Project > Export as zip. Then copy path of the sql file. On windows, open mysql command line client. enter password. enter source path/to/sqlfile.sql. Now you can see the database in mysql workbench.

USE Times;

--retrieve all the records where order date is equal to 2008-11-11.
SELECT * 
FROM Orders 
WHERE OrderDate = '2008-11-11';

-- retrieve the difference, in days, between the placements for Steaks and Cheese.
-- Ensure that the output table has a column named DiffDate.

-- Remember, the Orders table has the following entries:
-- +---------+-------------+------------+
-- | OrderID | ProductName | OrderDate  |
-- +---------+-------------+------------+
-- |       1 | Steak       | 2008-11-11 |
-- |       2 | Cheese      | 2008-10-13 |
-- |       3 | Vegetables  | 2008-11-11 |
-- |       4 | Chicken     | 2008-10-31 |
-- |       5 | Fruit       | 2008-10-31 |
+---------+-------------+------------+

USE Times;
SELECT DATEDIFF('2008-11-11', '2008-10-13') AS DiffDate;

USE Times;
select TIMEDIFF('07:24:09','08:10:45') AS TimeDiff;

SELECT SUBTIME('07:35:45', '0:17:00') as updated_order_time;

select from_unixtime(599462445.99999) as Unix;