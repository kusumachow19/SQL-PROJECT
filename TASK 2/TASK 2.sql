
-- Insert into Airlines
INSERT INTO Airlines (Name) VALUES
('Air India'), ('IndiGo'), ('SpiceJet');

-- Insert into Passengers
INSERT INTO Passengers (PassengerID,Name, Email, Phone) VALUES
(1,'Ravi Kumar', 'ravi@example.com', '9999999999'),
(2,'Anita Mehta', NULL, '8888888888'),  -- Handling NULL
(3,'John Paul', 'john.p@example.com', NULL);  -- Handling NULL

-- Insert into Flights
INSERT INTO Flights (FlightNumber, DepartureTime, ArrivalTime, AirlineID) VALUES
('AI101', '2025-07-01 10:00:00', '2025-07-01 12:00:00', 1),
('6E202', '2025-07-02 14:00:00', '2025-07-02 16:00:00', 2),
('SG333', '2025-07-03 09:00:00', '2025-07-03 11:30:00', 3);

-- Insert into Airports
INSERT INTO Airports (Name, City) VALUES
('Indira Gandhi International', 'Delhi'),
('Chhatrapati Shivaji Maharaj', 'Mumbai'),
('Kempegowda International', 'Bangalore');

-- Insert into Bookings
INSERT INTO Bookings (PassengerID, FlightID, BookingDate) VALUES
(1, 1, '2025-06-20'),
(2, 2, '2025-06-21'),
(3, 3, '2025-06-22');

-- UPDATE example
select * from passengers where name='john paul';
UPDATE Passengers
SET Phone = '7777777777'
WHERE passengerid=3;

-- DELETE example
DELETE FROM Bookings
WHERE PassengerID = 2;

select * from passengers
SELECT * FROM BOOKINGS
