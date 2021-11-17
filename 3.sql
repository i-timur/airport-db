SELECT flight_id
  FROM flight
    WHERE flight_duration = (SELECT MAX(flight_duration) FROM flight);