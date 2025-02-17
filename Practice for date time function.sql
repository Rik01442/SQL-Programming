 use sakila;

-- numeric
-- round , truncate mod,pow

select round(12.8) from dual;

select round(12.48,1) from dual;
select round(12.41,1) from dual;
-- 8*100 + 4*10 + 1*1
select round(841.41,-1) from dual;
select round(846.41,-1) from dual;

select round(846.41,-2) from dual;
select round(876.41,-3) from dual;
select round(276.41,-3) from dual;
select round(276.41,1) from dual;

select truncate(276.48,1) from dual;

select truncate(276.48,1) , mod(21,2) from dual;
select truncate(276.48,2) , mod(20,2), 21%2
from dual;

# mod --> modulus to give remainder
# pow --> power
select truncate(276.48,2) , mod(20,2), 21%2, pow(2,3)
from dual;


# date function 
select curdate() from dual;
select curdate(), curtime() from dual;
select now() from dual;
select current_timestamp() from dual;

select curdate(), adddate(curdate(),1) from dual;

select curdate(),
adddate(curdate(),interval 1 week) from dual;
select curdate(),
adddate(curdate(),interval -1 month) from dual;

select 
datediff(curdate(),
adddate(curdate(),interval -1 week))
from dual;

select now() ,
last_day(now()) from dual;
select month(now()) ,
last_day(now()) from dual;

select date_format(now(),
'current month is %M') from dual;

select date_format(now(),
'%H') from dual;

-- YYYY-MM-DD
select curdate(),
str_to_date('17 2025 02','%d %Y %m')
from dual; 