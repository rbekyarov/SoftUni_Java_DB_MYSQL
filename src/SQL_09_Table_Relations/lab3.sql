SELECT r.starting_point AS 'route_starting_point',
       r.end_point AS 'route_ending_point', r.leader_id ,
CONCAT(c.first_name,' ',c.last_name) AS leader_name
FROM campers AS c JOIN routes AS r ON
r.leader_id = c.id;
