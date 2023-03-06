-- USE ymir_misael;
-- # USE employees;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
WHERE first_name LIKE 'E%'
  AND last_name LIKE '%E';

SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25'
  AND hire_date BETWEEN '1990-01-01' AND '1999-12-31';

SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25'
  AND hire_date BETWEEN '1990-01-01' AND '1999-12-31'
ORDER BY hire_date DESC, birth_date ASC
LIMIT 1;


SELECT CONCAT_WS(' ', first_name, last_name) AS full_name,
       birth_date,
       hire_date,
       DATEDIFF(NOW(), hire_date)            AS days_worked
FROM employees
WHERE birth_date LIKE '%-12-25'
  AND hire_date BETWEEN '1990-01-01' AND '1999-12-31'
ORDER BY hire_date DESC;

