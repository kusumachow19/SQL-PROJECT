


---

✅ Example Using MySQL

Let's assume we have a table named Employee:

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10,2)
);


---

🔧 1. Stored Procedure: Increase Salary

This procedure increases the salary of a specific employee:

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


---

🧮 2. Function: Get Annual Salary

This function returns annual salary (monthly salary × 12):

DELIMITER //

CREATE FUNCTION GetAnnualSalary (monthly_salary DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN monthly_salary * 12;
END //

DELIMITER ;

Usage:

SELECT GetAnnualSalary(50000.00) AS AnnualSalary;


---

✅ Outcome

You've modularized SQL logic

You now have reusable SQL blocks for repeated operations


Let me know if you want an example using SQLite instead!