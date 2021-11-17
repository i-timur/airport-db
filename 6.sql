CREATE TABLE flight_crew (
  flight_id INT REFERENCES flight (flight_id),
  crew_id INT REFERENCES crew (crew_id) 
);

INSERT INTO crew (crew_role, first_name, last_name) VALUES ('PILOT', 'Sergey', 'Korolev'), ('PILOT', 'Viktor', 'Viktorovich');

INSERT INTO flight_crew VALUES (7, 1), (8, 1), (9, 1), (1, 2), (2, 2);
