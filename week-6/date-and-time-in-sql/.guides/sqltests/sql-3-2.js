var sqltest = require("./fw-sqltests.js");

/*
 Challenge tasks
 tasks[{Task description | Expected Query}]
*/
var tasks = [
  [
    "Retrieve actors",
    "USE Times;",
    "SELECT DATEDIFF('2008-11-11', '2008-10-13') AS DiffDate;"
  ]
];

sqltest.init(tasks, "Times");