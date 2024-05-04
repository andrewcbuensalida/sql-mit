var sqltest = require("./fw-sqltests.js");

/*
 Challenge tasks
 tasks[{Task description | Expected Query}]
*/
var tasks = [
  [
    "'App' database",
    "DROP DATABASE IF EXISTS App"
  ]
];

sqltest.reset(tasks);