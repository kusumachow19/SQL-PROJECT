
# ✈️ Flight Booking System - SQL Schema & ER Design

## 📌 Objective
Design and implement a normalized relational database for managing a flight booking system using MySQL.

## 🛠 Tools Used
- MySQL Workbench
- ER Diagram: Graphviz
- SQL: DDL (CREATE TABLE)

## 🗂 Entities
- **Passengers**: Stores passenger information
- **Airlines**: Stores airline names
- **Flights**: Details of flights including airline and schedule
- **Airports**: List of available airports
- **Bookings**: Records which passenger booked which flight

## 🔗 Relationships
- A Passenger can make multiple Bookings
- A Flight can be booked many times
- A Flight belongs to an Airline

## 📄 SQL Schema

```sql
CREATE TABLE Passengers (
    PassengerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(20)
);

CREATE TABLE Airlines (
    AirlineID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100)
);

CREATE TABLE Flights (
    FlightID INT PRIMARY KEY AUTO_INCREMENT,
    FlightNumber VARCHAR(20),
    DepartureTime DATETIME,
    ArrivalTime DATETIME,
    AirlineID INT,
    FOREIGN KEY (AirlineID) REFERENCES Airlines(AirlineID)
);

CREATE TABLE Airports (
    AirportID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    City VARCHAR(100)
);

CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY AUTO_INCREMENT,
    PassengerID INT,
    FlightID INT,
    BookingDate DATE,
    FOREIGN KEY (PassengerID) REFERENCES Passengers(PassengerID),
    FOREIGN KEY (FlightID) REFERENCES Flights(FlightID)
);
```

## 🖼 ER Diagram
![ER Diagram](Flight_Booking_ER_Diagram.png)

## 🧪 Sample Data

```sql
INSERT INTO Airlines (Name) VALUES ('Air India'), ('IndiGo'), ('SpiceJet');

INSERT INTO Passengers (Name, Email, Phone) VALUES
('Rahul Sharma', 'rahul@example.com', '9876543210'),
('Anita Das', 'anita@example.com', '9123456780');

INSERT INTO Flights (FlightNumber, DepartureTime, ArrivalTime, AirlineID) VALUES
('AI101', '2025-07-01 08:00:00', '2025-07-01 10:30:00', 1),
('6E202', '2025-07-01 12:00:00', '2025-07-01 14:00:00', 2);

INSERT INTO Bookings (PassengerID, FlightID, BookingDate) VALUES
(1, 1, '2025-06-20'),
(2, 2, '2025-06-21');
```

## ✅ Outcome
A fully functional, normalized schema ready for flight booking operations with ER diagram and sample data.

---

*Author: Your Name*  
*Internship Project - SQL Developer*
