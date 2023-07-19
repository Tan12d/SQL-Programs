show databases;
use world;
show tables;
select * from city;
describe city;
show character set;

create database sql_intro;
show databases;

create table emp_details (Name varchar(25), Age int, sex char(1),
 doj date, city varchar(15), salary float);

 describe emp_details;
 
 insert into emp_details
 values("Jimmy", 35, "M", "2005-05-30", "Chicago", 70000),
 ("Shane", 30, "M", "1999-06-25", "Seattle", 55000),
 ("Marry", 28, "F", "2009-03-10", "Boston", 62000),
 ("Dwayne", 37, "M", "2011-07-12", "Austin", 57000),
 ("Sara", 32, "F", "2017-10-27", "New York", 72000),
 ("Ammy", 35, "F", "2014-12-20", "Seattle", 80000);
 
 select * from emp_details;
 
 select distinct city from emp_details;
 
 select count(name) from emp_details;
 
 select count(name) as count_name from emp_details;
 
 select sum(salary) from emp_details;
 
 select avg(salary) from emp_details;
 
 select name, age, city from emp_details; 
 
 select * from emp_details where age > 30;
 
 select name, sex, city from emp_details where sex = 'F'; 
 
 select * from emp_details where
 city = 'Chicago' or city = 'Austin';
 
 select * from emp_details where
 city in ('Chicago', 'Austin');
 
 select * from emp_details where 
 doj between '2000-01-01' and '2010-12-31';
 
 select * from emp_details where
 age > 30 and sex = 'M';
 
 select sex, sum(salary) from emp_details
 group by sex;
 
 select * from emp_details order by salary;
 
 select * from emp_details order by salary desc;
 
 select * from emp_details order by salary asc;
 
 select (10+20);
 
 select (10+20) as addition;
 
 select ('10'+'20') as addition_1;
 
 select (10-20) as subtract;
 
 select (10*20) as multiply;
 
 select (10/20) as divide;
 
 select length('America') as total_len;
 
 select repeat('@', 10);
 
 select repeat('@', 10) as repeat_character;
 
 select upper('America');
 
 select lower('AMERICA');

select curdate();

select day(curdate());

select now();

# String Functions

select upper('Tanmoy') as upper_case;

select ucase('tanmoy') as upper_case_1;

select lower('TANMOY') as lower_case; 

select lcase('TANMOY') as lower_case_1;

select character_length('America') as total_len;

select character_length(name) as total_len_1 from emp_details;

select name, character_length(name) as total_len_1 from emp_details;

select name, char_length(name) as total_len_2 from emp_details;

select concat('America', ' is', ' the best');

select concat('America', ' is', ' the best') as merged;

select name, age, concat(name, " ", age) as name_age from emp_details;

select reverse('America');

select reverse(name) from emp_details;

select name, reverse(name) as rev_name from emp_details;

select replace("Orange is a vegetable", "vegeble", "fruit");

select ltrim("     America     ");

select length("     America     ");

select length(ltrim("     America     "));

select rtrim("     America     ");

select length(rtrim("     America     "));

select length(trim("     America     "));

select position("fruit" in "Orange is a fruit") as pos_name;

select ascii('a');

select ascii(4);

select ascii('B');


