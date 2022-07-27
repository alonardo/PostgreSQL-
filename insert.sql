-- I ran these separately for debugging purposes.

INSERT INTO movie(movie_title, movie_description, movie_rating, movie_genre) VALUES
('Ex Machina', 'Ex Machina is a 2014 science fiction film written and directed by Alex Garland 
in his directorial debut. There are only four significant characters, played by Domhnall Gleeson,
 Alicia Vikander, Sonoya Mizuno, and Oscar Isaac', 'R', 'Science Fiction');

INSERT INTO movie(movie_title, movie_description, movie_rating, movie_genre) VALUES
('Mad Max', 'Years after the collapse of civilization, the tyrannical Immortan Joe enslaves apocalypse survivors 
inside the desert fortress the Citadel. When the warrior Imperator Furiosa (Charlize Theron) leads the despots
five wives in a daring escape, she forges an alliance with Max Rockatansky (Tom Hardy), a loner and former 
captive', 'R', 'Action');

INSERT INTO movie(movie_title, movie_description, movie_rating, movie_genre) VALUES
('Step Brothers', 'Brennan Huff (Will Ferrell) and Dale Doback (John C. Reilly) have one thing in common: 
they are both lazy, unemployed leeches who still live with their parents. When Brennans mother and Dales father
 marry and move in together, it turns the overgrown boys world upside down. Their insane rivalry and narcissism 
 pull the new family apart, forcing them to work together to reunite their parents.', 'R', 'Comedy')

INSERT INTO concession(item_name, brand, cost, in_stock) VALUES
('Popcorn', 'Blast O Butter', '39.99', 'true');


INSERT INTO concession(item_name, brand, cost, in_stock) VALUES
('Soda', 'Coca-Cola', '1.99', 'true');

INSERT INTO concession(item_name, brand, cost, in_stock) VALUES
('Candy', 'Skittles', '3.99', 'false');

INSERT INTO theatre_number(showtimes, movie_id, room_num) VALUES
('2016-06-22 19:10:25-07',1, 'A10');

INSERT INTO theatre_number(showtimes, movie_id, room_num) VALUES
('2016-06-22 19:10:25-07',2, 'B3');

INSERT INTO theatre_number(showtimes, movie_id, room_num) VALUES
('2016-06-22 19:10:25-07',3, 'C9');

INSERT INTO ticket(movie_id, theatre_number_id, seat_num) VALUES
(1,1,'24');

INSERT INTO ticket(movie_id, theatre_number_id, seat_num) VALUES
(2,2,'5');

INSERT INTO ticket(movie_id, theatre_number_id, seat_num) VALUES
(3,3,'10');

INSERT INTO customer(ticket_id, concession_id) VALUES
(1,1);

INSERT INTO customer(ticket_id, concession_id) VALUES
(2,2);

INSERT INTO customer(ticket_id, concession_id) VALUES
(3,3);