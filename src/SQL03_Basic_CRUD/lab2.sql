SELECT `id`as No ,concat(`first_name`,' ',`last_name`) AS 'Full Name',
`job_title` as  'Job Title', `salary` as 'Salary'
FROM `hotel`.`employees`
WHERE salary>1000
;

# SELECT concat_ws(' ',`first_name`,`last_name`) AS 'Full Name',
#        `job_title` as  'Job Title', `salary` as 'Salary'
# FROM `employees`
# WHERE salary>1000