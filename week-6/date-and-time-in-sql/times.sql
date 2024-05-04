CREATE DATABASE `Times`; 
USE `Times`;



DROP TABLE IF EXISTS `Orders`;
CREATE TABLE  `Orders`(
   `OrderID`            int  NOT NULL,
   `ProductName`   varchar(20) NOT NULL,
   `OrderDate`    date NOT NULL
);

LOCK TABLES `Orders` WRITE;
INSERT INTO `Orders` VALUES (1, 'Steak', '2008-11-11' );
INSERT INTO `Orders` VALUES (2, 'Cheese', '2008-10-13');
INSERT INTO `Orders` VALUES (3, 'Vegetables', '2008-11-11' );
INSERT INTO `Orders` VALUES (4, 'Chicken', '2008-10-31' );
INSERT INTO `Orders` VALUES (5, 'Fruit', '2008-10-31' );
UNLOCK TABLES;


DROP TABLE IF EXISTS `TablesOrders`;
CREATE TABLE  `TablesOrders`(
   `OrderID`            int  NOT NULL,
   `TableName`   varchar(20) NOT NULL,
   `OrderTime`    time NOT NULL
);

LOCK TABLES `TablesOrders` WRITE;
INSERT INTO `TablesOrders` VALUES (1, 'Smith', '07:24:09' );
INSERT INTO `TablesOrders` VALUES (2, 'White', '07:35:45');
INSERT INTO `TablesOrders` VALUES (3, 'Sanchez', '08:10:45' );
UNLOCK TABLES;
