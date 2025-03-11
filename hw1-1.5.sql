#Question: Write a query that returns a table consisting of the 
customers and the total amount of money spent by each customer.
SELECT invoices.CustomerId, Total 
FROM invoices 
JOIN customers 
WHERE invoices.CustomerId=customers.CustomerId 
GROUP BY customers.CustomerId;
