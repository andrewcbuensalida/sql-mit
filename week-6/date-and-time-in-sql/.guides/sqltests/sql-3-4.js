var sqltest = require("./fw-sqltests.js");

/*
 Challenge tasks
 tasks[{Task description | Expected Query}]
*/
var tasks = [
  [
    "subtract time",
    "USE Times;",
    "SELECT SUBTIME('07:35:45', '17') as updated_order_time;"
  ],
];

sqltest.init(tasks, "Times");