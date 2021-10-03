SELECT town_id,`name` FROM `soft_uni`.`towns`
WHERE LEFT(name,1) IN('M', 'K', 'B', 'E' )
ORDER BY name;
