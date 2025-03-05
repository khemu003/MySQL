use sakila;

-- Second highest number

select max(amount) from payment
where amount < (select max(amount) from payment);

-- DDl ==> Data defination language
-- create, drop, alter

-- DML ==> Data defination language
-- insert, update, delete

create DataBase march3;
use march3;

create table regex(id int, name varchar(20));
insert into regex values(1, "tushar");
-- insert into regex values("khemu") # column count does not match
insert into regex(name) values ("khemu");
select * from regex;

-- ctas -- > create table as select statement

create table new_actor as select actor_id as Actor_ID, first_name as First_Name from sakila.actor;
select * from new_actor;
desc new_actor;

delete from new_actor; # delete all data

delete from new_actor where actor_id in (2,3,4); # delete selected part

update new_actor set First_name = "regex"; # change the all daata in table

update new_actor set First_Name = "regex" where Actor_ID = 1; # change selected part

-- DDL => Drop, Truncate

select * from new_actor;
drop table new_actor;

create table xyz as select * from sakila.actor;

truncate table xyz;
select * from xyz;


-- alter

create table student(id int);
insert into student values(2),(34); 
select * from student;
desc student;

-- Add columns
Alter table student add column phone varchar(15);

-- Add columns with constaints
Alter table student add column name varchar(30) not null;

-- drop any columns
Alter table student drop column name;

-- change the table name using Rename
Rename table student to new_student;
select * from student;
select * from new_student;

-- change table name using alter
Alter table new_student Rename to student;

-- Rename column name
Alter table student Rename column phone to mobile_no;

-- assign primary key
Alter table student add constraint march3_student_mobile_no_uk unique key (mobile_no);

Alter table student drop constraint march3_student_mobile_no_uk;

Alter table student Modify mobile_no int; 
