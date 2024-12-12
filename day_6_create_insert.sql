
create database regex1;

use regex1;

create table xyz(id int);
insert into xyz values(20);
select * from xyz;

create table employee1(id int unsigned);
insert into employee1 values(3122344323);
select * from employee1;

create table employee2(salary double(5,2));
insert into employee2 values(123.3);
# insert into employee2 values(1233.33); we cann't assign 6 digit value because we define (salary double(5,2)
select * from employee2;

create table library(book bool);
insert into library values(True), (False);
select * from library;

create table info(name char(7));
insert into info values("khmeraj"), ("susheel"),("khemu     ");
# insert into info values("hello world"); it does not take this because of size 
select name, length(name) from info;

create table info1(name char(7));
insert into info1 values("khmeraj"), ("susheel"),("khemu     ");
insert into info values("hello world");
select name, length(name) from info;

create table years(year date);
insert into years values('2024-12-12');
select * from years;

create table times(year datetime);
insert into times values('2024-12-12 23:54:23');
select * from times;

show tables;

