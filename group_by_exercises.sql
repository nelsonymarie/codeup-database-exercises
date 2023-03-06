-- USE ymir_misael;
# USE employees;

SELECT DISTINCT title
FROM titles;


SELECT *
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE;


SELECT last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name;


SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';


SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';


SELECT last_name, COUNT(*) as num_employees
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY num_employees DESC;


SELECT gender, COUNT(*) as num_employees
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;
