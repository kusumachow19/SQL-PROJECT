# Task 5: SQL Joins (Inner, Left, Right, Full)

## ✅ Objective
Learn to combine data from multiple related tables using various types of SQL JOINs.

---

## 🛠 Tools Used
- DB Browser for SQLite *(limited JOIN support)*
- MySQL Workbench *(recommended for all JOIN types)*

---

## 📂 Tables Used
### 1. Customers
| Column       | Type         |
|--------------|--------------|
| customer_id  | INT (PK)     |
| name         | VARCHAR(100) |
| city         | VARCHAR(100) |

### 2. Orders
| Column       | Type         |
|--------------|--------------|
| order_id     | INT (PK)     |
| customer_id  | INT (FK)     |
| product      | VARCHAR(100) |

---

## 💾 Sample Data

### Customers
```sql
INSERT INTO Customers (customer_id, name, city) VALUES
(10, 'Rahul', 'Delhi'),
(11, 'Sneha', 'Pune'),
(12, 'Amit', 'Bangalore'),
(13, 'Priya', 'Kolkata');
```

### Orders
```sql
INSERT INTO Orders (order_id, customer_id, product) VALUES
(201, 10, 'TV'),
(202, 11, 'Fridge'),
(203, 14, 'Washing Machine'); -- No matching customer
```

---

## 🔄 JOIN Queries

### 🔹 INNER JOIN
Returns records with matching customer and order entries.
```sql
SELECT Customers.name, Orders.product
FROM Customers
INNER JOIN Orders ON Customers.customer_id = Orders.customer_id;
```

---

### 🔹 LEFT JOIN
Returns all customers and their orders (if any).
```sql
SELECT Customers.name, Orders.product
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id;
```

---

### 🔹 RIGHT JOIN *(Only in MySQL)*
Returns all orders and the matching customers (if any).
```sql
SELECT Customers.name, Orders.product
FROM Customers
RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;
```

---

### 🔹 FULL OUTER JOIN *(Using UNION in MySQL)*
Combines LEFT and RIGHT JOIN results.
```sql
SELECT Customers.name, Orders.product
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id

UNION

SELECT Customers.name, Orders.product
FROM Customers
RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;
```

---

## 🎯 Outcome
By completing this task, you will master:
- Data merging across tables
- Understanding different types of SQL JOINs
- Handling unmatched records

---

## 📌 Notes
- RIGHT and FULL JOIN are not supported in SQLite.
- MySQL or PostgreSQL is recommended for full JOIN support.
