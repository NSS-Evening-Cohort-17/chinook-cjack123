-- Provide a query that shows the 
-- top 3 best selling artists.




SELECT 
    ar.Name ArtistName,
    SUM(il.UnitPrice) Sales
FROM InvoiceLine il
JOIN Invoice i
ON il.InvoiceId = i.InvoiceId
JOIN Track t 
ON il.TrackId = t.TrackId
JOIN Album a 
ON t.AlbumId = a.AlbumId
JOIN Artist ar 
ON a.ArtistId = ar.ArtistId
GROUP BY ArtistName
ORDER BY Sales DESC
LIMIT 3