SELECT employees.emp_no, employees.lastname, employees.firstname, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no=salaries.emp_no;

select firstname, lastname, hire_date from employees where hire_date between '1/1/1986' and '12/31/1986';

select departments.dept_no, departments.dept_name, managers.man_no, employees.lastname, employees.firstname
from ((departments
inner join managers on departments.dept_no = managers.dept_no)
inner join employees on managers.man_no = employees.emp_no)