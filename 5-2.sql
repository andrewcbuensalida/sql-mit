USE education;

SELECT * FROM Colleges WHERE Students * 1000 > 12000;

SELECT * FROM Colleges WHERE Country = 'USA';

SELECT * FROM Students WHERE FriendID IS NOT NULL;

SELECT * FROM Students WHERE BirthDate > '1993-01-01';

SELECT * FROM Students WHERE Phone IS NULL;