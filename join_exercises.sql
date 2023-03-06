SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Manager_Name
FROM employees AS e
         JOIN dept_manager AS dm
              ON dm.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Manager_Name
FROM employees AS e
         JOIN dept_manager AS dm
              ON dm.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
  AND e.gender = 'F'
ORDER BY d.dept_name;

--  SELECT t.title AS Title, COUNT() AS Total
--        FROM employees AS e
--        JOIN titles AS t ON e.emp_no = t.emp_no
--        JOIN dept_emp AS de ON e.emp_no = de.emp_no
--        WHERE de.dept_no = 'd009' AND t.to_date = '9999-01-01'
--        GROUP BY t.title ORDER BY COUNT() DESC;

SELECT e.first_name, e.last_name, t.title, s.salary
FROM employees AS e
         JOIN dept_emp AS de ON e.emp_no = de.emp_no
         JOIN titles AS t ON e.emp_no = t.emp_no
         JOIN salaries AS s ON e.emp_no = s.emp_no
         JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service'
  AND de.to_date = '9999-01-01'
  AND t.to_date = '9999-01-01'
  AND s.to_date = '9999-01-01'
ORDER BY e.last_name, e.first_name;



SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Manager_Name, s.salary AS Salary
FROM employees AS e
         JOIN dept_manager AS dm
              ON e.emp_no = dm.emp_no
         JOIN departments AS d
              ON d.dept_no = dm.dept_no
         JOIN salaries AS s
              ON e.emp_no = s.emp_no
WHERE s.to_date = '9999-01-01'
  AND dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Manager_Name
FROM employees AS e
         JOIN dept_manager AS dm
              ON dm.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
  AND e.gender = 'F'
ORDER BY d.dept_name;
