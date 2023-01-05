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

---Inserting Values into table---
INSERT INTO EmployeePayroll VALUES('Vijay',25000,'2020-03-04'),
('Rohit',80000,'2020-07-06'),
('Geetha',74000,'2020-05-26'),
('Rohit',80000,'2020-02-05'),
('Rohit',80000,'2021-08-13');

---DELETE FROM EmployeePayroll WHERE NAME='Rohit'---
---SELECT *FROM EmployeePayroll---
---INSERT INTO EmployeePayroll VALUES('Rohit',80000,'2020-02-05'),---
---('Sparsha',40000,'2021-08-13'),---
---('Nidhi',60000,'2022-01-01');---
---SELECT *FROM EmployeePayroll---
---Geting data from table---
SELECT *FROM EmployeePayroll;

---Reading employee from table---
SELECT *FROM EmployeePayroll WHERE NAME='Rohit'
SELECT *FROM EmployeePayroll WHERE STARTDATE BETWEEN '2000-02-01' AND '2023-01-01';



---Adding New coulumn to the table called gender---
ALTER TABLE EmployeePayroll ADD GENDER CHAR(1);
UPDATE EmployeePayroll SET GENDER='M' WHERE NAME='Rohit'
UPDATE EmployeePayroll SET GENDER='M' WHERE NAME='VijaY'
UPDATE EmployeePayroll SET GENDER='F' WHERE NAME='NidhI'
UPDATE EmployeePayroll SET GENDER='F' WHERE NAME='Geetha'
UPDATE EmployeePayroll SET GENDER='F' WHERE NAME='Sparsha'
SELECT *FROM EmployeePayroll;

---Finding sum,average,max,min---
select sum(SALARY) from EmployeePayRoll 
select sum(SALARY) as Totalsalary from EmployeePayRoll 
select sum(SALARY) from EmployeePayRoll group by GENDER;
select sum(SALARY) as Totalsalary,GENDER from EmployeePayRoll group by GENDER;
select max(SALARY) as Totalsalary,GENDER from EmployeePayRoll group by GENDER;
select * from EmployeePayRoll where SALARY=(select Max(SALARY) as totalsalary from employeepayroll where GENDER='F' )
select * from EmployeePayRoll where SALARY=(select Max(SALARY) as totalsalary from employeepayroll where GENDER='M' )
select * from EmployeePayRoll where SALARY in (select Max(SALARY) as totalsalary from employeepayroll group by GENDER)
select name,SALARY,GENDER from EmployeePayRoll where SALARY in (select Max(SALARY) as totalsalary from employeepayroll group by GENDER)
select name,SALARY,GENDER from EmployeePayRoll where SALARY in (select Min(SALARY) as totalsalary from employeepayroll group by GENDER)
select avg(SALARY) as Totalsalary, GENDER from EmployeePayRoll group by GENDER
select avg(SALARY) as Totalsalary from EmployeePayRoll;

---Extending table---
alter table EmployeePayroll add Phone bigint
alter table EmployeePayroll add Address varchar(250) Not Null default 'Banglore'
alter table EmployeePayroll add Department varchar(200) 

---Renaming Coulumn---
Exec sp_rename 'EmployeePayroll.Salary','BasicPay','COLUMN';
alter table EmployeePayroll add Deductions float,TaxablePay float,IncomeTax float,NetPay float;
