SELECT `name` FROM `soft_uni`.`towns`
WHERE CHAR_LENGTH(name) IN (5,6)
ORDER BY name;

