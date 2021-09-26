USE soft_uni;
CREATE VIEW full_name_and_salary AS
SELECT concat_ws(' ', `first_name`,`last_name`) AS Name, `salary`
FROM soft_uni.employees
ORDER BY salary;

SELECT * FROM full_name_and_salary
ORDER BY `Name` DESC