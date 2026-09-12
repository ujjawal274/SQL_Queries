# 🗄️ MySQL SQL Practice & Data Analysis

<div align="center">

![MySQL](https://img.shields.io/badge/MySQL-8.0.46-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Practice-336791?style=for-the-badge)
![Database](https://img.shields.io/badge/Database-Management-2C3E50?style=for-the-badge)
![Data Analysis](https://img.shields.io/badge/Data-Analysis-27AE60?style=for-the-badge)
![Aggregations](https://img.shields.io/badge/Aggregations-GROUP%20BY%20%7C%20HAVING-F39C12?style=for-the-badge)
![Joins](https://img.shields.io/badge/Joins-INNER%20%7C%20LEFT%20%7C%20RIGHT%20%7C%20FULL-16A085?style=for-the-badge)
![Hands On](https://img.shields.io/badge/Hands--On-Practice-E74C3C?style=for-the-badge)
![1000+ Lines](https://img.shields.io/badge/1000%2B-Lines%20of%20SQL-8E44AD?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-In%20Progress-F1C40F?style=for-the-badge)

**A hands-on MySQL SQL practice repository covering database creation, querying, filtering, aggregation, grouping, and relational data analysis using JOINs.**

</div>

---

## 📖 About This Repository

This repository contains my **hands-on SQL learning and practice journey using MySQL**.

The SQL file includes practical queries written while learning SQL concepts step-by-step, starting from basic database and table creation and progressing toward more advanced querying concepts such as:

- Filtering
- Sorting
- Aggregation
- GROUP BY
- HAVING
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL OUTER JOIN implementation using `UNION`

The purpose of this repository is to build a strong SQL foundation for **Data Analysis and Business Intelligence**.

---

## 🎯 Objectives

The main objectives of this SQL practice project are:

- Understand relational databases.
- Learn how to create and manage tables.
- Practice writing SQL queries.
- Retrieve specific data using filtering conditions.
- Work with multiple conditions.
- Perform calculations using aggregate functions.
- Group and analyze data.
- Filter grouped results using `HAVING`.
- Understand relationships between tables.
- Practice different types of SQL JOINs.
- Improve SQL problem-solving skills.
- Build a strong foundation for Data Analyst interviews and projects.

---

# 🧰 Tools & Technologies

| Tool / Technology | Purpose |
|---|---|
| **MySQL 8.0.46** | Database Management System |
| **SQL** | Querying and Data Analysis |
| **MySQL Workbench** | SQL development and query execution |

---

# 🗂️ Database Used

The practice begins with the creation of a database named:

```sql
CREATE DATABASE data_analyst;

USE data_analyst;
```

The database is used to create multiple practice tables and execute SQL queries on them. :contentReference[oaicite:1]{index=1}

---

# 📚 SQL Topics Covered

## 1️⃣ Database & Table Creation

The project starts with fundamental database operations.

### Concepts Practiced

- CREATE DATABASE
- USE DATABASE
- SELECT DATABASE
- CREATE TABLE
- PRIMARY KEY
- Data Types
- INSERT INTO

Example:

```sql
CREATE TABLE Students (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    City VARCHAR(50)
);
```

The `Students` table is used as one of the first datasets for practicing SQL queries. :contentReference[oaicite:2]{index=2}

---

# 2️⃣ SELECT Statement

Practiced retrieving:

- All columns
- Single columns
- Multiple columns

Examples:

```sql
SELECT * FROM Students;

SELECT Name, Age
FROM Students;

SELECT City
FROM Students;
```

---

# 3️⃣ Column Aliases

The `AS` keyword is used to give meaningful names to columns in query results.

Example:

```sql
SELECT 
    Name AS Student_Name,
    Age AS Student_Age,
    City AS Student_City
FROM Students;
```

---

# 4️⃣ WHERE Clause

The `WHERE` clause is used to filter records based on conditions.

Examples:

```sql
SELECT *
FROM Students
WHERE City = 'Mumbai';
```

```sql
SELECT *
FROM Students
WHERE Age > 22;
```

Conditions practiced include:

- `=`
- `!=`
- `>`
- `<`
- `>=`
- `<=`

---

# 5️⃣ AND, OR & NOT

Multiple conditions were practiced using:

### AND

Both conditions must be true.

```sql
SELECT *
FROM Employees
WHERE Department = 'HR'
AND Salary = 25000;
```

### OR

At least one condition must be true.

```sql
SELECT *
FROM Employees
WHERE Department = 'HR'
OR Department = 'Finance';
```

### NOT

Used to exclude a condition.

```sql
SELECT *
FROM Employees
WHERE NOT Department = 'Sales';
```

Parentheses were also practiced for combining conditions correctly. :contentReference[oaicite:3]{index=3}

---

# 6️⃣ IN Operator

The `IN` operator is used when checking a column against multiple possible values.

Example:

```sql
SELECT *
FROM Employees
WHERE Department IN ('HR', 'Finance');
```

Another example:

```sql
SELECT *
FROM Employees
WHERE Salary IN (15000, 20000, 25000);
```

This provides a cleaner alternative to writing multiple `OR` conditions. :contentReference[oaicite:4]{index=4}

---

# 7️⃣ BETWEEN Operator

`BETWEEN` was practiced for filtering values within a range.

Example:

```sql
SELECT *
FROM Employees
WHERE Salary BETWEEN 15000 AND 20000;
```

It was also applied to:

- Age
- Salary
- Price
- Rating

---

# 🍽️ Practice Dataset – Restaurant

A `Restaurant` table was created for additional SQL practice.

### Columns

```text
ItemID
ItemName
Category
Price
Rating
Available
```

Example categories include:

- Burger
- Pizza
- Snacks
- Beverage
- Pasta
- Sandwich

The dataset was used to practice filtering, sorting, limiting, distinct values, and aggregate functions. :contentReference[oaicite:5]{index=5}

---

# 8️⃣ ORDER BY

The `ORDER BY` clause was practiced for sorting query results.

### Ascending

```sql
SELECT *
FROM Restaurant
ORDER BY Price ASC;
```

### Descending

```sql
SELECT *
FROM Restaurant
ORDER BY Price DESC;
```

Multiple-column sorting was also practiced.

Example:

```sql
SELECT *
FROM Restaurant
ORDER BY Category ASC, Price DESC;
```

---

# 9️⃣ LIMIT

`LIMIT` was used to restrict the number of records returned.

Example:

```sql
SELECT *
FROM Restaurant
LIMIT 5;
```

Combined with sorting:

```sql
SELECT *
FROM Restaurant
ORDER BY Price DESC
LIMIT 3;
```

This was also practiced with filtering conditions. :contentReference[oaicite:6]{index=6}

---

# 🔟 DISTINCT

`DISTINCT` was used to retrieve unique values.

Examples:

```sql
SELECT DISTINCT Category
FROM Restaurant;
```

```sql
SELECT DISTINCT Available
FROM Restaurant;
```

Multiple columns were also used with `DISTINCT`.

---

# 1️⃣1️⃣ Aggregate Functions

The following aggregate functions were practiced:

| Function | Purpose |
|---|---|
| `COUNT()` | Counts records |
| `SUM()` | Calculates total |
| `AVG()` | Calculates average |
| `MIN()` | Finds minimum value |
| `MAX()` | Finds maximum value |

Examples:

```sql
SELECT COUNT(*)
FROM Restaurant;
```

```sql
SELECT SUM(Price)
FROM Restaurant;
```

```sql
SELECT AVG(Rating)
FROM Restaurant;
```

```sql
SELECT MIN(Price)
FROM Restaurant;
```

```sql
SELECT MAX(Price)
FROM Restaurant;
```

These functions were also combined with `WHERE` conditions. :contentReference[oaicite:7]{index=7}

---

# 📱 Practice Dataset – MobileStore

A `MobileStore` table was created for more advanced aggregation and grouping practice.

### Columns

```text
MobileID
Brand
Model
Price
RAM
Storage
Rating
InStock
```

The dataset contains mobile brands such as:

- Samsung
- Apple
- OnePlus
- Xiaomi
- Realme
- Vivo
- Oppo
- Motorola
- Google
- Nothing

The table was used for practicing filtering, aggregate functions, grouping, and `HAVING`. :contentReference[oaicite:8]{index=8}

---

# 1️⃣2️⃣ GROUP BY

`GROUP BY` was practiced to perform analysis based on categories.

Examples:

### Count mobiles by brand

```sql
SELECT 
    Brand,
    COUNT(*) AS Total_Mobiles
FROM MobileStore
GROUP BY Brand;
```

### Average price by brand

```sql
SELECT 
    Brand,
    AVG(Price) AS Avg_Price
FROM MobileStore
GROUP BY Brand;
```

### Highest price by brand

```sql
SELECT 
    Brand,
    MAX(Price) AS Highest_Price
FROM MobileStore
GROUP BY Brand;
```

Other grouping dimensions practiced include:

- Brand
- RAM
- Storage
- InStock

---

# 1️⃣3️⃣ HAVING Clause

The `HAVING` clause was practiced for filtering grouped results.

Example:

```sql
SELECT 
    Brand,
    COUNT(*) AS Total_Mobiles
FROM MobileStore
GROUP BY Brand
HAVING Total_Mobiles >= 2;
```

Another example:

```sql
SELECT 
    RAM,
    AVG(Price) AS Avg_Price
FROM MobileStore
GROUP BY RAM
HAVING Avg_Price > 30000;
```

The project also combines:

```text
WHERE
GROUP BY
HAVING
ORDER BY
```

to perform more detailed analysis. :contentReference[oaicite:9]{index=9}

---

# 1️⃣4️⃣ INNER JOIN

Two related tables were created:

### Customers

```text
CustomerID
CustomerName
City
```

### Orders

```text
OrderID
CustomerID
ProductName
Amount
```

The tables are connected through `CustomerID`. :contentReference[oaicite:10]{index=10}

Example:

```sql
SELECT 
    CustomerName,
    ProductName
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
```

Additional filtering and sorting were practiced with `INNER JOIN`.

---

# 1️⃣5️⃣ LEFT JOIN

`LEFT JOIN` was practiced to retrieve all records from the left table and matching records from the right table.

Example:

```sql
SELECT 
    CustomerName,
    ProductName
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
```

The project also identifies customers who have **no matching orders**.

```sql
SELECT 
    CustomerName,
    City
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.CustomerID IS NULL;
```

---

# 1️⃣6️⃣ RIGHT JOIN

`RIGHT JOIN` was practiced to retrieve all records from the right table and matching records from the left table.

Example:

```sql
SELECT 
    CustomerName,
    ProductName,
    Amount
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
```

The practice also identifies orders that do not have a matching customer.

```sql
SELECT 
    ProductName,
    Amount
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
WHERE Customers.CustomerID IS NULL;
```

---

# 1️⃣7️⃣ FULL OUTER JOIN

The project demonstrates a **FULL OUTER JOIN approach** using `LEFT JOIN`, `RIGHT JOIN`, and `UNION`.

Example:

```sql
SELECT 
    Customers.CustomerName,
    Orders.ProductName,
    Orders.Amount
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID

UNION

SELECT 
    Customers.CustomerName,
    Orders.ProductName,
    Orders.Amount
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
```

This approach combines matching and non-matching records from both tables. :contentReference[oaicite:11]{index=11}

---

# 🗃️ Practice Tables

The SQL practice file contains multiple datasets created for different concepts.

| Table | Main Purpose |
|---|---|
| `Students` | Basic SQL queries and filtering |
| `Employees` | Conditions and logical operators |
| `Flowers` | Basic table creation and data insertion |
| `Restaurant` | Filtering, sorting, LIMIT, DISTINCT, aggregation |
| `MobileStore` | Aggregation, GROUP BY and HAVING |
| `Customers` | JOIN practice |
| `Orders` | JOIN practice |

---

# 🧩 SQL Concepts Summary

```text
Database Creation
        ↓
Table Creation
        ↓
INSERT Data
        ↓
SELECT
        ↓
Aliases
        ↓
WHERE
        ↓
AND / OR / NOT
        ↓
IN
        ↓
BETWEEN
        ↓
ORDER BY
        ↓
LIMIT
        ↓
DISTINCT
        ↓
Aggregate Functions
        ↓
GROUP BY
        ↓
HAVING
        ↓
INNER JOIN
        ↓
LEFT JOIN
        ↓
RIGHT JOIN
        ↓
FULL OUTER JOIN using UNION
```

---

# 💼 Skills Demonstrated

Through this project, I practiced:

- 🗄️ Database Management
- 🧱 Table Creation
- 📝 SQL Query Writing
- 🔎 Data Filtering
- 🔀 Logical Operators
- 📊 Data Aggregation
- 📈 Grouped Data Analysis
- 🔗 Relational Data Analysis
- 🔄 Table Joins
- 🧠 SQL Problem Solving

---

# 📌 Practical SQL Operations

The repository includes practice involving:

- Selecting specific records
- Filtering data using conditions
- Sorting query results
- Selecting unique values
- Calculating totals
- Calculating averages
- Finding minimum and maximum values
- Counting records
- Grouping records
- Filtering grouped results
- Joining multiple tables
- Finding unmatched records
- Combining query results using `UNION`

---

# 📂 Repository Structure

```text
SQL-Practice/
│
├── SQL_Practice.sql
└── README.md
```

---

# 🚀 How to Run

### 1. Install MySQL

Install **MySQL** and **MySQL Workbench**.

### 2. Open MySQL Workbench

Open the SQL practice file:

```text
SQL_Practice.sql
```

### 3. Execute the Database Creation

```sql
CREATE DATABASE data_analyst;

USE data_analyst;
```

### 4. Run the Queries

Execute the SQL statements section by section to recreate the tables and practice the queries.

---

# 📊 Learning Progress

| Topic | Status |
|---|:---:|
| Database Creation | ✅ |
| Table Creation | ✅ |
| INSERT | ✅ |
| SELECT | ✅ |
| Aliases | ✅ |
| WHERE | ✅ |
| AND / OR / NOT | ✅ |
| IN | ✅ |
| BETWEEN | ✅ |
| ORDER BY | ✅ |
| LIMIT | ✅ |
| DISTINCT | ✅ |
| Aggregate Functions | ✅ |
| GROUP BY | ✅ |
| HAVING | ✅ |
| INNER JOIN | ✅ |
| LEFT JOIN | ✅ |
| RIGHT JOIN | ✅ |
| FULL OUTER JOIN Concept | ✅ |

---

# 🎓 Learning Outcome

This project helped me build a practical foundation in **SQL and relational database querying**.

I progressed from basic `SELECT` statements and filtering to more advanced concepts such as **aggregation, GROUP BY, HAVING, and JOIN operations**.

The hands-on exercises helped me understand how SQL can be used to retrieve, filter, summarize, and combine data — skills that are essential for a **Data Analyst**.

---

# 🚀 Future Learning Goals

The next areas I plan to explore include:

- Subqueries
- Common Table Expressions (CTEs)
- CASE Statements
- String Functions
- Date Functions
- Window Functions
- Stored Procedures
- Views
- Indexes
- Query Optimization
- Advanced SQL Practice
- SQL Interview Questions

---

# ⭐ Project Highlights

<div align="center">

| Area | Covered |
|---|:---:|
| MySQL | ✅ |
| SQL Fundamentals | ✅ |
| Data Filtering | ✅ |
| Aggregations | ✅ |
| GROUP BY | ✅ |
| HAVING | ✅ |
| INNER JOIN | ✅ |
| LEFT JOIN | ✅ |
| RIGHT JOIN | ✅ |
| FULL OUTER JOIN Approach | ✅ |
| Hands-on Queries | ✅ |
| Data Analysis Concepts | ✅ |

</div>

---

# 📈 Why This Project Matters

SQL is one of the most important skills for a Data Analyst.

This practice repository demonstrates my progression from basic SQL syntax to relational data analysis. Working with multiple datasets and relationships between tables helped me develop a better understanding of how real-world databases can be queried and analyzed.

---

# 👨‍💻 Author

****

### Aspiring Data Analyst

**Skills:**

`Excel` • `SQL` • `Power BI` • `Python` • `Data Analysis`

---

# 🤝 Contributing

This repository is primarily created for learning and practice.

Suggestions and improvements are welcome.

If you would like to contribute:

1. Fork the repository.
2. Create a new branch.
3. Make your changes.
4. Commit your changes.
5. Create a Pull Request.

---

# ⭐ Support

If you found this SQL practice repository useful, consider giving it a **⭐ Star** on GitHub.

---

<div align="center">

### 🗄️ Learn SQL → Analyze Data → Build Better Insights 📊

**Built with MySQL & SQL**

</div>
