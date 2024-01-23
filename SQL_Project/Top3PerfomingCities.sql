SELECT City, SUM(Total) AS total_sales
FROM `supermarket_sales - sheet1`
GROUP BY City
ORDER BY total_sales DESC
LIMIT 3;