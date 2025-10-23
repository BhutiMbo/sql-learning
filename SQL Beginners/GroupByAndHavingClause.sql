select Max(totalDue)
from sales.SalesOrderHeader

select Min(totalDue)
from sales.SalesOrderHeader

select Count(*)
from sales.SalesOrderHeader

select SUM (totaldue)
from sales.SalesOrderHeader
where OrderDate between '1/1/2006' and '12/31/2006'

select count(*)
from person.Person

select count (MiddleName)
from person.Person

select avg(StandardCost) 
from production.product
where StandardCost > 0.00

select avg (freight)
from sales.SalesOrderHeader
where TerritoryID = 4 

select  max (listPrice)
from production.Product

select sum(listprice)
from Production.product P
inner join Production.ProductInventory PI 
on P.ProductID = PI.ProductID
where ListPrice > 0.00

SELECT ProductID, SUM(Quantity) as [Total in Stock], 
Count(*) as [Total Locations]
from Production.ProductInventory
Group by ProductID

SELECT 
ST.Name as [Territory Name], 
P.FirstName +' '+ P.LastName as SalesPersonName,
SUM(TotalDue) as [Total Sales] 
from Sales.SalesOrderHeader SOH 
INNER JOIN Sales.SalesPerson SP
ON SP.BusinessEntityID = SOH.SalesPersonID
INNER JOIN Person.Person p 
ON P.BusinessEntityID = SP.BusinessEntityID
INNER JOIN Sales.SalesTerritory ST
ON ST.TerritoryID = SOH.TerritoryID
WHERE OrderDate BETWEEN '2006-01-01' AND '2006-12-31'
GROUP BY ST.Name, P.FirstName + ' ' + P.LastName
Order by 1,2 

select PersonType, count(*) as PersonCount
from person.Person
group by PersonType

select color, count (*) as ProductColor
from Production.Product
where color in ('Red', 'Black')
group by color 

select ST.Name AS [TerritoryName], count(*) as [TotalSales]
from sales.SalesOrderHeader SOH
Inner join sales.SalesTerritory ST
ON SOH.TerritoryID = ST.TerritoryID
where OrderDate between '7/1/2005' and '12/31/2006'
Group by ST.Name

select 
ST.Name as [Territory Name],
SUM(TotalDue) AS [Total sales - 2006]
from sales.salesorderheader SOH 
INNER JOIN Sales.SalesTerritory ST 
ON ST.TerritoryID = SOH.TerritoryID
where OrderDate between '1/1/2006' and '12/31/2006'
Group by ST.Name
Having Sum(TotalDue) > 4000000
order by 1 

select PS.NAME AS [SubCategory Name], count (*) as [Product count]
from Production.product P
Inner join Production.ProductSubcategory PS
On PS.ProductSubcategoryID = P.ProductSubcategoryID
Group by PS.Name
Having Count (*) >= 15 
order by 1 

select 
department as [department Name],
count (*) as [Employee Count]
From HumanResources.vEmployeeDepartment
Group by Department
having count (*) in (6,10)

select SalesPersonID, 
SUM (TotalDue) AS [Total Sales Amount], 
count (*) AS [Total Sales Count]
from Sales.SalesOrderHeader
where OrderDate Between '1/1/2006' and '12/21/2006'
and SalesPersonID IS NOT NULL
Group By SalesPersonID
Having SUM(TotalDue) >= 75
Order by [Total Sales Amount] desc

select TerritoryID, sum(TotalDue) as TotalSales
from sales.salesOrderHeader
Group by TerritoryID
Having sum(TotalDue) > 1000000
ORDER BY TerritoryID desc

select ST.Name, sum(TotalDue) as TotalSales
from sales.salesOrderHeader SOH
inner join Sales.SalesTerritory ST
on ST.TerritoryID = SOH.TerritoryID
Group by ST.Name
Having sum(TotalDue) > 1000000
order by ST.Name desc

select Color, count(*) as ProductCount
from Production.Product 
where color is not null 
group by Color
having Count(*) >= 20 

select P.Name AS ProductName, SUM(SOD.OrderQTY) AS ProdutOrderCount
from sales.SalesOrderHeader SOH
inner join sales.SalesOrderDetail SOD
on SOH.SalesOrderID = SOD.SalesOrderID
INNER JOIN Production.Product P
on SOD.ProductID = P.ProductID
where SOH.OrderDate BETWEEN '1/1/2006' AND'12/31/2006'
Group by p.name
having count(*) >= 200 

SELECT
P.FirstName,
P.LastName,
COUNT(*) AS OrdersPlaced
FROM Sales.SalesOrderHeader SOH
INNER JOIN Sales.Customer C
ON C.CustomerID = SOH.CustomerID
INNER JOIN Person.Person P
ON P.BusinessEntityID = C.PersonID
WHERE OrderDate BETWEEN '7/1/2005' AND '12/31/2006'
GROUP BY P.FirstName, P.LastName
HAVING COUNT(*) >= 6
ORDER BY OrdersPlaced DESC