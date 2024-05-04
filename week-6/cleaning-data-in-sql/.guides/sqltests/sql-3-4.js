var sqltest = require("./fw-sqltests.js");

/*
 Challenge tasks
 tasks[{Task description | Expected Query}]
*/
var tasks = [
  [
    "select last names",
    "USE bad_sakila;",
    "SELECT * FROM (SELECT  inventory_id, film_id, store_id, count(*) as entries FROM inventory GROUP BY 1,2,3 ORDER BY entries DESC)a WHERE entries >1;"
  ],
];

sqltest.init(tasks, "bad_sakila");