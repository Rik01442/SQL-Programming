-- Coorelated subquery
use employees;
select * from employees;
select * from dept_emp;
select * from titles;

select emp_no,first_name, hire_date 
from employees where hire_date in
		(select from_date from dept_emp
			where emp_no=employees.emp_no);
            
select first_name, emp_no from employees where emp_no in (
select emp_no from titles where emp_no=employees.emp_no and title = 'Manager');

-- Need to get the emp_no, first name for those employees 
-- where the hiring date of an employees 
-- is greater than the oldest date of from_date column

select emp_no,first_name from employees join dept_emp where hire_date>min(from_date); 

select first_name, emp_no from employees where emp_no in (
select emp_no from titles where emp_no=employees.emp_no and title = 'Assistant Engineer');

select first_name, e.emp_no, hire_date from employees as e join titles 
where hire_date<(title='Manager');

select employee.emp_no,hire_date from employees as employee join titles where title='Manager';
select employee.emp_no,hire_date from employees as employee join titles where title='Assistant Engineer';

select emp_no,first_name from employees where emp_no in (select e.emp_no from employees as e 
join titles on e.emp_no=titles.emp_no and titles.title='assistant engineer') 
and hire_date < any ( select e.hire_date from employees as e join titles on e.emp_no=titles.emp_no and titles.title='manager');

select emp_no, first_name, last_name, hire_date 
from employees join titles using (emp_no) 
where title = 'Assistant Engineer' 
and hire_date < any (select hire_date from 
employees join titles using (emp_no) 
where title = 'Manager');