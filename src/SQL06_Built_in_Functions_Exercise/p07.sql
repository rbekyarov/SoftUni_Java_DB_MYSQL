SELECT town_id,`name` FROM `soft_uni`.`towns`
WHERE LEFT(name,1) NOT IN('R', 'B', 'D')
ORDER BY name;