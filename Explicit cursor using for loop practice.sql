set serveroutput on;
declare 
    cursor emp_cur is
            select * from employees;
    emp_record employees%rowtype;

begin 
    for emp_record in emp_cur
     loop
        if emp_record.DEPARTMENT_ID=60 or emp_record.DEPARTMENT_ID=90 then
            dbms_output.put_line('Ename' || 'Salary' ||emp_record.first_name || emp_record.salary*0.90);
        else 
            dbms_output.put_line('Ename' || 'salary' || emp_record.first_name || emp_record.salary*0.80);
        end if;
    end loop;
  
end;
