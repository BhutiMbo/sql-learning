Select * 
from tblDepartment
join tblEmployee
on tblDepartment.Department = tblEmployee.Department
join tblTransaction
on tblTransaction.EmployeeNumber = tblEmployee.EmployeeNumber

select tblDepartment.Department, departmentHead, sum(Amount) as SumOfAmount
from tblDepartment
left join tblEmployee
on tblDepartment.Department = tblEmployee.Department
left join tblTransaction
on tblEmployee.EmployeeNumber = tblTransaction.EmployeeNumber
group by tblDepartment.Department, DepartmentHead
Order by DepartmentHead

insert into tblDepartment(Department,DepartmentHead)
values ('Accounts', 'James')

select departmentHead, sum(Amount) as SumOfAmount
from tblDepartment
left join tblEmployee
on tblDepartment.Department = tblEmployee.Department
left join tblTransaction
on tblEmployee.EmployeeNumber = tblTransaction.EmployeeNumber
group by DepartmentHead
Order by DepartmentHead

select D.DepartmentHead, Sum(T.Amount) as SumOfAmount
from tblDepartment as D
left join tblEmployee as E
on D.Department = E.Department
left join tblTransaction T
on E.EmployeeNumber = T.EmployeeNumber
group by D.DepartmentHead
order by D.DepartmentHead
