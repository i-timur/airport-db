CREATE TABLE flight_passenger (
  flight_id INT REFERENCES flight (flight_id),
  passenger_id INT REFERENCES passenger (passenger_id)
);

INSERT INTO passenger (first_name, last_name) VALUES ('Petr', 'Petrov'), ('Ivan', 'Ivanov'), ('Alexandr','Alexandrov'), ('Vanya', 'Vanyov');
INSERT INTO flight_passenger VALUES (1, 1), (5, 1), (10, 1), (4, 2), (9, 2), (8, 2), (2, 3), (3, 3), (6, 3);

WITH passenger_flights_cte AS (
  SELECT fp.passenger_id, SUM(f.flight_duration)
  FROM flight f
    INNER JOIN flight_passenger fp 
      ON f.flight_id = fp.flight_id
  GROUP BY fp.passenger_id
), passenger_id_with_max_hours_cte AS (
  SELECT passenger_id 
  FROM passenger_flights_cte
  WHERE sum = (
    SELECT MAX(sum) FROM passenger_flights_cte
  )
)
SELECT first_name,
  last_name 
FROM passenger 
WHERE passenger_id = (SELECT passenger_id FROM passenger_id_with_max_hours_cte );

WITH passenger_flights_cte AS (
  SELECT fp.passenger_id, SUM(f.flight_duration)
  FROM flight f
    INNER JOIN flight_passenger fp 
      ON f.flight_id = fp.flight_id
  GROUP BY fp.passenger_id
), passenger_id_with_min_hours_cte AS (
  SELECT passenger_id 
  FROM passenger_flights_cte
  WHERE sum = (
    SELECT MIN(sum) FROM passenger_flights_cte
  )
)
SELECT first_name,
  last_name
FROM passenger
WHERE passenger_id = (SELECT passenger_id FROM passenger_id_with_min_hours_cte);