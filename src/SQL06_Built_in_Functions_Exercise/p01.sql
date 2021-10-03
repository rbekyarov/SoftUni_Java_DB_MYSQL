
SELECT `first_name`, `last_name` From `soft_uni`.`employees`
WHERE LEFT(first_name,2)='Sa'
ORDER BY employee_id;