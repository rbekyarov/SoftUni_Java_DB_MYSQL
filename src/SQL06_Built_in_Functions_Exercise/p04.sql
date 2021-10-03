SELECT `first_name`, `last_name` FROM `soft_uni`.`employees`
WHERE `job_title` NOT LIKE 'engineer'
ORDER BY `employee_id`;