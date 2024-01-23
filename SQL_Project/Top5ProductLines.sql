SELECT `Product line`, SUM(Quantity) AS total_quantity_sold
FROM `supermarket_sales - sheet1`
GROUP BY `Product line`
ORDER BY total_quantity_sold DESC
LIMIT 5;