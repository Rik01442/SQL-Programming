set serveroutput on;

declare 
     
     v_count int :=0;
     
begin 
    if SQL%FOUND THEN
        dbms_output.put_line('cursor open1' || ' ' || sql%rowcount);
     end if;
    update test set id=60;
     if SQL%FOUND THEN
        dbms_output.put_line('cursor open2' || ' ' || sql%rowcount);
     end if;
    
    
end;