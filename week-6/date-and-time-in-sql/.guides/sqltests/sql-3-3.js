var sqltest = require("./fw-sqltests.js");

/*
 Challenge tasks
 tasks[{Task description | Expected Query}]
*/
var tasks = [
  [
    "Retrieve time difference",
    "USE Times;",
    "SELECT TIMEDIFF('07:24:09', '08:10:45') as TimeDiff;"
  ]
];

sqltest.init(tasks, "Times");