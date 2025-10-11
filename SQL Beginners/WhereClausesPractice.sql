select FirstName, LastName 
from person.person
where firstName = 'mark'

select top 100 *
from Production.Product
where ListPrice <> 0.00

select * 
from HumanResources.vEmployee
where lastName like '%D'

select * 
from Person.StateProvince
where CountryRegionCode = 'ca'

select FirstName as [First Name], LastName as[Last Name]
from Sales.vIndividualCustomer
where lastName = 'smith' 

select * 
from Sales.vIndividualCustomer
where CountryRegionName = 'australia' or (PhoneNumber ='cell' and EmailPromotion ='0')

select *
from HumanResources.vEmployeeDepartment
where Department in ('executive', 'Tool design', 'Engineering') 

select *
from HumanResources.vEmployeeDepartment
where Department = 'executive' or department = 'tool design' or department = 'engineering'

select *
from HumanResources.vEmployeeDepartment
where StartDate between '7/1/2000' and '6/30/2002'

select *
from HumanResources.vEmployeeDepartment
where StartDate >= '7/01/2000' and StartDate <= '6/30/2002'

Select top 5*
from Sales.vIndividualCustomer
where LastName LIKE 'R%'

Select top 5 *
from sales.vIndividualCustomer
where LastName like'%r'

select *
from sales.vIndividualCustomer
where LastName = 'Lopez' or LastName = 'Martin' or LastName = 'wood'

select *
from sales.vIndividualCustomer
where LastName in ('Lopez', 'Martin', 'wood') and FirstName like '[C-L]%'

SELECT *
FROM SALES.SalesOrderHeader
WHERE SalesOrderID IS NOT NULL

SELECT SalesPersonID, TotalDue
FROM Sales.SalesOrderHeader
WHERE SalesPersonID IS NOT NULL AND TotalDue > 70000 
