-- retrieve tables from the database

USE EPDriver;
SHOW TABLES;

-- VISUALIZING users table
USE EPDriver;
SELECT * FROM users;

-- visualize structure of table
USE EPDriver;
DESCRIBE drivers; -- seems to be the same as SHOW COLUMNS FROM flights;

-- create flights table
USE EPDriver;
CREATE TABLE flights (
    id INT NOT NULL,
    `arrival` VARCHAR(15) NOT NULL,
    `delay` time NULL
);

-- adding primary key
USE EPDriver;
ALTER TABLE flights ADD PRIMARY KEY(id);
SHOW COLUMNS FROM flights;

-- adding foreign key
USE EPDriver;
ALTER TABLE flights ADD FOREIGN KEY (id) REFERENCES users(id);
SHOW COLUMNS FROM flights;

-- indexing existing tables
USE EPDriver;
ALTER TABLE flights ADD INDEX (`arrival`);
DESCRIBE flights;

-- adding data
USE EPDriver;
INSERT INTO flights (id, arrival, delay) VALUES (0001, 'Rome', '00:10:00');
INSERT INTO flights (id, arrival, delay) VALUES (0002, 'London', '01:05:00');
INSERT INTO flights (id, arrival, delay) VALUES (0003, 'Madrid', '00:55:00');
SELECT * FROM flights;

-- update data
USE EPDriver;
UPDATE flights SET delay = '02:34:00' WHERE arrival = 'Madrid';

-- delete data
USE EPDriver;
DELETE FROM flights WHERE arrival = 'Rome';
SELECT * FROM flights;