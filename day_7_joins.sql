
use regex1;

create table product(pid int, pname varchar(20), price int);
insert into product 
values
(10,"tv",1300),
(20,"mobile",2000),
(30,"gas",750),
(40,"gyser",1200);
select * from product;

create table orders(oid int, city varchar(20), product_id int);
insert into orders
values
(1991, "jaipur", 10),
(1992, "goa", 20),
(1993, "uk", 10),
(1994, "shimla", 40),
(1995, "kerala", 80);
select * from orders;

select o.oid, o.city, o.product_id, p.pid, p.pname, p.price from orders as o join product as p where o.product_id=p.pid;

select o.oid, o.city, o.product_id, p.pid, p.pname, p.price from orders as o inner join product as p on o.product_id=p.pid;

select o.oid, o.city, o.product_id, p.pid, p.pname, p.price from orders as o left join product as p on o.product_id=p.pid;

select o.oid, o.city, o.product_id, p.pid, p.pname, p.price from orders as o right join product as p on o.product_id=p.pid;


use sakila;

select * from actor;
select * from film_actor;

select * from actor inner join film_actor;


-- get the actor_id, full name of actor, film_id, last_update column form these two tables

select a.actor_id, concat(a.first_name," ",a.last_name) as "full name", f.film_id, f.last_update 
from actor as a join film_actor as f;

select a.actor_id, concat(a.first_name," ",a.last_name) as "full name", f.film_id, f.last_update 
from actor as a inner join film_actor as f;

select a.actor_id, concat(a.first_name," ",a.last_name) as "full name", f.film_id, f.last_update 
from actor as a  join film_actor as f
on a.actor_id=f.film_id;








