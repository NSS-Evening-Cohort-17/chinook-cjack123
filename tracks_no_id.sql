-- Provide a query that shows 
-- all the Tracks, but displays 
-- no IDs. The resultant table 
-- should include:
--     Album name
--     Media type
--     Genre

SELECT DISTINCT
    al.Title,
    mt.Name,
    g.Name
FROM Track t
JOIN Album al 
ON t.AlbumId = al.AlbumId
JOIN MediaType mt 
ON t.MediaTypeId = mt.MediaTypeId
JOIN Genre g 
ON t.GenreId = g.GenreId
