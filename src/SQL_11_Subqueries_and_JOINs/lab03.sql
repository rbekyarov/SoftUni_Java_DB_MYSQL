USE soft_uni;
SELECT employee_id, first_name, last_name,
d.department_id, salary FROM employees AS e
JOIN departments d ON e.department_id = d.department_id
WHERE e.manager_id IS NULL
ORDER BY employee_id;