#Question: Write a query that returns a table consisting of the billing countries and the number of invoices for each country sorted by the country name.
SELECT BillingCountry, count(InvoiceId) 
FROM invoices 
GROUP BY BillingCountry 
ORDER BY BillingCountry;
