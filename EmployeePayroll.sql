-- UC-1 : create employee_database & check created or not & use it
create database payroll_service;
show databases;
use payroll_service;

-- UC-2 : create table employee_payroll
create table employee_payroll
(id int auto_increment primary key, name varchar(50), salary int, start_date date);

-- UC-3 : insert data in table
insert into employee_payroll (name, salary, start_date) values
("shreyash", 34900, "2010-05-11"),
("akash", 55700, "2005-08-11"),
("rohit", 65200, "2000-04-07"),
("suyog", 25500, "2020-11-08"),
("hitesh", 46100, "2015-01-22");

-- UC-4 : retrieve all data from table
select * from employee_payroll;

-- UC-5 : retrieve salary from table for specific name and date wise
select salary from employee_payroll where name = "rohit";
select id,name,salary from employee_payroll where start_date between cast("2014-09-16" as date) and date(now());