INSERT INTO customers(
	first_name,
	last_name
)
VALUES(
	'Antonio',
	'Johnson'
),
(
	'Carmen',
	'Johnson'
),
(
	'Willow',
	'Gentry'
);

INSERT INTO movies(
	genre,
	rating,
	tickets_id
)
VALUES(
	'action',
	'G',
	3
),
(
	'romantic comedy',
	'PG-13',
	3
),
(
	'horror',
	'MA',
	3
);

INSERT INTO tickets(
	price,
	ticket_run
)
VALUES(
	12.99,
	4
),
(
	10.99,
	3
),
(
	10.99,
	2
),
(
	5.99,
	1
)

INSERT INTO concessions(
	price
)
VALUES(
	3.99
),
(
	6.99
),
(
	12.99
),
(
	24.99
);

INSERT INTO combo(
	combo_name,
	contents,
	price,
	concessions_id
)
VALUES(
	'#1',
	'2 Ticketks, 2 drinks and a Med popcorn',
	30.99,
	3
),
(
	'#2',
	'2 drinks and 2 small popcorns',
	20,
	2
)