# Task 7: Creating Views - Flight Booking System

## 🎯 Objective
Learn to create and use SQL views for abstraction, security, and reusable logic.

---

## 🛠 Tools Used
- MySQL Workbench

---

## 📁 Dataset Overview

This task uses a flight booking system with the following tables:
- `Passengers`
- `Airlines`
- `Flights`
- `Airports`
- `Bookings`

Sample data includes passengers, flights, bookings, and airline details.

---

## 🔍 Views Created

### 1. `passenger_booking_summary`

Shows passenger names along with flight number, airline name, and booking date.

```sql
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
```

**Usage:**
```sql
SELECT * FROM passenger_booking_summary;
```

---

### 2. `flight_schedule`

Displays flight number, airline name, and timings for each flight.

```sql
CREATE VIEW flight_schedule AS
SELECT 
    f.FlightNumber,
    a.Name AS AirlineName,
    f.DepartureTime,
    f.ArrivalTime
FROM Flights f
JOIN Airlines a ON f.AirlineID = a.AirlineID;
```

**Usage:**
```sql
SELECT * FROM flight_schedule;
```

---

### 3. `passengers_missing_info`

Lists passengers missing email or phone numbers (for validation or contact).

```sql
CREATE VIEW passengers_missing_info AS
SELECT 
    PassengerID,
    Name,
    Email,
    Phone
FROM Passengers
WHERE Email IS NULL OR Phone IS NULL;
```

**Usage:**
```sql
SELECT * FROM passengers_missing_info;
```

---

## ✅ Outcome

- Applied `CREATE VIEW` with complex `SELECT` statements
- Demonstrated **data abstraction** and **security** using views
- Gained understanding of **reusable SQL logic**

---

## 📌 Notes

- Views do not store data themselves; they act as saved queries.
- To update the structure of a view, use `CREATE OR REPLACE VIEW`.
- Views help simplify reporting and improve maintainability.
