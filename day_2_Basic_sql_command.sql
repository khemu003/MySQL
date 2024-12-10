show databases;

use sakila;

show tables;

-- select satement --

select * from actor;

select actor_id, first_name from actor;

select actor_id, 10, actor_id+10, first_name from actor;

select actor_id, 10, actor_id+10, first_name+10 from actor;

select *, first_name from actor;

-- where statement --

select * from actor where actor_id=2;

select * from actor where actor_id<=20;

select first_name, last_update from actor where actor_id<=10;

-- between statement --

select * from actor where actor_id between 2 and 7;

-- in statement -- 

select * from actor where actor_id in (2, 7);

select * from actor where first_name in ('NICK','ED');

-- or statement --

select * from actor where actor_id=2 or actor_id=7;

select * from actor where first_name='NICK' and actor_id=2;

select * from actor where first_name like 'NICK';


-- % --

select * from actor where first_name like 'E%'; -- first character --

select * from actor where first_name like '%E'; -- last character --

select * from actor where first_name like '%E%'; -- character any position--

select * from actor where first_name like 'E%' or first_name like 'T%'; 

-- underscore is use to give number of character -- 

select * from actor where first_name like '_D'; 

select * from actor where first_name like '_D%';

select * from actor where first_name like '%T_';








