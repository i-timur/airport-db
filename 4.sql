WITH departures_cte AS (
  SELECT a.airport_id, f.flight_id
  FROM flight f
    INNER JOIN airport a ON a.airport_id = f.from_airport
      WHERE f.departure_timestamp::date = '2021-11-16'
), arrivals_cte AS (
  SELECT a.airport_id, f.flight_id
  FROM flight f 
    INNER JOIN airport a ON a.airport_id = f.to_airport
      WHERE f.departure_timestamp::date = '2021-11-16'
), departures_count_cte AS (
  SELECT airport_id, COUNT(flight_id)
  FROM departures_cte d 
  GROUP BY airport_id
), arrivals_count_cte AS (
  SELECT airport_id, COUNT(flight_id)
  FROM arrivals_cte a 
  GROUP BY airport_id
), departures_arrivals_count_cte AS (
  SELECT * 
  FROM departures_count_cte
  UNION ALL 
  SELECT * 
  FROM arrivals_count_cte
)
SELECT airport_id, SUM(count) flight_count
FROM departures_arrivals_count_cte
GROUP BY airport_id;