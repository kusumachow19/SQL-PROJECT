Task 8: Stored Procedures and Functions
Objective
Learn how to write reusable SQL logic using stored procedures and functions.Tools
- DB Browser for SQLite or
- MySQL Workbench
Deliverables
- At least one stored procedure
- At least one function
Concepts Used
- CREATE PROCEDURE to define a stored procedure
- CREATE FUNCTION to define a reusable SQL function
- Use of parameters and conditional logic
Examples (MySQL)
1. Stored Procedure - Increase Employee Salary
DELIMITER //
CREATE PROCEDURE IncreaseSalary (
    IN empID INT,
    IN increment DECIMAL(10,2)
)
BEGIN
    UPDATE Employee
    SET salary = salary + increment
    WHERE emp_id = empID;
END //
DELIMITER ;
Usage:
CALL IncreaseSalary(101, 5000.00);
2. Function - Get Annual Salary
DELIMITER //
CREATE FUNCTION GetAnnualSalary (monthly_salary DECIMAL(10,2))RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN monthly_salary * 12;
END //
DELIMITER ;
Usage:
SELECT GetAnnualSalary(50000.00) AS AnnualSalary;