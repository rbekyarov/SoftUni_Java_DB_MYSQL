USE soft_uni;
SELECT employee_id,	first_name,	salary,	d.name AS department_name
FROM employees AS e
JOIN departments d on d.department_id = e.department_id
WHERE salary > 15000
ORDER BY d.department_id DESC
LIMIT 5;