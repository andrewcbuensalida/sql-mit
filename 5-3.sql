USE education;

SELECT * FROM Students WHERE Region = 'WA' OR Region = 'CO' OR Region = 'IL';

SELECT * FROM Students WHERE Region IN ('WA','CO','IL');

SELECT * FROM Students WHERE City = 'Portland' AND CollegeID IN (2,4);

SELECT * FROM Colleges WHERE City NOT IN ('Cambridge', 'New York') AND Students NOT IN (11, 9);

SELECT * FROM Students WHERE BirthDate BETWEEN '1992-01-01' AND '1998-05-01';

SELECT * FROM Students 
WHERE 
  (Region IN ('FL', 'AZ') AND City NOT IN ('Phoenix', 'Austin'))
  OR (CollegeID BETWEEN 2 AND 6);