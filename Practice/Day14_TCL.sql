-- TCL ==> transaction control language

-- transaction : Set of logical statement
-- DDL, DML, DCL

-- Start or End

-- Start ==> DML 
-- End ==> DDL, DCL

-- TCL : commit, savepoint, rollback

select @@autocommit; # autocommit is use to commit by default. 
set autocommit=0;

use regex2;
create table yash(id int, fname varchar(30));

insert into yash values(10, "shubham");
select * from yash;
commit;

insert into yash values(11, "aman");
rollback;
select * from yash;

insert into yash values(11, "aman"),(12,"hari");
update yash set fname="regex";
select * from yash;

create table xyz(id int); -- DDL command stop the transaction and save the previous transaction.

-- rollback is remove all transaction include savepoint before and after transaction 
-- and also delete savepoint.

insert into yash values(13, "isha");
select * from yash;
update yash set fname="xyz";
select * from yash;
savepoint yash_sv;
insert into yash values(14, "ram");
select * from yash;
rollback 



