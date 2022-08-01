-- Provide a query that shows the top 
-- 5 most purchased tracks over all.

SELECT 
    SUM(il.UnitPrice) Sales,
    t.Name TrackName
FROM InvoiceLine il
JOIN Invoice i
ON il.InvoiceId = i.InvoiceId
JOIN Track t 
ON il.TrackId = t.TrackId
GROUP BY t.TrackId
ORDER BY Sales DESC
LIMIT 5
