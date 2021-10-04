SELECT name, category_id, price
FROM restaurant.products
GROUP BY price
HAVING category_id = 2 AND price > 8;

SELECT COUNT(*) AS 'Count' FROM products
WHERE category_id = 2 AND price>8;