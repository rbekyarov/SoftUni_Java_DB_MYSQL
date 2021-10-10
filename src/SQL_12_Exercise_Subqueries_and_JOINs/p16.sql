use geography;
SELECT COUNT(*) AS country_count FROM countries AS c
WHERE c.country_code NOT IN (SELECT country_code FROM mountains_countries );