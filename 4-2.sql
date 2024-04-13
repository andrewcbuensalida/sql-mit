USE EPDriver;

-- creating table delays

DROP TABLE IF EXISTS delays;

CREATE TABLE delays (
    id INT NOT NULL,
    `Departure Location` VARCHAR(10) NOT NULL,
    `Arrival Location` VARCHAR(10) NOT NULL,
    Time TIME NOT NULL
);

SHOW TABLES;

-- adding primary key

ALTER TABLE delays ADD PRIMARY KEY(Time);

SHOW COLUMNS FROM delays;

-- dropping primary key

ALTER TABLE delays DROP PRIMARY KEY;

SHOW COLUMNS FROM delays;


-- adding foreign key

ALTER TABLE delays ADD FOREIGN KEY (id) REFERENCEs trips(id);

SHOW COLUMNS in delays;


--indexing

CREATE TABLE stats (
    `average_fare` INT NOT NULL,
    `average_trip_duration` TIME NOT NULL,
    PRIMARY KEY(average_trip_duration),
    INDEX(average_fare, average_trip_duration)
);

SHOW COLUMNS FROM stats;
