SELECT DISTINCT c.CustomerId 
FROM customers c 
JOIN invoices i ON i.CustomerId=c.CustomerId 
JOIN invoice_items ii ON ii.InvoiceId=i.InvoiceId 
JOIN tracks t ON t.TrackId=ii.TrackId 
JOIN genres g ON g.GenreId=t.GenreId 
WHERE g.Name = 'Blues';