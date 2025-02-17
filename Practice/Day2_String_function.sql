use sakila;

select * from actor;

-- and,  or operator

select * from actor 
	where actor_id>2 and first_name = "johnny";

select * from actor 
	where first_name="nick" or first_name="ed" and actor_id>3;
    
select * from actor 
	where first_name="ed" or first_name="nick" and actor_id>3;
    
select * from actor 
	where (first_name="nick" or first_name="ed") and actor_id>3;
    
-- function
-- block of code ==> coder reuseable
-- code readable

-- pre-defined
-- string function


-- string function
select first_name, lower(first_name) from actor;

select first_name, upper(first_name) from actor;

select first_name, upper(lower(first_name)) from actor;

select first_name, last_name, concat(first_name, " ", last_name)
from actor;

select first_name, last_name, concat_ws(" ", first_name, last_name)
from actor;

select * from actor 
	where concat(first_name, last_name)="EDCHASE";

select first_name, substr(first_name, 2) from actor;

select first_name, 
substr(first_name, 2), 
substr(first_name, 1, 3),
substr(first_name,-3) from actor;

select first_name,
instr(first_name, 'E'),
locate('E', first_name, 3)
from actor;

select first_name,
char_length(first_name),
length(first_name)
from actor;

-- dual table
select "hey", "name" from dual;

select length('汉语'), char_length('汉语') from dual;

-- lpad or rpad
select first_name, lpad(first_name, 4, '*')
from actor;

select first_name, rpad(first_name, 4, '*')
from actor;

-- trim
select ' hey      ',
trim(' hey       ') from dual;

select ' hey      ',
trim(leading 'z' from 'zzzzzzheyzzzzzz'),
trim(trailing 'z' from 'zzzzzzheyzzzzzz'),
trim(both 'z' from 'zzzzzzheyzzzzzz') from dual;

-- replace
select first_name, replace(first_name, 'E', 'X')
from actor;

-- distinct
select distinct(first_name) from actor where first_name='NICK';









