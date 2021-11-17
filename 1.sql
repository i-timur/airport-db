CREATE TABLE airport(
  airport_id SERIAL PRIMARY KEY,
  airport_name VARCHAR(100),
  airport_city VARCHAR(100)
);
CREATE TABLE plane(
  plane_id SERIAL PRIMARY KEY,
  mark VARCHAR(100),
  model VARCHAR(100),
  capacity INT
);
CREATE TABLE passenger(
  passenger_id SERIAL PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100)
);
CREATE TABLE flight(
  flight_id SERIAL PRIMARY KEY,
  plane_id INT REFERENCES plane(plane_id),
  from_airport INT REFERENCES airport (airport_id),
  to_aiport INT REFERENCES airport (airport_id),
  departure_timestamp timestamp,
  arrival_timestamp timestamp,
  flight_duration INT NOT NULL
);
CREATE TABLE crew(
  crew_id SERIAL PRIMARY KEY,
  crew_role VARCHAR(100),
  first_name VARCHAR(100),
  last_name VARCHAR(100)
);