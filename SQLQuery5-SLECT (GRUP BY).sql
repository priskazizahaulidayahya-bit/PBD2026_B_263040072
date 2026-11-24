SELECT COUNT(*) AS TotalProduk 
FROM Production.Product; 

SELECT Color, COUNT(*) AS JumlahProduk 
FROM Production.Product 
GROUP BY Color;

SELECT ProductID, SUM(OrderQty) AS TotalTerjual, AVG(UnitPrice) AS 
RataRataHarga 
FROM Sales.SalesOrderDetail 
GROUP BY ProductID; 

SELECT Color, Size, COUNT(*) AS Jumlah 
FROM Production.Product 
GROUP BY Color, Size; 

-- QUERY ERROR 
SELECT Color, Name, COUNT(*)  
FROM Production.Product 
GROUP BY Color; 

