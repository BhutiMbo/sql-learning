select NationalIDNumber
from HumanResources.employee

select NationalIDNumber, JobTitle
from HumanResources.employee 

select top 20 percent NationalIDNumber, Jobtitle, BirthDate
from HumanResources.Employee 

select top 500 NationalIDNumber as [SSN], JobTitle as [Job Title], BirthDate
from HumanResources.Employee 

select * 
from Sales.SalesOrderHeader

select top 50 percent *
from Sales.Customer

select Name as [Product's name]
from production.vProductAndDescription

select top 400* 
from HumanResources.Department

select *
from Production.BillOfMaterials

select top 1500*
from Sales.vPersonDemographics