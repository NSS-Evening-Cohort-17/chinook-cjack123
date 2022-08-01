-- Provide a query that shows the 
-- most purchased Media Type.


SELECT
    MAX(Sales) MostSales,
    MediaTypeName

FROM
(
SELECT 
    SUM(il.UnitPrice) Sales,
    m.Name MediaTypeName
FROM InvoiceLine il
JOIN Invoice i
ON il.InvoiceId = i.InvoiceId
JOIN Track t 
ON il.TrackId = t.TrackId
JOIN MediaType m 
ON t.MediaTypeId = m.MediaTypeId
GROUP BY t.MediaTypeId
)