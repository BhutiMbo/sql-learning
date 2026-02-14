select department, count(*) as NumberOfDepartment 
from tblEmployee
Group by Department 

select department as NumberOfDepartments
from
(select department, count(*) as NumberOfDepartment 
from tblEmployee
Group by Department) as newTable

select count(department) as NumberofDepartments 
from
(select department, count(*) as NumberPerDepartment 
from tblEmployee
Group by Department) as newTable

--derived table

select distinct Department 
from tblEmployee

--selects where everything in the column is the same 

select distinct Department, ' 'as DepartmentHead
from tblEmployee

select distinct Department, ' 'as DepartmentHead
into tblDepartment 
from tblEmployee

select * from tblDepartment

drop table tblDepartment

---first drop the table then recreate it again 

select distinct Department, convert(varchar(20), N'') as DepartmentHead
into tblDepartment
from tblEmployee

select * from tblDepartment

alter table tblDepartment
alter column DepartmentHead varchar(30) null


