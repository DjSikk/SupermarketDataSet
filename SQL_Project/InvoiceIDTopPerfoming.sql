SELECT `Invoice ID`,SUM(Quantity) AS total_sales
FROM `supermarket_sales - sheet1`
GROUP BY `Invoice ID`
ORDER BY total_sales DESC
LIMIT 1;
