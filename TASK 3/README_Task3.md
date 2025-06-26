
# Task 3: Writing Basic SELECT Queries – Flight Reservation System

## 🎯 Objective
Extract data from one or more tables using SQL `SELECT` queries.

## 🛠️ Tools
- DB Browser for SQLite / MySQL Workbench

## 📦 Deliverables
- SQL script demonstrating usage of:
  - `SELECT`
  - `WHERE`
  - `ORDER BY`
  - `LIMIT`

---

## 🗂️ Database Used
**Database Name:** `FLIGHTSYSTEM`

The database includes the following tables:
- `Passengers`
- `Airlines`
- `Flights`
- `Airports`
- `Bookings`

---

## 📝 SQL Query Examples

### 1. Select all passenger data
```sql
SELECT * FROM Passengers;
```

### 2. Select passenger names and emails only
```sql
SELECT Name, Email FROM Passengers;
```

### 3. Get booking details with passenger name and flight number
```sql
SELECT 
    B.BookingID,
    P.Name AS PassengerName,
    F.FlightNumber,
    B.BookingDate
FROM Bookings B
JOIN Passengers P ON B.PassengerID = P.PassengerID
JOIN Flights F ON B.FlightID = F.FlightID;
```

### 4. Find all flights operated by "IndiGo"
```sql
SELECT * FROM Flights
WHERE AirlineID = (SELECT AirlineID FROM Airlines WHERE Name = 'IndiGo');
```

### 5. Flights between two dates and a specific airline
```sql
SELECT * FROM Flights
WHERE DepartureTime BETWEEN '2025-07-01' AND '2025-07-03'
AND AirlineID = 1;
```

### 6. Search passenger by partial name
```sql
SELECT * FROM Passengers
WHERE Name LIKE '%Ravi%';
```

### 7. List passengers alphabetically
```sql
SELECT * FROM Passengers
ORDER BY Name ASC;
```

### 8. Show top 2 recent bookings
```sql
SELECT * FROM Bookings
ORDER BY BookingDate DESC
LIMIT 2;
```

### 9. Passengers with missing email or phone
```sql
SELECT * FROM Passengers
WHERE Email IS NULL OR Phone IS NULL;
```

### 10. List flights along with airline names
```sql
SELECT 
    F.FlightNumber,
    A.Name AS AirlineName,
    F.DepartureTime,
    F.ArrivalTime
FROM Flights F
JOIN Airlines A ON F.AirlineID = A.AirlineID;
```

---

## ✅ Outcome
By completing this task, you will have a **clear understanding of how to retrieve data** from a relational database using various forms of `SELECT` queries, filters, sorting, and joins.
