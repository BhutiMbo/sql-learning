select * from tblEmployee
where DateOfBirth between '19760101' and '19861231'

select * from tblEmployee
where year(DateOfBirth) between 1976 and 1986  

SELECT year(DateOfBirth) as YearOfDateOfBirth, count(*) as NumberBorn
FROM tblEmployee
GROUP BY year(DateOfBirth)

SELECT * FROM tblEmployee
where year(DateOfBirth) = 1967


SELECT year(DateOfBirth) as YearOfDateOfBirth, count(*) as NumberBorn
FROM tblEmployee
WHERE 1=1
GROUP BY year(DateOfBirth)

SELECT year(DateOfBirth) as YearOfDateOfBirth, count(*) as NumberBorn
FROM tblEmployee
WHERE 1=1
GROUP BY year(DateOfBirth)
ORDER BY year(DateOfBirth) 

select left(EmployeeLastName,1) as Initial, count(*) as CountOfInitial
from tblEmployee
group by left(EmployeeLastName,1)
order by count(*) DESC --left(EmployeeLastName,1)


select top(5) left(EmployeeLastName,1) as Initial, count(*) as CountOfInitial
from tblEmployee
group by left(EmployeeLastName,1)
order by count(*) DESC --left(EmployeeLastName,1)

select left(EmployeeLastName,1) as Initial, count(*) as CountOfInitial
from tblEmployee
where DateOfBirth > '19860101'
group by left(EmployeeLastName,1)
having count(*)>=20
order by CountOfInitial DESC 

update tblEmployee
set EmployeeMiddleName = Null 
Where EmployeeMiddleName =' '

select DATENAME(month,DateOfBirth) as MonthName, count(*) as NumberEmployees,
count(EmployeeMiddleName) as NumberOfMiddleNames,
count(*) -count(EmployeeMiddleName) as NoMiddleName,
format (min(DateOfBirth),'dd') as EarliestDateOfBirth,
format (max(DateOfBirth),'D') as LatestDateOfBirth
from tblEmployee
GROUP BY DATEname(MONTH,DateOfBirth), DATEPART(MONTH,DateOfBirth)
ORDER BY DATEname(MONTH,DateOfBirth)

SELECT DATENAME(MONTH, DateOfBirth) AS MonthName,
       COUNT(*) AS NumberEmployees,
       COUNT(EmployeeMiddleName) AS NumberOfMiddleNames,
       COUNT(*) - COUNT(EmployeeMiddleName) AS NoMiddleName,
       FORMAT(MIN(DateOfBirth), 'dd') AS EarliestDateOfBirth,
       FORMAT(MAX(DateOfBirth), 'D') AS LatestDateOfBirth
FROM tblEmployee
GROUP BY DATENAME(MONTH, DateOfBirth), DATEPART(MONTH, DateOfBirth)
ORDER BY DATEPART(MONTH, DateOfBirth);

