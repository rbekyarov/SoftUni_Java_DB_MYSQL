SELECT e.employee_id, CONCAT (e.first_name,' ' ,e.last_name) As full_name,
d.department_id, d.name As department_name
FROM soft_uni.departments As d
JOIN soft_uni.employees As e
ON e.employee_id=d.manager_id
ORDER BY employee_id
LIMIT 5;