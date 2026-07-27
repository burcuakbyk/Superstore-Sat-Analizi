--
CREATE TABLE Sales_Log
(
    Log_ID INT IDENTITY(1,1) PRIMARY KEY,
    Order_ID NVARCHAR(50),
    Product_Name NVARCHAR(255),
    Action_Type NVARCHAR(20),
    Action_Date DATETIME
);

--INSERT Trigger
CREATE TRIGGER trg_After_Insert_Sales
ON dbo.Superstore
AFTER INSERT
AS
BEGIN
    INSERT INTO Sales_Log
    (
        Order_ID,
        Product_Name,
        Action_Type,
        Action_Date
    )
    SELECT
        [Order ID],
        [Product Name],
        'INSERT',
        GETDATE()
    FROM inserted;
END;
GO

--UPDATE Trigger
CREATE TRIGGER trg_After_Update_Sales
ON dbo.Superstore
AFTER UPDATE
AS
BEGIN
    INSERT INTO Sales_Log
    (
        Order_ID,
        Product_Name,
        Action_Type,
        Action_Date
    )
    SELECT
        [Order ID],
        [Product Name],
        'UPDATE',
        GETDATE()
    FROM inserted;
END;
GO

--DELETE Trigger
CREATE TRIGGER trg_After_Delete_Sales
ON dbo.Superstore
AFTER DELETE
AS
BEGIN
    INSERT INTO Sales_Log
    (
        Order_ID,
        Product_Name,
        Action_Type,
        Action_Date
    )
    SELECT
        [Order ID],
        [Product Name],
        'DELETE',
        GETDATE()
    FROM deleted;
END;
GO

INSERT INTO dbo.Superstore
(
    [Order ID],
    [Order Date],
    [Ship Date],
    [Ship Mode],
    [Customer ID],
    [Customer Name],
    Segment,
    Country,
    City,
    State,
    Region,
    [Product ID],
    Category,
    [Sub-Category],
    [Product Name],
    Sales,
    Quantity,
    Profit
)
VALUES
(
    'TEST-000001',
    '2026-07-27',
    '2026-07-29',
    'Second Class',
    'CG-12520',
    'Test Customer',
    'Consumer',
    'Turkey',
    'Istanbul',
    'Istanbul',
    'Europe',
    'TEC-TEST-001',
    'Technology',
    'Accessories',
    'Wireless Mouse',
    250.00,
    2,
    50.00
);

--Eğer işlemi transaction içinde yaparsan ROLLBACK ile tüm silinen veriler geri gelir.  
--Delete işlemlerini "BEGIN TRANSACTION;" ile yap
DELETE FROM dbo.Superstore
WHERE [Order ID] = 'TEST-000002';

--Bunu Çalıştırma
BEGIN TRANSACTION;

DELETE FROM dbo.Superstore;

-- Fark ettin ki yanlış olmuş
ROLLBACK;

UPDATE DBO.Superstore SET Sales=300 WHERE [Order ID]='TEST-000001';

SELECT * FROM DBO.Sales_Log;
 