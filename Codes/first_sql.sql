show databases;
use world;
show tables;
select * from city;
describe city;

# NEW SQL

create database sql_first;
show databases;

create table emp_details (Name varchar(25), Age int, Sex char(1), DOJ date, City varchar(15), Salary float);

describe emp_details;

insert into emp_details values("Marry", 21, "F", "2021-05-30", "NewYork", 23000.50),("Jimmy", 25, "M", "1997-07-21", "Austin", 12567.32),("Lio", 20, "M", "2002-05-02", "Austin", 123000.50),("Mia", 14, "F", "2005-11-10", "Seattle", 78000.50);

select * from emp_details;

select distinct City from emp_details;





