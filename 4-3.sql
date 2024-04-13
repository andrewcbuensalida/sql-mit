-- creating table fares ------------------------------
USE EPDriver;

DROP TABLE IF EXISTS fares;

CREATE TABLE fares (
  user INT NOT NULL,
  departure VARCHAR(10) NOT NULL,
  arrival VARCHAR(10) NOT NULL,
  country VARCHAR(5) NOT NULL,
  fare FLOAT(4) NOT NULL
);

SHOW TABLES;

-- Insert data -----------------------------------
USE EPDriver;

INSERT INTO fares (user, departure, arrival, country, fare)
VALUES (1, 'Boston', 'Worcester', 'US', 34.58);

INSERT INTO fares (user, departure, arrival, country, fare)
VALUES (2, 'Seattle', 'Spokane', 'US', 17.46);

INSERT INTO fares (user, departure, arrival, country, fare)
VALUES (3, 'Las Vegas', 'Phoenix', 'US', 29.24);

INSERT INTO fares (user, departure, arrival, country, fare)
VALUES (4, 'New York', 'Brooklyn', 'US', 19.45);

SELECT * FROM fares;

-- update data ------------------------------

USE EPDriver;
SET SQL_SAFE_UPDATES = 0; -- turn safe updates off because below line updates all rows
UPDATE fares SET country = 'USA';
SELECT * FROM fares;

-- UPDATE using filter ------------------------------

USE EPDriver;
UPDATE fares SET country = 'U.S.' WHERE arrival = 'Spokane';
SELECT * FROM fares;

-- DELETE data ------------------------------

USE EPDriver;
DELETE FROM fares WHERE arrival = 'Phoenix';
SELECT * FROM fares;
