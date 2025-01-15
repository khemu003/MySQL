# view ==> virtual table 

use sakila;

select *from actor;
select * from film_actor;

select *from actor join film_actor where actor.actor_id;

create view actor_view as 
select actor.actor_id,first_name,film_id
from actor join film_actor
where actor.actor_id  = film_actor.actor_id;

select * from actor_view;

# actor,film, film_actor fil you need to find out acotr _id filem_id 
# and the movie the actor has work

select * from actor;
select *from film;
select * from film_actor;

-- select actor.actor_id,actor.first_name,film_actor.film_id  from actor 
-- join film_actor 
-- join film
-- where actor.actor_id  = film_actor.actor_id or  film_actor.film_id = film.film_id order by actor.actor_id;



select a.actor_id ,f.film_id ,fm.title
from actor  as a join film_actor as f
join film as fm
where a.actor_id  = f.actor_id  and f.film_id = fm.film_id;



# create view 

create or replace view aview   as select a.actor_id ,f.film_id ,fm.title
from actor  as a join film_actor as f
join film as fm
where a.actor_id  = f.actor_id  and f.film_id = fm.film_id;


create table student (id int,name varchar(20) );

insert into student values(101,"ankit"),(102,"rahul"),(103,"jay");

select * from student;

create view sview as  select * from student;

select * from sview;

update sview set name ="deepak" where id = 102;


# simple view =  change original data

create view s2view as 
select  name from student group by name;

select * from s2view;


# complex view   ==> we can not perform ddl and dml task


update s2view set name="yash" where name ="jay";


# WITH CHECK OPTION 
create view s3view  as 
select * from student WITH CHECK OPTION ;

SELECT * FROM S3VIEW;

update S3VIEW SET NAME ="YASH" WHERE ID=103;

SELECT * FROM S3VIEW;

SELECT * FROM STUDENT;
