-- Provide a query that shows the 
-- most purchased track(s) of 2013.


SELECT
    Track,
    MAX(Sales)
FROM
(SELECT 
    t.Name Track,
    i.InvoiceDate,
    Sum(il.UnitPrice) Sales
FROM InvoiceLine il 
JOIN Invoice i
ON il.InvoiceId = i.InvoiceId
JOIN Track t
ON il.TrackId = t.TrackId
WHERE i.InvoiceDate LIKE "2013%"
GROUP BY il.InvoiceId)
