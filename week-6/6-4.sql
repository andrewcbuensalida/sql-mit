USE Schools;

-- In the file window, type the correct commands to get the average weight value from the Entries table. Make sure that the output entry has a column named average_weight_in_lbs.

select avg(weight_in_lbs) as average_weight_in_lbs from Entries;


--  the table Entries contains an extra column, corrected_weights, containing not NULL entries for the weights of the students.

Round the average value computed in the previous questions to one decimal digit.
USE Schools;
select *, COALESCE(weight_in_lbs, 90.6) as corrected_weights from Entries;


-- Suppose that now you want to join these two tables and want to produce a report which will contain the following columns:
-- studentID
-- name
-- dept_name
-- Before joining the tables, you must cast the deptID column in the Departments table to the same data type as the one stored in the deptID column in the Students table before performing the join.
-- To cast columns, you can use the CAST function in MySQL. The syntax for this function is:
-- NOTE: MySQL does not support casting to integers. Therefore the deptID column in Departments will be converted to the data type UNSIGNED.

USE Schools;
select studentID, name, dept_name from Students join Departments on Students.deptID = cast(Departments.deptID as UNSIGNED);

-- What are the correct commands to convert the strings Information Technology and i.t. to I.T. and to group them?

USe Schools;
select upper(replace(dept_name, 'Information Technology', 'I.T.')) as dept_cleaned, count(dept_name) as student_count from Student_details group by dept_cleaned;