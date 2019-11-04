#Q1
select emp.emp_no, last_name, first_name, gender, salary 
from employees AS emp
inner join salaries AS sal on emp.emp_no=sal.emp_no

#Q2
select * 
from employees where EXTRACT(YEAR FROM hire_date)=1986 

#Q3
select deptm.dept_no, dept_name, emp.emp_no, last_name, first_name, hire_date, from_date, to_date 
from dept_manager AS deptm inner join employees AS emp on deptm.emp_no = emp.emp_no 
inner join departments AS depts on deptm.dept_no=depts.dept_no
#Q4

select emp.emp_no, last_name, first_name, dept_name 
from employees AS emp
inner join dept_emp AS depte on emp.emp_no=depte.emp_no 
inner join departments AS depts on depte.dept_no=depts.dept_no 
order by emp.emp_no

#Q5
select *
from employees WHERE first_name = 'Hercules' and last_name LIKE 'B%'

#Q6
select emp.emp_no, last_name, first_name, dept_name 
from employees AS emp
inner join dept_emp AS depte on emp.emp_no=depte.emp_no 
inner join departments AS depts on depte.dept_no=depts.dept_no AND depts.dept_name= 'Sales' 
order by emp.emp_no

#Q7
select emp.emp_no, last_name, first_name, dept_name 
from employees AS emp 
inner join dept_emp AS depte on emp.emp_no=depte.emp_no 
inner join departments AS depts on depte.dept_no=depts.dept_no 
WHERE depts.dept_name IN ('Sales', 'Development')
order by emp.emp_no

#Q8
select last_name, COUNT(last_name) 
from employees group by last_name 
order by count(last_name) DESC
#8a
select last_name, COUNT(last_name) 
from employees group by last_name 
order by last_name DESC




