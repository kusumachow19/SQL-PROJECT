-- Step 1: Create Tables
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(100)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(100),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);


-- Step 2: Insert New Sample Data
INSERT INTO Customers (customer_id, name, city) VALUES
(10, 'Rahul', 'Delhi'),
(11, 'Sneha', 'Pune'),
(12, 'Amit', 'Bangalore'), 
(13, 'Priya', 'Kolkata');

INSERT INTO Orders (order_id, customer_id, product) VALUES
(201, 10, 'TV'),
(202, 11, 'Fridge'),
(203, 14, 'Washing Machine');  -- customer_id 14 doesn't exist in Customers


-- Step 3: INNER JOIN
SELECT Customers.name, Orders.product
FROM Customers
INNER JOIN Orders ON Customers.customer_id = Orders.customer_id;


-- Step 4: LEFT JOIN
SELECT Customers.name, Orders.product
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id;


-- Step 5: RIGHT JOIN (Only in MySQL)
SELECT Customers.name, Orders.product
FROM Customers
RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;


-- Step 6: FULL OUTER JOIN (Using UNION in MySQL)
SELECT Customers.name, Orders.product
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id
UNION
SELECT Customers.name, Orders.product
FROM Customers
RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;
