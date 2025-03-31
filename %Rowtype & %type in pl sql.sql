set serveroutput on;

declare 
     eid int:=102;
     v_name hr.employees.first_name%TYPE;
     emp_rec hr.employees%ROWTYPE;
     
begin
    select * into emp_rec from employees where employee_id=eid;
    dbms_output.put_line(eid || ' ' || emp_rec.first_name || ' ' || emp_rec.last_name);
    dbms_output.put_line(emp_rec.first_name || ' ' || emp_rec.last_name);

end;

