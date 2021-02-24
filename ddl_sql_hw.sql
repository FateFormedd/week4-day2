CREATE TABLE customers(
	customers_id SERIAL PRIMARY KEY,
	first_name VARCHAR(25),
	last_name VARCHAR(25)
);

CREATE TABLE concessions(
	consessions_id SERIAL PRIMARY KEY,
	price NUMERIC(5,2)
);

CREATE TABLE combo(
	combo_id SERIAL PRIMARY KEY,
	combo_name VARCHAR(20),
	contents VARCHAR(50),
	price NUMERIC(5,2)
);

CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY,
	genre VARCHAR(30),
	rating VARCHAR(10)
);

CREATE TABLE tickets(
	tickets_id SERIAL PRIMARY KEY,
	price NUMERIC(5,2),
	run NUMERIC(1,0),
	movie_id INT NOT NULL,
	FOREIGN KEY(movie_id) REFERENCES movies(movie_id),
	customers_id INT NOT NULL,
	FOREIGN KEY (customers_id) REFERENCES customers(customers_id)
);

SELECT *
FROM combo;

ALTER TABLE combo
ADD concessions_id INT;

ALTER TABLE combo
ADD FOREIGN KEY(concessions_id) REFERENCES concessions(concessions_id);

ALTER TABLE concessions
RENAME COLUMN consessions_id TO concessions_id;