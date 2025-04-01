set serveroutput on;

declare 
     cursor emp_cur is
            select * from employees;
    emp_record employees%rowtype;

begin
    open emp_cur;
    fetch emp_cur into emp_record;
    
    while emp_cur%found 
            loop
            dbms_output.put_line('Ename' || ' : ' || emp_record.first_name);
            fetch emp_cur into emp_record;
    end loop; 
    
  
    
    
end;