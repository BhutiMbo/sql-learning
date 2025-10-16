select P.BusinessEntityID, P.SalesYTD, ST.Name AS [Territory name]
from sales.salesPerson P
left Join Sales.SalesTerritory ST
ON P.TerritoryID =ST.TerritoryID

select SP.BusinessEntityID, SP.SalesYTD, ST.Name AS [Territory name], P.FirstName, P.LastName
from sales.salesPerson SP
left Join Sales.SalesTerritory ST
ON SP.TerritoryID =ST.TerritoryID
inner JOIN Person.Person P
ON P.BusinessEntityID =SP.BusinessEntityID
WHERE ST.Name IN ('Northeast', 'Central')

select P.Name as [ProductName], P.ListPrice, PS.Name as [ProductSubCategoryName], PC.Name AS [ProductCategoryName]
from Production.Product P
left join Production.ProductSubcategory PS
ON P.ProductSubcategoryID = PS.ProductSubcategoryID
Left join Production.ProductCategory PC
on PC.ProductCategoryID = PS.ProductCategoryID
order by ProductSubCategoryName desc, ProductCategoryName asc 