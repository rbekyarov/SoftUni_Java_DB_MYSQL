USE geography;
SELECT c.country_code, m.mountain_range, p.peak_name, p.elevation
FROM countries AS c
JOIN mountains_countries AS mc
USING (country_code)
JOIN mountains AS m
ON m.id = mc.mountain_id
JOIN peaks AS p
ON p.mountain_id = m.id
WHERE c.country_name = 'Bulgaria' AND p.elevation > 2835
ORDER BY p.elevation DESC ;