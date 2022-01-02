SELECT InvoiceId, CustomerId, total
FROM invoices
ORDER BY CustomerId ASC, total DESC;

SELECT InvoiceId, CustomerId, total
FROM invoices
ORDER BY total DESC, CustomerId ASC;

SELECT *
FROM invoices
ORDER BY total DESC
LIMIT 10;

SELECT *
FROM invoices
WHERE total<10
LIMIT 5;

SELECT name
FROM tracks
WHERE name LIKE "B%s";

SELECT *
FROM invoices
WHERE BillingCountry IN ("USA", "Germany", "Norway", "Canada") AND 
InvoiceDate BETWEEN "2010-01-01" AND "2010-12-31"
ORDER BY InvoiceDate DESC;