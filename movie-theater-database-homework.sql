create table customers(
	customer_id INTEGER primary key,
	first_name VARCHAR(25) not null unique,
	last_name VARCHAR(25) not null
);

create table movies(
	movie_id SERIAL primary key,
	movie_title VARCHAR(50) not null,
	movie_rating VARCHAR(4) not null,
	movie_showtimes SERIAL not null
);

ALTER TABLE movies
ADD CONSTRAINT movies_movie_id_unique UNIQUE (movie_id);


CREATE TABLE tickets (
    ticket_id SERIAL PRIMARY KEY,
    movie_id INT,
    movie_title VARCHAR(50) NOT NULL,
    ticket_date DATE NOT NULL,
    seat_number VARCHAR(4),
    customer_id INT,
    first_name VARCHAR(25),
    last_name VARCHAR(25),
    movie_showtimes TIME NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
