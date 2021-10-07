SELECT m.name , mo.name FROM ex2.models AS mo
JOIN ex2.manufacturers AS m
ON mo.manufacturer_id = m.manufacturer_id;