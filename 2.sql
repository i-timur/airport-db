INSERT INTO airport (airport_name, airport_city)
  VALUES ('Pulkovo', 'Moscow'),
    ('Domodedovo', 'Moscow'),
    ('International', 'Kazan'),
    ('Vnukovo', 'Moscow');
INSERT INTO plane (mark, model, capacity)
  VALUES ('AIRBUS', 'A300', 100),
    ('AIRBUS', 'A300', 100),
    ('BOEING', '737', 112);
INSERT INTO flight (plane_id, from_airport, to_airport, departure_timestamp, arrival_timestamp, flight_duration)
  VALUES (1, 1, 2,  '2021-11-15 13:00', '2021-11-15 13:20', 20),
    (1, 2, 3,  '2021-11-15 13:50', '2021-11-15 14:30', 40),
    (1, 3, 4,  '2021-11-15 15:00', '2021-11-15 15:50', 50),
    (2, 3, 1,  '2021-11-14 23:00', '2021-11-15 00:10', 70),
    (2, 1, 2,  '2021-11-15 10:00', '2021-11-15 10:23', 23),
    (2, 2, 3,  '2021-11-15 11:00', '2021-11-15 11:50', 50),
    (2, 3, 4,  '2021-11-15 15:00', '2021-11-15 15:20', 20),
    (3, 4, 3,  '2021-11-16 00:01', '2021-11-16 00:52', 51),
    (3, 3, 4,  '2021-11-16 06:00', '2021-11-16 07:00', 60),
    (3, 4, 1,  '2021-11-16 13:00', '2021-11-15 13:20', 20);
