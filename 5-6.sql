USE education;

SELECT *
FROM Students
ORDER BY City DESC;

SELECT *
FROM Students
ORDER BY BirthDate, Region;

SELECT Name, City, Students, Country
FROM Colleges
WHERE Country = 'USA' AND Students BETWEEN 21 AND 51
ORDER BY Students;

SELECT Count(*) AS Count, City 
FROM Colleges
GROUP BY City;


Colleges
+-----------+---------------+----------+-------------+--------+---------+
| CollegeID | Name          | Students | City        | Region | Country |
+-----------+---------------+----------+-------------+--------+---------+
|         1 | MIT           |       11 | Cambridge   | MA     | USA     |
|         2 | Brown         |        9 | Providence  | RI     | USA     |
|         3 | Dartmouth     |        6 | Hanover     | NH     | USA     |
|         4 | Stanford      |       17 | Stanford    | CA     | USA     |
|         5 | Yale          |       12 | New Haven   | CT     | USA     |
|         6 | Columbia      |       31 | New York    | NY     | USA     |
|         7 | Harvard       |       23 | Cambridge   | MA     | USA     |
|         8 | Princeton     |        9 | Princeton   | NJ     | USA     |
|         9 | Johns Hopkins |       24 | Baltimore   | MD     | USA     |
|        10 | Northwestern  |       21 | Evanston    | IL     | USA     |
|        11 | Duke          |       15 | Durham      | NC     | USA     |
|        12 | Cornell       |       22 | Ithaca      | NY     | USA     |
|        13 | Notre Dame    |        9 | Notre Dame  | IN     | USA     |
|        14 | UCLA          |       32 | Los Angeles | CA     | USA     |
|        15 | Berkeley      |       42 | Berkeley    | CA     | USA     |
|        16 | Georgetown    |        5 | Washington  | DC     | USA     |
|        17 | Michigan      |       45 | Ann Arbor   | MI     | USA     |
|        18 | USC           |       44 | Los Angeles | CA     | USA     |
|        19 | Tufts         |       11 | Medford     | MA     | USA     |
|        20 | NYU           |       51 | New York    | NY     | USA     |
+-----------+---------------+----------+-------------+--------+---------+

Students
+-----------+-----------+----------+-----------+-----------+------------+--------------------+-----------------+---------------+--------+---------+
| StudentID | CollegeID | FriendID | FirstName | LastName  | BirthDate  | Email              | Phone           | City          | Region | Country |
+-----------+-----------+----------+-----------+-----------+------------+--------------------+-----------------+---------------+--------+---------+
|         1 |         1 |       10 | Nancy     | Davolio   | 1948-12-08 | nancy@gmail.com    | (360) 234-8488  | Seattle       | WA     | USA     |
|         2 |         9 |        5 | Andrew    | Fuller    | 1952-02-19 | andrew@yahoo.com   | NULL            | Dallas        | TX     | USA     |
|         3 |         8 |        1 | Janet     | Leverling | 1963-08-30 | janet@hotmail.com  | (786) 634-4522  | Miami         | FL     | USA     |
|         4 |         3 |        9 | Margaret  | Peacock   | 1937-09-19 | maggie@outlook.com | NULL            | Phoenix       | AZ     | USA     |
|         5 |         4 |        2 | Steven    | Buchanan  | 1955-03-04 | steve@apple.com    | NULL            | Denver        | CO     | USA     |
|         6 |         7 |        8 | Michael   | Suyama    | 1963-07-02 | mike@icloud.com    | (541) 544-7733  | Portland      | OR     | USA     |
|         7 |         6 |        3 | Robert    | King      | 1960-05-29 | rob@gmail.com      | NULL            | San Francisco | CA     | USA     |
|         8 |         5 |        7 | Laura     | Callahan  | 1958-01-09 | laura@gmail.com    | (901) 425-8913  | Memphis       | TN     | USA     |
|         9 |         2 |        4 | Anne      | Dodsworth | 1966-01-27 | anne@msn.com       | NULL            | Portland      | ME     | USA     |
|        10 |         1 |        6 | Ivy       | Johnson   | 1986-01-20 | ivy@gmail.com      | NULL            | Chicago       | IL     | USA     |
|        11 |         1 |     NULL | Ana       | Trujillo  | 1998-10-08 | ana@gmail.com      | (360) 457-2258  | Seattle       | WA     | USA     |
|        12 |         9 |     NULL | Thomas    | Hardy     | 1992-12-09 | tom@yahoo.com      | NULL            | Austin        | TX     | USA     |
|        13 |         5 |     NULL | Antonio   | Moreno    | 1993-03-23 | tony@hotmail.com   | NULL            | Miami         | FL     | USA     |
|        14 |         7 |     NULL | Elizabeth | Brown     | 1997-01-11 | beth@outlook.com   | (480) 324-2178  | Phoenix       | AZ     | USA     |
|        15 |         3 |     NULL | Ann       | Devon     | 1995-04-24 | ann@apple.com      | NULL            | Denver        | CO     | USA     |
|        16 |         2 |     NULL | Ariel     | Cruz      | 1993-02-12 | ariel@icloud.com   | (541) 652-4565  | Portland      | OR     | USA     |
|        17 |         6 |     NULL | Giovanni  | Rovelli   | 1990-09-19 | gio@gmail.com      | (415) 665-2255  | San Francisco | CA     | USA     |
|        18 |        10 |     NULL | Marie     | Bertrand  | 1998-09-29 | marie@gmail.com    | NULL            | Memphis       | TN     | USA     |
|        19 |         4 |     NULL | Philip    | Cramer    | 1996-07-17 | phil@msn.com       | (207) 4436-6524 | Portland      | ME     | USA     |
|        20 |         8 |     NULL | Michael   | Holz      | 1996-02-25 | michael@gmail.com  | NULL            | Chicago       | IL     | USA     |
+-----------+-----------+----------+-----------+-----------+------------+--------------------+-----------------+---------------+--------+---------+