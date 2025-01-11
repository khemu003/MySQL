create user bob identified by "bob";

select current_user();

select * from mysql.user;

create user "sammy" identified by "password";
create user "sammy"@192.168.10.1 identified by "password";

# it delete local user
drop user "sammy";

drop user "sammy"@192.168.10.1;

create table sakila.test(id int);
insert into sakila.test values(10),(20);

select * from sakila.test;

grant all privileges on sakila.test to bob;

show grants for "bob";

REVOKE all privileges on sakila.* from bob;
show grants for bob;

grant select(id) on sakila.test to bob;

alter user bob account lock;

alter user bob account unlock;

create role sales1;
grant select on sakila.* to sales1;

grant sales1 to bob;
flush privileges;
show grants for bob;
set default role ALL to bob;


