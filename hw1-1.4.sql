SELECT BillingCountry, count(InvoiceId) 
FROM invoices 
GROUP BY BillingCountry 
ORDER BY BillingCountry;