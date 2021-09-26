# първи начин
SELECT concat_ws(' ', first_name, middle_name, last_name) AS 'Full Name'
FROM soft_uni.employees
WHERE `salary` = 25000
   OR `salary` = 14000
   OR `salary` = 12500
   OR `salary` = 23600;
# втори начин
SELECT concat_ws(' ', first_name, middle_name, last_name) AS 'Full Name'
FROM soft_uni.employees
WHERE `salary` IN (25000, 14000, 12500, 23600);