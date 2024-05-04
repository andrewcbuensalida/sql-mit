var sqltest = require("./fw-sqltests.js");

/*
 Challenge tasks
 tasks[{Task description | Expected Query}]
*/
var tasks = [
  [
    "Retrieve languages",
    "USE bad_sakila;",
    "SELECT  inventory_id, film_id, store_id FROM inventory GROUP BY 1,2,3;"
  ]
];

sqltest.init(tasks, "bad_sakila");