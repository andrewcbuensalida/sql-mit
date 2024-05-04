var sqltest = require('./fw-sqltests.js');

var tasks = [

	[
		"Concatenate columns",
		"USE Times;",
    "SELECT FROM_UNIXTIME(599462445.99999) AS Unix;"
	]
];

sqltest.init(tasks, "Times");