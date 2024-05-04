var sqltest = require("./fw-sqltests.js");

/*
 Challenge tasks
 tasks[{Task description | Expected Query}]
*/
var tasks = [
  [
    "Show tables",
    "USE Times;",
    "SELECT * FROM Orders WHERE OrderDate='2008-11-11';"
  ]
];

sqltest.init(tasks, "Times");