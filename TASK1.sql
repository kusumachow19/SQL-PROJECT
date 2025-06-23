create database  FLIGHTSYSTEM
USE FLIGHTSYSTEM


-- creating passengers table
create table Passengers (
passengerID int primary key
auto_increment,
Name varchar(100),
Email varchar(100) unique,
Phone varchar(10)
);

-- creating airlines table
create table Airlines (
AirlineID INT PRIMARY key
auto_increment,
Name varchar(100)
);

-- creating flights table
create table Flights (
FlightID int primary key 
auto_increment,
FlightNumber varchar(20),
DepartureTime DATETIME,
ArrivalTime DATETIME,
AirlineID int,
foreign key (AirlineID)
references Airlines(AirlineID)
);

-- creating Airports table
create table Airports (
AirportID int primary key
auto_increment,
Name varchar(50),
City varchar(50)
);

-- creating Bookings table
create table Bookings (
BookingID int primary key
auto_increment,
PassengerID int,
FlightId int,
BookingDate DATE,
foreign key (passengerID)
references passengers(passengerId),
foreign key (FlightID)
references Flights(FlightID)
);
