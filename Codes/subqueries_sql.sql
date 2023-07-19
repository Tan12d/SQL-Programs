# Subqueries

# 1. select statment

use sql_fourth;

show tables;

select * from employees_A;

select emp_name, dept, salary from employees_A
where salary < (select avg(salary) from employees_A);

select emp_name from employees_A
where salary = (select max(salary) from employees_A);

# 2. insert subquery

create table products
(prod_id int, item varchar(30), sell_price float, product_type varchar(30));

insert into products
values(101, "Jewellery", 1800, "Luxury"),
(102, "T-Shirt", 100, "Non-Luxury"),
(103, "Laptop", 1300, "Luxury"),
(104, "Table", 400, "Non-Luxury");

select * from products;

create table orders
(order_id int, product_sold varchar(30), selling_price float);

insert into orders 
select prod_id, item, sell_price
from products where prod_id in
(select prod_id from products where sell_price > 1000);

select * from orders;

# 3. update subquery

create table employees_B (Emp_Id int primary key, 
Emp_name varchar(25), Age int, Gender char(1),
Doj date, Dept varchar(20), City varchar(15), Salary float);

describe employees_B;

insert into employees_B values
(101, "Jimmy", 35, "M", "2005-05-30", "Sales", "Chicago", 70000),
(102, "Shane", 30, "M", "1999-06-25", "Marketing", "Seattle", 55000),
(103, "Marry", 28, "F", "2009-03-10", "Product", "Boston", 62000),
(104, "Dwayne", 37, "M", "2011-07-12", "Tech", "Austin", 57000),
(105, "Sara", 32, "F", "2017-10-27", "Sales", "New York", 72000),
(106, "Ammy", 35, "F", "2014-12-20", "IT", "Seattle", 80000),
(107, "Jack", 40, "M", "2012-07-14", "Finance", "Houston", 100000),
(108, "Angela", 36, "F", "2007-02-04", "Tech", "New York", 110000),
(109, "Marcus", 25, "M", "2010-07-18", "HR", "Boston", 90000),
(110, "David", 34, "M", "2009-08-25", "Product", "Miami", 75000),
(111, "Rose", 28, "F", "2011-02-27", "Tech", "Chicago", 60000),
(112, "Sophia", 33, "F", "2013-09-21", "HR", "Houston", 65000),
(113, "Amelia", 30, "F", "2018-10-15", "Finance", "Austin", 55000),
(114, "Robert", 40, "M", "2015-12-18", "Sales", "Detroit", 95000),
(115, "William", 36, "M", "2016-04-20", "IT", "Chicago", 83000),
(116, "John", 32, "M", "2004-08-09", "Marketing", "Miami", 67000),
(117, "Bella", 29, "F", "2002-06-11", "Tech", "Detroit", 72000),
(118, "Maya", 25, "F", "2018-10-15", "IT", "Houston", 48000),
(119, "Alice", 37, "F", "2019-05-28", "Product", "Seattle", 76000),
(120, "Joseph", 45, "M", "2016-11-23", "Sales", "Chicago", 115000);

select * from employees_B;

select * from employees_A;

select * from employees;

SET SQL_SAFE_UPDATES = 0;

update employees_B
set salary = salary * 0.35
where age in (select age from employees_A where age >= 27);

select * from employees_A;

select * from employees_B;

update employees_B
set age= concat(age, 1)
where age in
(select age from employees_A where age >= 27);

select * from employees_B;

update employees_B
set emp_name = concat(emp_name, "*")
where emp_name in
(select emp_name from employees_A where age >= 27);

select * from employees_A;

select * from employees_B; 

# 4. delete subquery

delete from employees_B
where age in
(select age from employees_A where age <= 32);

select * from employees_A;

select * from employees_B;

delete from employees_B
where gender in
(select gender from employees_A where gender = 'M');

select * from employees_A;

select * from employees_B;

