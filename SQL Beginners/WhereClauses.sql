select *
from HumanResources.vEmployee
where FirstName <> 'chris' 

select * 
from HumanResources.employee
where BirthDate >= '1-1-1980'

select top 10 *
from HumanResources.employee
where birthdate >= '1/1/1980' and gender = 'f' and MaritalStatus = 's'

Select *
from HumanResources.Employee
where MaritalStatus = 's' and (Gender = 'm' or OrganizationLevel = '4')

Select *
from Production.Product
where ListPrice > '100' and color = 'red' or StandardCost > '30'

select * 
from HumanResources.vEmployeeDepartment
where Department = 'Research and development' or (StartDate < '1/1/2005' and Department = 'excecutive')

select top 10 * 
from sales.vStoreWithDemographics
where (AnnualSales > 1000000  and BusinessType = 'OS') or
(YearOpened < 1990 and SquareFeet > 40000 and NumberEmployees > 10)

select *
from HumanResources.vEmployee
where FirstName in ('chris', 'thomas', 'Steve', 'Michael')

select top 10 * 
from Sales.vStoreWithDemographics
where AnnualSales between 1000000 and 2000000

select * 
from HumanResources.vEmployee
where FirstName like 'D[a-f, r-z]n' 

select *
from HumanResources.vEmployee
where MiddleName is not null and PhoneNumberType ='cell'