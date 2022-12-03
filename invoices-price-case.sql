SELECT invoiceId, Total,
CASE
    WHEN Total > 5 THEN 'Price lower than 5$'
    WHEN Total > 10 THEN 'Price lower than 10$'
    ELSE 'Price higher than 10$'
END
FROM invoices
LIMIT 100;