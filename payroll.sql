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

INSERT INTO EmployeePayroll VALUES('Vijay',25000,'2020-03-04'),
('Rohit',80000,'2020-07-06'),
('Geetha',74000,'2020-05-26'),
('Rohit',80000,'2020-02-05'),
('Rohit',80000,'2021-08-13');
SELECT *FROM EmployeePayroll;