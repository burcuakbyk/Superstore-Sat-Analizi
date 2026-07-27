-- LIKE kullanımı
-- Ürün isminde belirli bir ifade arama

SELECT
    [Product Name],
    Category,
    Sales
FROM Superstore
WHERE [Product Name] LIKE '%Chair%';

-- IN kullanımı

SELECT
    [Product Name],
    Category,
    Sales
FROM Superstore
WHERE Category IN ('Technology','Furniture');

-- BETWEEN kullanımı

SELECT
    [Product Name],
    Sales,
    Profit
FROM Superstore
WHERE Sales BETWEEN 500 AND 1000;

-- Kolon alias kullanımı

SELECT
    [Product Name] AS Product,
    Sales AS Total_Sales,
    Profit AS Total_Profit
FROM Superstore;

-- Tablo alias kullanımı

SELECT
    s.[Product Name],
    s.Category,
    s.Sales
FROM Superstore AS s;

--Sadece 450.000'den fazla satış yapan kategorileri görmek istiyorsan:
SELECT
    Category,
    SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Category
HAVING SUM(Sales) > 450000;

--SQL'in if-else yapısıdır.
SELECT
    Sales,
    CASE
        WHEN Sales >= 1000 THEN 'High'
        WHEN Sales >= 500 THEN 'Medium'
        ELSE 'Low'
    END AS Sales_Level
FROM Superstore;

--Customers,Orders,Products,Employees adlarında tablolardan oluşan veritabanı oluşturursak:
CREATE DATABASE CompanyDB;
GO

USE CompanyDB;
GO

CREATE TABLE Customers
(
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(50)
);

CREATE TABLE Orders
(
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Sales DECIMAL(10,2)
);

INSERT INTO Customers
VALUES
(1,'Ali','İstanbul'),
(2,'Ayşe','Ankara'),
(3,'Mehmet','İzmir'),
(4,'Zeynep','Bursa'),
(5,'Can','Antalya');

INSERT INTO Orders
VALUES
(101,1,'2024-01-05',1500),
(102,1,'2024-01-10',800),
(103,2,'2024-02-03',2500),
(104,3,'2024-03-15',1200),
(105,6,'2024-04-20',900);


--Müşteri isimlerini görmek için:
SELECT
    c.CustomerName,
    o.Sales
FROM Orders o
JOIN Customers c
ON o.CustomerID = c.CustomerID;

--INNER JOIN
--Sadece iki tabloda da bulunan kayıtlar gelir.
SELECT
    c.CustomerID,
    c.CustomerName,
    o.OrderID,
    o.Sales
FROM Customers c
INNER JOIN Orders o
ON c.CustomerID = o.CustomerID;

--LEFT JOIN
--Bütün müşterileri getir.Siparişi olmayanlar da gelsin.
SELECT
    c.CustomerName,
    o.OrderID,
    o.Sales
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID;

--RIGHT JOIN
--Bu kez Orders tablosundaki her kayıt gelir.
SELECT
    c.CustomerName,
    o.OrderID,
    o.Sales
FROM Customers c
RIGHT JOIN Orders o
ON c.CustomerID = o.CustomerID;

--FULL OUTER JOIN
--İki tablodaki her şeyi getir.
SELECT
    c.CustomerName,
    o.OrderID,
    o.Sales
FROM Customers c
FULL OUTER JOIN Orders o
ON c.CustomerID = o.CustomerID;

--JOIN + GROUP BY
--En çok satış yapan müşteriler
SELECT
    c.CustomerName,
    SUM(o.Sales) AS TotalSales
FROM Customers c
INNER JOIN Orders o
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName
ORDER BY TotalSales DESC;

--JOIN + HAVING
--1000'den fazla satış yapan müşteriler
SELECT
    c.CustomerName,
    SUM(o.Sales) AS TotalSales
FROM Customers c
INNER JOIN Orders o
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName
HAVING SUM(o.Sales) > 1000;

--JOIN + CASE WHEN
--Müşterileri satış tutarına göre sınıflandır.
SELECT
    c.CustomerName,
    SUM(o.Sales) AS TotalSales,
    CASE
        WHEN SUM(o.Sales) >= 3000 THEN 'Platinum'
        WHEN SUM(o.Sales) >= 1500 THEN 'Gold'
        ELSE 'Silver'
    END AS CustomerLevel
FROM Customers c
INNER JOIN Orders o
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName;
