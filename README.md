# SQL-INTERN-TASK-04
# JOINs, Grouping & Aggregate Queries 

## 📌 About the Task
This task focuses on writing SQL queries that use **JOINs**, **GROUP BY**, **HAVING**, and **aggregate functions** in a **MySQL** database. The goal was to extract meaningful, combined data from related tables and perform advanced analysis through grouping and aggregation.

---

## 🗃️ Database Used
The database used is `LocalMarketDB`, simulating a local e-commerce system.  
It contains the following relational tables:

- `Sellers`  
- `Customers`  
- `Categories`  
- `Products`  
- `Inventory`  
- `Orders`  
- `OrderItems`  
- `Payments`  

These tables store data such as product listings, sellers, orders, customers, payments, and inventory levels.

---

## ✅ What I Did

I wrote SQL queries that included:

- **JOINs** to combine data across tables  
- **GROUP BY** to summarize data (e.g., product count per category)  
- **Aggregate functions** like `SUM()`, `COUNT()`, `AVG()`, `MAX()`  
- **HAVING** to filter grouped results  
- Filtering using `WHERE`, pattern matching (`LIKE`), and range checks (`BETWEEN`)  
- Sorting results using `ORDER BY`  
- Limiting output with `LIMIT`

---

## 📄 What This Script Covers

The `task4_solution.sql` file includes:

- JOINs between `Orders` and `Customers`, `Products` and `Inventory`
- Multi-table joins across `Sellers`, `Products`, and `Inventory`
- Aggregation: `SUM()`, `AVG()`, `COUNT()`, `MAX()`
- Grouped summaries using `GROUP BY`
- Filtering grouped results using `HAVING`
- Sorting (`ORDER BY`) and conditions (`WHERE`, `LIKE`)

---

## 🛠 Tools Used

- **PG Admin**

---

## 📁 Files Included

- `task4_solution.sql` – All JOIN, GROUP BY, and aggregation queries  
- `README.md` – This file summarizing the purpose and usage of the script

---

📊 This task helped reinforce concepts of relational joins, grouped analysis, and SQL-based data reporting.
