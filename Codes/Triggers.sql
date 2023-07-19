create database food;
use food;
show tables;

# before insert trigger

create table chinese (food_id int, food_name varchar(20), price float);

SET SQL_SAFE_UPDATES = 0;

delimiter //
create trigger food_id_verify
before insert on chinese 
for each row
if new.food_id < 0 then set new.food_id = 0;
end if; //

insert into chinese
values(1, "Chowmein", 30.50),
(-2, "Fried rice", 50.23),
(-3, "Manchrian", 12.30),
(-4, "Chilly Prawn", 80.70);

select * from chinese;

# after insert trigger

create table customers1 (id int auto_increment primary key, 
name varchar(40) not null,
email varchar(30), birthdate date);

create table message (id int auto_increment, 
messageId int, message varchar(100) not null,
primary key (id, messageId));

Delimiter //
create trigger check_null_dob
after insert 
on customers1
for each row
begin 
if new.birthdate is null
then insert into message (messageId, message)
values(new.id, concat('Hi', new.name, ' , please update your date of birth.'));
end if; 
end //
delimiter ; 

insert into customers1 (name, email, birthdate)
values("Nancy", "nancy@abc.com", NULL),
("Ronald", "ronald@xyz.com", "1998-11-16"),
("Chris", "chris@xyz.com", "1997-08-20"),
("Alice", "alice@anc.com", NULL);

select * from message; 

# before update trigger

create table employees_C
(emp_id int primary key, emp_name varchar(25),
age int, salary float);

describe employees_c;

insert into employees_c
values(101, "Jimmy", 35, 70000),
(102, "Shane", 30, 55000),
(103, "Marry", 28, 62000),
(104, "Dwayne", 37, 57000),
(105, "Sara", 32, 72000),
(106, "Ammy", 35, 80000),
(107, "Jack", 40, 100000);

select * from employees_c;

set sql_safe_updates = 0;

delimiter // 
create trigger upd_trigger
before update 
on employees_c
for each row
if new.salary = 10000 
then set new.salary = 85000;
elseif new.salary < 10000 
then set new.salary = 72000;
end if;
end //
delimiter ;

update employees_c
set salary = 8000;

select * from employees_c;

# before delete trigger

create table salary 
(eid int primary key, validfrom date not null,
amount float not null);

describe salary;

insert into salary (eid, validfrom, amount)
values(101, "2005-05-01", 55000),
(102, "2007-08-01", 68000),
(103, "2006-09-01", 75000);

select * from salary;

create table salarydel 
(id int primary key auto_increment,
eid int, validfrom date not null,
amount float not null,
deletedat timestamp default now());

delimiter $$
create trigger salary_delete
before delete
on salary 
for each row
begin
insert into salarydel (eid, validfrom, amount)
values(old.eid, old.validfrom, old.amount);
end $$
delimiter ;

delete from salary 
where eid = 103;

select * from salarydel;

select * from salary;