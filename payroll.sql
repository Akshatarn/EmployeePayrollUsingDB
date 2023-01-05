---Creating database---
CREATE DATABASE PayrollService;

---Creating Table---
CREATE TABLE EmployeePayroll
(
ID INT IDENTITY(1,1) PRIMARY KEY,
NAME VARCHAR(200),
SALARY FLOAT,
STARTDATE DATE
);

