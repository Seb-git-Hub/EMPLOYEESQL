employees
-
emp_no INT PK
birth_date DATE
first_name  VARCHAR
last_name VARCHAR
gender VARCHAR
hire_date DATE

departments
-
dept_no VARCHAR pk
dept_name VARCHAR

dept_manager
-
dept_no VARCHAR PK FK - depts.dept_no
emp_no INT PK FK - emp.emp_no
from_date DATE
to_date DATE

dept_emp
-
emp_no INT PK FK - emp.emp_no
dept_no VARCHAR PK FK - depts.dept_no
from_date DATE
to_date DATE

titles
-
emp_no INT PK FK - emp.emp_no
title VARCHAR
from_date DATE PK
to_date DATE

salaries
-
emp_no INT PK FK - emp.emp_no
salary INT
from_date DATE
to_date DATE