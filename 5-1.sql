USE education;
SHOW TABLES;

SELECT * FROM Colleges;

SELECT * FROM Students;

SELECT * FROM Colleges WHERE City = 'New York';

SELECT City, Region, Country FROM Colleges WHERE City = 'New York';

SELECT City, Region AS State, Country FROM Colleges WHERE City = 'New York';

SELECT City, Region, CONCAT(City, ', ', Region) AS Location FROM Colleges;

SELECT Students * 10000 - 35000 AS Population FROM Colleges;
