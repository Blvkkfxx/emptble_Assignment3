create database TestDB;
use TestDB;


create table Employee(
	EMPLOYEE_ID int primary key,
    FIRST_NAME varchar(50) not null,
    LAST_NAME varchar(50),
    EMAIL varchar(50) not null,
    PHONE_NUMBER varchar(12),
    HIRE_DATE varchar(10),
    JOB_ID varchar(20),
    SALARY decimal,
    COMMISSION_PCT decimal,
    MANAGER_ID int,
    DEPARTMENT_ID int
);


select * from Employee;

insert into Employee values (100, 'Steven' , 'King', 'SKING', '515.123.4567', '1987-06-17', 'AD_PRES', 24000.00, 0.00, 0,90);
insert into Employee values (101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', '1987-06-18', 'AD_VP', 17000.00, 0.00, 100,90);
insert into Employee values (102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', '1987-06-19', 'AD_VP', 17000.00, 0.00, 100, 90);
insert into Employee values (103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '1987-06-20', 'IT_PROG', 9000.00, 0.00, 102, 60);


select * from Employee;
select 'This is SQL Practice';
select '89' * '98';
select distinct FIRST_NAME, LAST_NAME, SALARY from Employee;
select distinct FIRST_NAME, SALARY, EMAIL, JOB_ID from Employee;
select distinct MANAGER_ID from Employee;
select * from Employee limit 5;
select * from Employee order by Last_Name asc;
select distinct JOB_ID from Employee;
select *, HIRE_DATE as 'HIRE DATE' from Employee;  

select * from Employee where Salary <= 5200;
select distinct EMAIL from Employee where JOB_ID= 'IT_PROG';
select * from Employee where DEPARTMENT_ID = 100 OR DEPARTMENT_ID = 30;
select FIRST_NAME, LAST_NAME, SALARY from Employee where DEPARTMENT_ID != 100;
select distinct JOB_ID from Employee;
select * from Employee order by salary desc limit 5;
select * from Employee where MANAGER_ID = 108;
select FIRST_NAME, LAST_NAME from Employee where DEPARTMENT_ID = 30 and salary > 3000;
select FIRST_NAME, EMAIL from Employee where salary < 6000 and salary > 3000;
 