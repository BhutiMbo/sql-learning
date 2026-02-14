create table tblTransaction (
Amount smallmoney NOT NULL,
DateOfTransaction smallmoney NULL,
EmployeeNumber int NOT NULL)

ALTER TABLE tblTransaction
ALTER COLUMN Amount money;

ALTER TABLE tblTransaction
ALTER COLUMN DateOfTransaction money;