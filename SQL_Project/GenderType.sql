SELECT 
    Gender,
    COUNT(*) AS gender_count,
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM `supermarket_sales - sheet1` WHERE Gender IN ('Male','Female'))) AS customer_percentage
FROM 
   `supermarket_sales - sheet1`
WHERE 
    Gender IN ('Male','Female')
GROUP BY 
    Gender;