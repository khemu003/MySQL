show databases;

use sakila;

show tables;


describe actor; -- also use desc

select * from actor; -- * for all columns

select actor_id, first_name from actor; -- 

SELECT ACTOR_ID FROM ACTOR; -- Sql is no case sensitivity

-- select statement is not effect in original table.
select actor_id, first_name, actor_id+100 from actor; 

-- where clause
select * from actor where actor_id=2;

-- operation
-- (<, >, >=, <=, =, !=, <>)
-- (between, in, and )

select * from actor where actor_id<>2;

-- between operator
select * from actor
	where actor_id between 1 and 5;
    
-- in operator
select * from actor
	where actor_id in (1,4,5);
    
-- now the get actor_id and first name 
-- only for those use where these first_name is nick or ed
select actor_id, first_name from actor
	where first_name in ("nick", "ed");
    
-- like operator --> find the pattern 
-- wildcard charactor --> 
-- % --> Zero or more charactor
-- _ --> only 1 charactor

select * from actor
	where first_name like "E%";

select * from actor
	where first_name like "s%y";
    
select * from actor
	where first_name like "%sa%";
    
select * from actor
	where first_name like "E%";
    
select * from actor
	where first_name like "E_";
    
select * from actor
	where first_name like "_A";
    
select * from actor
	where first_name like "_A%";
    
-- get those name whose first_name have only four letter
select first_name from actor
	where first_name like "____";
    
-- get all the name of actor table where last three word is "i"
select first_name from actor
	where first_name like "%i__";

-- get the data where e letter in middle
select first_name from actor
	where first_name like "_%e%_";

-- get those use have min 4 letter and last third letter should "r"
select first_name from actor
	where first_name like "%_r__";

-- get those letter where ee presnt together in name
select first_name from actor
	where first_name like "_t%ee%_";

-- get those data where the second letter "h" and second last letter "Z"
select first_name from actor
	where first_name like "_h%z_";