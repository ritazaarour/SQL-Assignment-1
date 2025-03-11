#Question: Find all the invoices from the billing country USA, and Canada and sort in descending order by invoice ID.
SELECT InvoiceId, Total 
FROM invoices 
WHERE BillingCountry IN ('USA', 'Canada') 
ORDER BY InvoiceId desc;
