-- 1. Select all columns from Passengers
SELECT * FROM Passengers;

-- 2. Select specific columns: Name and Email of Passengers
SELECT Name, Email FROM Passengers;

-- 3. Get all bookings with passenger name and flight number using JOIN
SELECT 
    B.BookingID,
    P.Name AS PassengerName,
    F.FlightNumber,
    B.BookingDate
FROM Bookings B
JOIN Passengers P ON B.PassengerID = P.PassengerID
JOIN Flights F ON B.FlightID = F.FlightID;

-- 4. Use WHERE clause to find flights operated by 'IndiGo'
SELECT * FROM Flights
WHERE AirlineID = (SELECT AirlineID FROM Airlines WHERE Name = 'IndiGo');

-- 5. Use WHERE with AND: Flights between two dates
SELECT * FROM Flights
WHERE DepartureTime BETWEEN '2025-07-01' AND '2025-07-03'
AND AirlineID = 1;

-- 6. Use LIKE to find passengers with 'Ravi' in their name
SELECT * FROM Passengers
WHERE Name LIKE '%Ravi%';

-- 7. Use ORDER BY: List passengers ordered by Name
SELECT * FROM Passengers
ORDER BY Name ASC;

-- 8. Use LIMIT: Show top 2 most recent bookings
SELECT * FROM Bookings
ORDER BY BookingDate DESC
LIMIT 2;

-- 9. Combining multiple conditions with OR
SELECT * FROM Passengers
WHERE Email IS NULL OR Phone IS NULL;

-- 10. Find all flights and their respective airline names using JOIN
SELECT 
    F.FlightNumber,
    A.Name AS AirlineName,
    F.DepartureTime,
    F.ArrivalTime
FROM Flights F
JOIN Airlines A ON F.AirlineID = A.AirlineID;

