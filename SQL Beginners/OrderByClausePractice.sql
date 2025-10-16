how we write our clauses...
select 
from 
where
group by 
having
order by

How SQL evaluates the clauses
from 
where
group by
having 
select 
order by 

select FirstName, LastName, JobTitle 
from HumanResources.vEmployeeDepartment
order by FirstName

select FirstName, LastName, JobTitle 
from HumanResources.vEmployeeDepartment
order by FirstName asc, LastName desc

select FirstName, LastName, CountryRegionName
from Sales.vIndividualCustomer
order by 3

select FirstName, LastName, CountryRegionName
from Sales.vIndividualCustomer
where CountryRegionName = 'france' or CountryRegionName = 'United states'
order by 3

select Name, AnnualSales, YearOpened, SquareFeet as [Store size], NumberEmployees as [Total Employees]
from sales.vStoreWithDemographics
where AnnualRevenue > 1000000 and numberemployees >= 45
order by [store size] desc, [total employees] desc
