-- TCL(TRANSACTION CONTROL LANGUAGE)
-- Transaction => any logical task
-- when we run ddl, dml, dcl commands => transaction
-- DML task/Start transaction => transaction start
-- ddl /  dcl / commit rollback  => transaction end

set @@autocommit=0;
select @@autocommit;
use regex;
create table tushar(eid int);
insert into tushar values(40);
insert into tushar values(50);
savepoint regex_insert;
delete from tushar where eid=10;
commit;
rollback;
select * from tushar;