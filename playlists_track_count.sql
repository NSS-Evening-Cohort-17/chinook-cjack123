-- Provide a query that shows 
-- the total number of tracks in 
-- each playlist. The resultant 
-- table should include:
--     Playlist name
--     Total number of tracks on 
--          each playlist


SELECT 
    p.Name,
    COUNT(*) as song_counter
FROM Playlist p
JOIN PlaylistTrack pt 
ON p.PlaylistId = pt.PlayListId
GROUP BY p.PlaylistId


