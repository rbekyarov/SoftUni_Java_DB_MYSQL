SELECT CONCAT_WS(' ',first_name,last_name) As 'Full Name',
       TIMESTAMPDIFF(day , born, died) As 'Days Lived'
FROM authors;

