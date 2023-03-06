-- USE ymir_misael;
-- # USE employees;


SELECT CONCAT(emp.emp_no, ' - ', emp.last_name, ', ', emp.first_name) AS full_name, emp.birth_date AS DOB
FROM employees AS emp
LIMIT 10;


