DROP TABLE IF EXISTS movie CASCADE;
CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    movie_title VARCHAR(25),
    movie_description TEXT,
    movie_rating VARCHAR(20),
    movie_genre VARCHAR(20)
);

DROP TABLE IF EXISTS concession CASCADE;
CREATE TABLE concession(
    concession_id SERIAL PRIMARY KEY,
    item_name VARCHAR(50),
    brand VARCHAR(50),
    cost DECIMAL(4,2),
    in_stock BOOLEAN
);

DROP TABLE IF EXISTS theatre_number CASCADE;
CREATE TABLE theatre_number(
    theatre_number_id SERIAL PRIMARY KEY,
    showtimes TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc',now()),
    movie_id INT NOT NULL,
    room_num VARCHAR(15),
    FOREIGN KEY (movie_id) REFERENCES movie (movie_id)
);

DROP TABLE IF EXISTS ticket CASCADE;
CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    movie_id INT NOT NULL,
    theatre_number_id INT NOT NULL,
    seat_num INT NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES movie (movie_id) ON DELETE CASCADE,
    FOREIGN KEY (theatre_number_id) REFERENCES theatre_number (theatre_number_id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    ticket_id INT NOT NULL,
    concession_id INT NOT NULL,
    FOREIGN KEY (ticket_id) REFERENCES ticket (ticket_id) ON DELETE CASCADE,
    FOREIGN KEY (concession_id) REFERENCES concession (concession_id) ON DELETE CASCADE
);