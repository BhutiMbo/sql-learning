select P.Name, P.ProductNumber,
P.ProductSubcategoryID, PS.Name as [ProductSubcategory Name]
from Production.product P inner join Production.ProductSubcategory PS 
ON P.ProductSubcategoryID =PS.ProductSubcategoryID

Select P.FirstName, P.LastName, E.EmailAddress, PP.PhoneNumber
from person.Person P
inner join Person.EmailAddress E
on P.BusinessEntityID = E.BusinessEntityID
inner join Person.PersonPhone PP
on pp.BusinessEntityID = E.BusinessEntityID

SELECT P.FirstName, P.LastName, PW.PasswordHash, E.EmailAddress
FROM Person.person P inner join Person.Password PW
on P.BusinessEntityID = PW.BusinessEntityID
INNER JOIN Person.EmailAddress E 
on E.BusinessEntityID = P.BusinessEntityID 

SELECT HE.BirthDate, HE.NationalIDNumber, HE.JobTitle, HD.BusinessEntityID, HD.StartDate, HD.EndDate
FROM HumanResources.Employee HE 
INNER JOIN HumanResources.EmployeeDepartmentHistory HD
ON HE.BusinessEntityID = HD.BusinessEntityID 

select P.Name, P.ProductNumber, PS.Name as ProductSubCategoryName
from Production.Product P
left outer join Production.ProductSubcategory PS
ON PS.ProductCategoryID = P.ProductSubcategoryID
order by Name asc

select P.Name, P.ProductNumber, PS.Name as ProductSubCategoryName
from Production.ProductSubcategory PS
Right outer join Production.Product P
ON PS.ProductCategoryID = P.ProductSubcategoryID
order by Name asc

select P.FirstName, P.LastName, SOH.SalesOrderNumber, SOH.TotalDue as SalesAmount, T.Name as TerritoryName 
from sales.SalesOrderHeader SOH
Left outer join Sales.SalesPerson SP
ON SP.BusinessEntityID = SOH.SalesPersonID
left outer join HumanResources.Employee E
on E.BusinessEntityID = SP.BusinessEntityID
left outer join person.Person P
on p.BusinessEntityID = E.BusinessEntityID
left outer join Sales.SalesTerritory T
on T.TerritoryID = SOH.TerritoryID 




