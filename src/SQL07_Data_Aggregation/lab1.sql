USE restaurant;
SELECT department_id , count(id) AS 'Number of employees'
FROM employees
GROUP BY department_id;