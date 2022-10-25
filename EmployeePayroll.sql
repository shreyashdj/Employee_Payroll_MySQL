-- UC-1 : create employee_database & check created or not & use it
create database payroll_service;
show databases;
use payroll_service;

-- UC-2 : create table employee_payroll
create table employee_payroll
(id int auto_increment primary key, name varchar(50), salary int, start_date date);

-- UC-3 : insert data in table
insert into employee_payroll (name, salary, start_date) values
("shreyash", 43600, "2006-08-14"),
("sayali", 34900, "2014-03-24"),
("akash", 50100, "2002-11-28"),
("rutuja", 38300, "2010-03-07"),
("rohit", 29500, "2018-06-17"),
("ankita", 56200, "1998-10-11"),
("hitesh", 22800, "2022-01-02"),
("sneha", 34700, "2010-12-21");

-- UC-4 : retrieve all data from table
select * from employee_payroll;

-- UC-5 : retrieve salary from table for specific name and date wise
select salary from employee_payroll where name = "rohit";
select id,name,salary from employee_payroll where start_date between cast("2014-09-16" as date) and date(now());

-- UC-6 : add new column gender and set gender for all eployees
alter table employee_payroll add gender char(1);
update employee_payroll set gender = "M" where name = "shreyash" or name = "rohit" or name = "hitesh" or name = "akash";
update employee_payroll set gender = "F" where name = "sayali" or name = "rutuja" or name = "ankita" or name = "sneha";

-- UC-7 : find salary sum, average, min, max, count by gender
select gender, sum(salary) from Employee_Payroll Where gender = 'M' group by gender;
select gender, sum(salary) from Employee_Payroll Where gender = 'F' group by gender;
select gender, avg(salary) from Employee_Payroll Where gender = 'M' group by gender;
select gender, avg(salary) from Employee_Payroll Where gender = 'F' group by gender;
select gender, min(salary) from Employee_Payroll Where gender = 'M' group by gender;
select gender, min(salary) from Employee_Payroll Where gender = 'F' group by gender;
select gender, max(salary) from Employee_Payroll Where gender = 'M' group by gender;
select gender, max(salary) from Employee_Payroll Where gender = 'F' group by gender;
select gender, count(name) from Employee_Payroll Where gender = 'M' group by gender;
select gender, count(name) from Employee_Payroll Where gender = 'F' group by gender;

-- UC-8 : add new columns phone, address, department
delete from employee_payroll department;
alter table employee_payroll add department varchar(50) not null after name;
alter table employee_payroll add address varchar(50) after department;
alter table employee_payroll add phone_number varchar(50) after address;
alter table employee_payroll alter address set default "default";

-- UC-9 : add new columns basic_pay, deductions, taxable_pay, income_tax, net_pay
alter table employee_payroll add basic_pay float;
alter table employee_payroll add deductions float;
alter table employee_payroll add taxable_pay float;
alter table employee_payroll add income_tax float;
alter table employee_payroll rename column salary to net_pay;