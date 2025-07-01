
-- 1 Scalar Subquery in SELECT
SELECT 
    f.FlightNumber,
    (SELECT AVG(cnt)
     FROM (SELECT COUNT(*) AS cnt FROM Bookings GROUP BY FlightID) AS sub) AS avg_bookings
FROM Flights f;

-- 2 Subquery in WHERE using IN
SELECT Name
FROM Passengers
WHERE PassengerID IN (
    SELECT b.PassengerID
    FROM Bookings b
    JOIN Flights f ON b.FlightID = f.FlightID
    JOIN Airlines a ON f.AirlineID = a.AirlineID
    WHERE a.Name = 'Air India'
);


-- 3 Subquery in FROM (Derived Table)
SELECT a.Name AS Airline, sub.booking_count
FROM (
    SELECT f.AirlineID, COUNT(*) AS booking_count
    FROM Bookings b
    JOIN Flights f ON b.FlightID = f.FlightID
    GROUP BY f.AirlineID
) AS sub
JOIN Airlines a ON sub.AirlineID = a.AirlineID;

-- 4 Correlated Subquery in WHERE
SELECT f.FlightNumber
FROM Flights f
WHERE (
    SELECT COUNT(*)
    FROM Bookings b
    WHERE b.FlightID = f.FlightID
) > (
    SELECT AVG(cnt)
    FROM (
        SELECT COUNT(*) AS cnt
        FROM Bookings
        GROUP BY FlightID
    ) avg_sub
);


-- 5 Using EXISTS
SELECT Name
FROM Passengers p
WHERE EXISTS (
    SELECT 1
    FROM Bookings b
    WHERE b.PassengerID = p.PassengerID
);























