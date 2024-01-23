SELECT 
    Branch,
    COUNT(*) AS branch_count,
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM `supermarket_sales - sheet1` WHERE Branch IN ('A', 'B', 'C'))) AS branch_percentage
FROM 
   `supermarket_sales - sheet1`
WHERE 
    Branch IN ('A', 'B', 'C')
GROUP BY 
    Branch;