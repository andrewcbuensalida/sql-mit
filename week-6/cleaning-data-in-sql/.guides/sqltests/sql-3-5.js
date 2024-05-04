var sqltest = require('./fw-sqltests.js');

var tasks = [
	[
		"Create an 'App' database",
		"USE App"
	],
	[
		"CCOncatenate columns",
		"USE bad_sakila;",
    "SELECT COUNT(*), actor.first_name FROM film JOIN film_actor ON film.film_id = film_actor.film_id JOIN actor ON actor.actor_id = film_actor.actor_id GROUP BY actor.first_name;"
	]
];

sqltest.init(tasks, "bad_sakila");