SELECT 
    SUM(CASE WHEN Branch = 'A' THEN 1 ELSE 0 END) AS total_branch_A,
    SUM(CASE WHEN Branch = 'B' THEN 1 ELSE 0 END) AS total_branch_B,
    SUM(CASE WHEN Branch = 'C' THEN 1 ELSE 0 END) AS total_branch_C,
    SUM(CASE WHEN City = 'Mandalay' THEN 1 ELSE 0 END) AS total_city_Mandalay,
    SUM(CASE WHEN City = 'Naypyitaw' THEN 1 ELSE 0 END) AS total_city_Naypyitaw,
    SUM(CASE WHEN City = 'Yangon' THEN 1 ELSE 0 END) AS total_city_Yangon,
    SUM(CASE WHEN Payment = 'Ewallet' THEN 1 ELSE 0 END) AS total_payment_Ewallet,
    SUM(CASE WHEN Payment = 'Cash' THEN 1 ELSE 0 END) AS total_payment_Cash,
    SUM(CASE WHEN Payment = 'Credit Card' THEN 1 ELSE 0 END) AS total_payment_CreditCard,
    SUM(`Unit price`) AS total_unit_price
FROM 
   `supermarket_sales - sheet1`