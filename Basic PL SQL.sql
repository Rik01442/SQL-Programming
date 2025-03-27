SET SERVEROUTPUT ON;
declare
        msg varchar(30) := 'hello world by gaurav';

begin
    dbms_output.put_line(msg || ' ' || '###');
    
end;




