SELECT 
    `Customer type`,
    COUNT(*) AS customer_count,
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM `supermarket_sales - sheet1` WHERE `Customer type` IN ('Members','Normal'))) AS customer_percentage
FROM 
   `supermarket_sales - sheet1`
WHERE 
    `Customer type` IN ('Member','Normal')
GROUP BY 
    `Customer type`;