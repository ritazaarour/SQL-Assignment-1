SELECT invoices.CustomerId, Total 
FROM invoices 
JOIN customers 
WHERE invoices.CustomerId=customers.CustomerId 
GROUP BY customers.CustomerId;
