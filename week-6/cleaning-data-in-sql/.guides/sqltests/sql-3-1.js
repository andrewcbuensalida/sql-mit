var sqltest = require("./fw-sqltests.js");

/*
 Challenge tasks
 tasks[{Task description | Expected Query}]
*/
var tasks = [
  [
    "Show tables",
    "USE Schools;",
    "SHOW TABLES;"
  ]
];

sqltest.init(tasks, "Schools");