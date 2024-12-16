
use regex1;

-- drop table table_name;


create table test(eid int);
insert into test values (200), (null), (239);
select * from test;

-- not null
create table test1(eid int not null);
-- insert into test1 values (200), (null), (239); 
# it will generate error because eid can not be null.
insert into test1 values (200), (239); 
select * from test1;

-- unique
create table test2(eid int unique);
-- insert into test2 values (200), (null), (200), (300); 
# it will generate error because eid can not be duplicate.
insert into test2 values (200), (239), (null), (null);  # double null are allow
select * from test2;

-- default
create table test3(eid int default 0, name varchar(20));
insert into test3(eid, name) values(28, "khemu");
insert into test3(eid, name) values(null, "aadi");
insert into test3(name) values("deepak");
insert into test3(eid, name) values(25, "sunil");
select * from test3;

-- campare operator (is)
select * from test3 where eid is null;


-- primary key (not null and unique)
create table test4(eid int primary key auto_increment, name varchar(20));
insert into test4(eid, name) values(28, "khemu");
insert into test4(eid, name) values(34, "aadi");
insert into test4(name) values("deepak");
insert into test4(eid, name) values(25, "sunil");
select * from test4;


-- check
create table test5(eid int, name varchar(20), check (eid>10));
insert into test5(eid, name) values(28, "khemu");
insert into test5(eid, name) values(34, "aadi");
insert into test5(eid, name) values(null, "sunil");
select * from test5;

-- Give Constraints name
create table test6(eid int, name varchar(20), constraint regex1_test5_eid_chk check (eid>10), constraint regex1_test5_name_chk unique(name));
insert into test6(eid, name) values(28, "khemu");
insert into test6(eid, name) values(34, "aadi");
insert into test6(eid, name) values(null, "sunil");
select * from test6;
