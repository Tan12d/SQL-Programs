create database sql_second;
show databases;

create table Class (Name varchar(10), Roll int, Sex char(1), City varchar(8), Marks float);

describe Class;

insert into Class values("Tanmoy", 1, "M", "Austin", 89.23),("Ankit", 2, "M", "Seattle", 92.12);

select * from Class;

insert into Class values("Shampa", 3, "F", "Austin", 98.233),("Gita", 4, "F", "NewYork", 99.99);

select * from Class;

select distinct City from Class;

select City from Class;

-- select count(Name) from Class;

select count(Name) as Number_of_Students from Class; -- alias name

select sum(Marks) from Class;

select max(Marks) from Class;

select min(Marks) from Class;

select avg(Marks) from Class;

select avg(Marks) as Average from Class;

select * from Class;

select Name, Marks from Class;

select * from Class where Marks > 95.00;

select Name, Roll, Marks, Sex from Class where Sex = "M";

select Name, Roll, Sex, Marks from Class where Sex = "M";

select upper(Name) Fname from Class; # select upper(Name) as Fname from Class;


select * from Class where 
City = "Austin" or City = "NewYork";

select * from Class where
City in ("Austin", "NewYork");

select * from Class where 
City = "Austin" and City = "NewYork";

select * from Class where
Marks between 92.00 and 98.00;

select * from Class where
Marks > 90 and Sex = "M";

select Sex, sum(Marks) as Total_Marks from Class
group by Sex;

select * from Class order by Marks;

select * from Class order by Marks desc; -- descending order

select * from Class order by Marks asc; -- ascending order

select (10+20) as addition;

select (10-20) as subtraction;

select length('America') as Total_len;

select repeat('@', 10);

select upper('America');

select lower('AMERICA');

select curdate();

select day(curdate());

select now();

select curtime();



