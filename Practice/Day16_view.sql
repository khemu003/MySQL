-- Views
-- Virtual table
-- user ==> Querires intreact ke paye
-- Don't store data on disk

-- test <== select * from table
-- select * from test

-- View is use make your complex Query Simple
-- enhance the security ==> by limit our row and columns

use regex2;

show tables;

-- ctas ->
-- inly copy data not keys
create table payment as select * from sakila.payment;
select * from payment;

create view pay_view
as select payment_id, customer_id from payment;

select * from pay_view;

create table payment2 
as select payment_id, customer_id from sakila.payment
where payment_id<5;

create view payment_v2 as select * from payment2;

select * from payment_v2;
insert into payment_v2 values(5,10);
select * from payment2;

create view payment_v3 as select payment_id from payment2;
insert into payment_v3(payment_id) values (10);
select * from payment2;

-- check current database
select database();

select a.actor_id,f.film_id, a.first_name,a.last_name,a.last_update 
from sakila.actor as a join sakila.film_actor as f
on a.actor_id=f.actor_id;

create view film_actor 
as select 
a.actor_id,f.film_id, a.first_name,a.last_name,a.last_update 
from sakila.actor as a join sakila.film_actor as f
on a.actor_id=f.actor_id;

select * from film_actor;




-- with check option

select * from xyz;


create view con_xyz 
as select * from xyz 
where id < 3 with check option;

insert into con_xyz values(2);
insert into con_xyz values(4);

select * from con_xyz;

create view con_xyz2
as select * from con_xyz 
where id >6  with local check option;

insert into con_xyz2 values(2);
insert into con_xyz2 values(4);

select * from con_xyz2;

create view con_xyz3 
as select * from con_xyz 
where id < 3 with cascaded check option;

insert into con_xyz values(2);
insert into con_xyz values(4);

select * from con_xyz3;
