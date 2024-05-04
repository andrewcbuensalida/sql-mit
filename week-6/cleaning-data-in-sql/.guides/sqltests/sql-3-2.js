var sqltest = require("./fw-sqltests.js");

/*
 Challenge tasks
 tasks[{Task description | Expected Query}]
*/
var tasks = [
  [
    "Retrieve actors",
    "USE Schools;",
    "select avg(weight_in_lbs) as average_weight_in_lbs from Entries;"
  ]
];

sqltest.init(tasks, "Schools");