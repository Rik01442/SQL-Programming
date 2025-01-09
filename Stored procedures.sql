use sakila;
-- set of sql statements
-- stored proceedures

-- DELIMITER $$

DELIMITER $$

create procedure getactor()
begin
	select * from actor order by last_name;
    
end;

-- delimiter
-- declare
-- begin
-- end

