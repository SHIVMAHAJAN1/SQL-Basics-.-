##Q1. Create a New Database and  Table for Employees
create database company_db;

use company_db ;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);
##Q2. Insert Data into Employees Table

INSERT INTO employees (employee_id, first_name, last_name, department, salary, hire_date)
VALUES
(101, 'Amit', 'Sharma', 'HR', 50000, '2020-01-15'),
(102, 'Riya', 'Kapoor', 'Sales', 75000, '2019-03-22'),
(103, 'Raj', 'Mehta', 'IT', 90000, '2018-07-11'),
(104, 'Neha', 'Verma', 'IT', 85000, '2021-09-01'),
(105, 'Arjun', 'Singh', 'Finance', 60000, '2022-02-10');

##Q3. Display All Employee Records Sorted by Salary (Lowest to Highest)

SELECT * FROM employees
ORDER BY salary ASC;

##Q4. Show Employees Sorted by Department (A–Z) and Salary (High → Low)

SELECT * FROM employees
ORDER BY department ASC, salary DESC;

##Q5. List All Employees in the IT Department, Ordered by Hire Date (Newest First)
SELECT *
FROM employees
WHERE department = 'IT'
ORDER BY hire_date DESC;

##Q6. Create and Populate a Sales Table

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    amount INT,
    sale_date DATE
);

INSERT INTO sales (sale_id, customer_name, amount, sale_date) VALUES
(1, 'Aditi', 1500, '2024-08-01'),
(2, 'Rohan', 2200, '2024-08-03'),
(3, 'Aditi', 3500, '2024-09-05'),
(4, 'Meena', 2700, '2024-09-15'),
(5, 'Rohan', 4500, '2024-09-25');

##Q7. Display All Sales Records Sorted by Amount (Highest → Lowest

SELECT *
FROM sales
ORDER BY amount DESC;

##Q8. Show All Sales Made by Customer “Aditi”
SELECT *
FROM sales
WHERE customer_name = 'Aditi';

##Q9. What is the Difference Between a Primary Key and a Foreign Key

##Ans. A Primary Key is a column (or set of columns) in a table that uniquely identifies each row. It does not allow duplicate or null values.
A Foreign Key is a column in one table that refers to the Primary Key in another table. It is used to create a relationship between two tables.
🔍 Key Differences:
- Primary Key ensures uniqueness in its own table.
- Foreign Key connects two tables and ensures referential integrity.
- A table can have only one Primary Key, but multiple Foreign Keys.

##Q10. What Are Constraints in SQL and Why Are They Used.

##Ans. Constraints in SQL are rules applied to table columns to control the type of data that can be stored. They help maintain data accuracy, consistency, and integrity in a database.
✅ Why Constraints Are Used
- To prevent invalid or duplicate data
- To enforce business rules automatically
- To maintain relationships between tables
- To ensure reliable and meaningful data
🔒 Types of SQL Constraints
- NOT NULL – Ensures a column cannot have empty (NULL) values
- UNIQUE – Ensures all values in a column are different
- PRIMARY KEY – Uniquely identifies each row; combines NOT NULL + UNIQUE
- FOREIGN KEY – Links one table to another using a primary key
- CHECK – Validates that values meet a specific condition
- DEFAULT – Sets a default value if none is provided
📌 Example
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT CHECK (age >= 18),
    city VARCHAR(50) DEFAULT 'Amravati'
);







