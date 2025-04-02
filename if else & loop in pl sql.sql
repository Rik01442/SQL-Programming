set SERVEROUTPUT ON;

DECLARE
    var1 varchar(20) := 'hey, i am khemu';
    a int:=10;
    b int:=20;
    c int;
    d CONSTANT int := 19;
    
    salary int := 2600;
    
    x int := 2;
    y int := 5;
    
BEGIN
    dbms_output.put_line(var1);
    
    c:=a+b;
    dbms_output.put_line(c);
    
--    d:=20; -> it will give error because of constant variable
    
    if (a>15) then
        dbms_output.put_line('a value is greater then 5');
    elsif (a=10) then
        dbms_output.put_line('value of a is 10');
    else
        dbms_output.put_line('else part');
    end if;
    
    salary := CASE
        WHEN salary >= 2500 AND salary <= 3000 THEN salary + (salary * 0.1)
        WHEN salary > 3000 THEN salary + (salary * 0.15)
        ELSE salary + (salary * 0.05)
    END;

    dbms_output.put_line('Updated salary: ' || salary);
    
    
    loop
        dbms_output.put_line(x);
        x := x+1;
        if (x=10) then
            exit;
        end if;
    end loop;
    dbms_output.put_line(' ');
    
    while (y<15) loop
        dbms_output.put_line(y);
        y := y+1;
    end loop;
    
    for var in 1..10 loop
        dbms_output.put_line(var);
    end loop;
        
        
    
    
    
END;