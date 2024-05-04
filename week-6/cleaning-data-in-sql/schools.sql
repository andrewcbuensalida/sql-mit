CREATE DATABASE `Schools`; 
USE `Schools`;



DROP TABLE IF EXISTS `Entries`;
CREATE TABLE  `Entries`(
   `name`            varchar(15)  NOT NULL,
   `weight_in_lbs`   float(10,2) NULL,
   `age_in_years`    int NULL
);

LOCK TABLES `Entries` WRITE;
INSERT INTO `Entries` VALUES ('Christina', 80.6, NULL );
INSERT INTO `Entries` VALUES ('Matthews', NULL, 19 );
INSERT INTO `Entries` VALUES ('Gilbert', 100.6, 21 );
UNLOCK TABLES;



DROP TABLE IF EXISTS `Students`;
CREATE TABLE  `Students`(
   `studentID` 	int NOT NULL,
   `name`    varchar(15)  NOT NULL,
   `deptID`   int NOT NULL
);



LOCK TABLES `Students` WRITE;
INSERT INTO `Students` VALUES (1, 'Rick', 100);
INSERT INTO `Students` VALUES (2, 'Rosa', 100);
INSERT INTO `Students` VALUES (3, 'Steve', 101);
UNLOCK TABLES;



DROP TABLE IF EXISTS `Departments`;
CREATE TABLE  `Departments`(
   `deptID` 	varchar(5) NOT NULL,
   `dept_name`    varchar(20)  NOT NULL,
   `dept_head`  varchar(20)  NOT NULL
);



LOCK TABLES `Departments` WRITE;
INSERT INTO `Departments` VALUES ('100', 'Computer Science', 'Alex Manning');
INSERT INTO `Departments` VALUES ('101', 'Economics', 'Rosa Smith');
UNLOCK TABLES;




DROP TABLE IF EXISTS `Student_details`;
CREATE TABLE  `Student_details`(
   `id` 	int NOT NULL,
   `name`    varchar(20)  NOT NULL,
   `dept_name`  varchar(30)  NOT NULL
);



LOCK TABLES `Student_details` WRITE;
INSERT INTO `Student_details` VALUES ('1', 'Alex', 'I.T.');
INSERT INTO `Student_details` VALUES ('2', 'Hugo', 'Information Technology');
INSERT INTO `Student_details` VALUES ('3', 'Stephen', 'i.t.');
INSERT INTO `Student_details` VALUES ('4', 'Anne', 'C.S.E');
INSERT INTO `Student_details` VALUES ('1', 'John', 'C.S.E');
UNLOCK TABLES;