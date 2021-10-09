USE soft_uni;
SELECT employee_id,	job_title,	a.address_id,	address_text
FROM employees
JOIN addresses a ON employees.address_id = a.address_id
ORDER BY address_id
LIMIT 5;