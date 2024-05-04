var sqltest = require('./fw-sqltests.js');

var tasks = [
	[
		"Update values in students",
    "USE education",
		"SELECT Students * 10000 -35000 AS Population FROM Colleges;"
	]
];

sqltest.init(tasks, "education");