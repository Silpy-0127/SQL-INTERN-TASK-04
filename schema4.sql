-- 1. View all sellers
SELECT * FROM Sellers;

-- 2. Get products priced below ₹1000
SELECT Name, Price FROM Products
WHERE Price < 1000;

-- 3. List customers from cities with 'pur' in their address
SELECT * FROM Customers
WHERE Address LIKE '%pur%';

-- 4. Get all orders that are Delivered or Shipped
SELECT * FROM Orders
WHERE Status IN ('Delivered', 'Shipped');

-- 5. List inventory restocked between 2024-06-01 and 2024-06-20
SELECT * FROM Inventory
WHERE LastRestocked BETWEEN '2024-06-01' AND '2024-06-20';

-- 6. Get customers with phone numbers starting with '98'
SELECT * FROM Customers
WHERE Phone LIKE '98%';

-- 7. List products ordered by price from high to low
SELECT * FROM Products
ORDER BY Price DESC;

-- 8. Top 5 cheapest products
SELECT Name, Price FROM Products
ORDER BY Price ASC
LIMIT 5;

-- 9. Show product name and available quantity
SELECT P.Name, I.QuantityAvailable
FROM Products P
JOIN Inventory I ON P.ProductID = I.ProductID;

-- 10. Payments above ₹1000
SELECT * FROM Payments
WHERE Amount > 1000;

-- 11. Orders with customer names
SELECT O.OrderID, C.Name AS CustomerName, O.Status
FROM Orders O
JOIN Customers C ON O.CustomerID = C.CustomerID;

-- 12. Total number of products in each category
SELECT C.CategoryName, COUNT(P.ProductID) AS ProductCount
FROM Categories C
LEFT JOIN Products P ON C.CategoryID = P.CategoryID
GROUP BY C.CategoryName;

-- 13. Categories having more than 1 product (uses HAVING)
SELECT C.CategoryName, COUNT(P.ProductID) AS ProductCount
FROM Categories C
JOIN Products P ON C.CategoryID = P.CategoryID
GROUP BY C.CategoryName
HAVING COUNT(P.ProductID) > 1;

-- 14. Average product price per category
SELECT C.CategoryName, ROUND(AVG(P.Price), 2) AS AvgPrice
FROM Categories C
JOIN Products P ON C.CategoryID = P.CategoryID
GROUP BY C.CategoryName;

-- 15. Total quantity available per seller
SELECT S.Name AS SellerName, SUM(I.QuantityAvailable) AS TotalStock
FROM Sellers S
JOIN Products P ON S.SellerID = P.SellerID
JOIN Inventory I ON P.ProductID = I.ProductID
GROUP BY S.Name;

-- 16. Highest payment amount per method
SELECT PaymentMethod, MAX(Amount) AS MaxPaid
FROM Payments
GROUP BY PaymentMethod;