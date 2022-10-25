-- UC-1 : create employee_database & check created or not & use it
create database payroll_service;
show databases;
use payroll_service; 
-- UC-2 : create table employee_payroll
create table employee_payroll
(id int auto_increment primary key, name varchar(50), salary int, start_date date);