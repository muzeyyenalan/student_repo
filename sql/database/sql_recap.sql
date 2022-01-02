SELECT
    employees.first_name,
    employees.last_name,
    employees.salary,
    departments.dept_name  
  FROM employees
  INNER JOIN departments
    ON employees.emp_id = departments.emp_id
    WHERE employees.salary>80000;


select employees.first_name, employees.last_name, 
employees.salary, departments.dept_name
from employees
INNER join departments
on employees.emp_id=departments.emp_id
where gender="Female";

SELECT
    
    employees.first_name,
    employees.last_name,
    departments.dept_name,
    departments.dept_id
  FROM employees
  LEFT JOIN departments
    ON employees.emp_id = departments.emp_id
    where employees.gender="Male";