USE geography;
SELECT c.continent_code,c.country_code,COUNT(c.country_name) AS currency_usage
FROM countries AS c
GROUP BY c.continent_code , currency_code
HAVING currency_usage = (
SELECT COUNT(country_code) AS coun
FROM countries AS c1
WHERE c1.continent_code = c.continent_code
GROUP BY c1.currency_code
ORDER BY coun DESC
LIMIT 1
) AND currency_usage > 1
ORDER BY c.continent_code , c.currency_code;