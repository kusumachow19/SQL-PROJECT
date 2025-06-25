
# 📊 Task 2: Data Insertion and Handling NULLs - Flight Booking System

## 📌 Objective
Practice inserting, updating, and deleting data in the Flight Booking System database while handling NULL values appropriately.

## 🛠 Tools Used
- MySQL Workbench / DB Fiddle / SQLiteStudio

## 📂 Affected Tables
- Airlines
- Passengers
- Flights
- Airports
- Bookings

## 🧪 SQL Operations

### 🔹 INSERT Statements
```sql
-- Airlines
INSERT INTO Airlines (Name) VALUES
('Air India'), ('IndiGo'), ('SpiceJet');

-- Passengers
INSERT INTO Passengers (Name, Email, Phone) VALUES
('Ravi Kumar', 'ravi@example.com', '9999999999'),
('Anita Mehta', NULL, '8888888888'),  -- Missing email (NULL)
('John Paul', 'john.p@example.com', NULL);  -- Missing phone (NULL)

-- Flights
INSERT INTO Flights (FlightNumber, DepartureTime, ArrivalTime, AirlineID) VALUES
('AI101', '2025-07-01 10:00:00', '2025-07-01 12:00:00', 1),
('6E202', '2025-07-02 14:00:00', '2025-07-02 16:00:00', 2),
('SG333', '2025-07-03 09:00:00', '2025-07-03 11:30:00', 3);

-- Airports
INSERT INTO Airports (Name, City) VALUES
('Indira Gandhi International', 'Delhi'),
('Chhatrapati Shivaji Maharaj', 'Mumbai'),
('Kempegowda International', 'Bangalore');

-- Bookings
INSERT INTO Bookings (PassengerID, FlightID, BookingDate) VALUES
(1, 1, '2025-06-20'),
(2, 2, '2025-06-21'),
(3, 3, '2025-06-22');
```

### 🔹 UPDATE Statement
```sql
-- Fix missing phone number using primary key
UPDATE Passengers
SET Phone = '7777777777'
WHERE PassengerID = 3;
```

### 🔹 DELETE Statement
```sql
-- Cancel booking for a specific passenger
DELETE FROM Bookings
WHERE PassengerID = 2;
```

### 🔹 NULL Handling
- Missing values were added using `NULL` or by skipping optional columns in `INSERT`.
- Updated using `UPDATE` to correct or complete the data later.

---

## ✅ Outcome
A populated **Flight Booking System** database with consistent, clean data, and proper handling of NULL values during insertion and update operations.

---

*Author: Your Name*  
*SQL Developer Internship Task 2*
