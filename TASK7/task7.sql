-- 1 Passenger Booking Summary

CREATE VIEW passenger_booking_summary AS
SELECT 
    p.Name AS PassengerName,
    f.FlightNumber,
    a.Name AS AirlineName,
    b.BookingDate
FROM Bookings b
JOIN Passengers p ON b.PassengerID = p.PassengerID
JOIN Flights f ON b.FlightID = f.FlightID
JOIN Airlines a ON f.AirlineID = a.AirlineID;

SELECT * FROM passenger_booking_summary;


-- 2 Flights with Airlines and Timing

CREATE VIEW flight_schedule AS
SELECT 
    f.FlightNumber,
    a.Name AS AirlineName,
    f.DepartureTime,
    f.ArrivalTime
FROM Flights f
JOIN Airlines a ON f.AirlineID = a.AirlineID;

SELECT * FROM flight_schedule;


-- 3 Passengers with Missing Contact Info

CREATE VIEW passengers_missing_info AS
SELECT 
    PassengerID,
    Name,
    Email,
    Phone
FROM Passengers
WHERE Email IS NULL OR Phone IS NULL;
