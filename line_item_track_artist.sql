-- Provide a query that shows each 
-- Invoice line item, with the 
-- name of the track that was purchase, 
-- and the name of the artist.

SELECT 
    i.InvoiceLineId,
    t.Name,
    art.Name
FROM InvoiceLine i
JOIN Track t
ON i.TrackId = t.TrackId
JOIN Album al 
on t.AlbumId = al.AlbumId
JOIN Artist art 
ON art.ArtistId = al.ArtistId
