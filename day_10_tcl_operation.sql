
-- TCl (transaction control lenguage)
-- Transaction => any logical task
-- ddl, 
-- dml task / start transction

set @@autocommit=0;
select @@autocommit;
use regex1;
create table xyz(id int);
insert into xyz values(10);
savepoint xyz_insert;
select * from xyz;

insert into xyz values(30);
commit;
rollback;

rollback to xyz_insert;