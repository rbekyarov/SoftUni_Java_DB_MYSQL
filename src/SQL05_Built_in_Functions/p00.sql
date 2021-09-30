SELECT employee_id, first_name, last_name, TIMESTAMPDIFF(year, hire_date, NOW())
AS 'Years in Service'
FROM soft_uni.employees
ORDER BY `Years in Service` DESC;