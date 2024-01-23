SELECT 
    Payment,
    COUNT(*) AS payment_count,
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM `supermarket_sales - sheet1` WHERE Payment IN ('Ewallet', 'Credit Card', 'Cash'))) AS payment_percentage
FROM 
   `supermarket_sales - sheet1`
WHERE 
    Payment IN ('Ewallet', 'Credit Card', 'Cash')
GROUP BY 
    Payment;