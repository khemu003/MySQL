
-- DDL ===> DATA DEFINATION LANGUAGE
	-- CREATE
    -- DROP
    -- TRUNCATE
    -- ALTER

CREATE database regex_ddl;
use regex_ddl;


CREATE table test(id int, name varchar(20));

insert into test values(10, "khemraj");		# insert - DML operation
insert into test(name) values("deepak");

select * from test;

-- update
update test set name="xyz" where id=10;

-- delete
delete from test where id is null;

-- drop
-- drop table test;  # drop is use to delete the whole table

-- truncate
truncate test;    # truncate only delete table data

create table companies(id int);
insert into companies values(10),(20);
select * from companies;


-- alter
alter table companies
add column phone varchar(20);

alter table companies
add column employee_count3 int not null;

alter table companies
drop column employee_count3;

rename table companies to newcompany;

alter table newcompany rename to companies;

alter table companies
rename column id to eid;

alter table companies
add primary key (eid);

alter table companies
add constraint regex_ddl_companies_phone unique(phone);

alter table companies
drop constraint regex_ddl_companies_phone;

alter table companies modify eid double;

alter table companies change eid neweid double;

desc companies;



-- Q.1. find the second highest amount of this table

use sakila;

select * from payment;

select amount from payment group by amount order by amount;

-- Q.2. 