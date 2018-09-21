--tracks_no_id.sql: 
--Provide a query that shows all the Tracks, but displays no IDs. 
--The result should include the Album name, Media type and Genre

SELECT t.Name AS "Track Name", a.Title AS "Album Title", mt.Name AS "Media Type Name", g.Name AS "Genre"
FROM Track t
JOIN Album a
ON t.AlbumId = a.AlbumId
JOIN MediaType mt
ON t.MediaTypeId = mt.MediaTypeId
JOIN Genre g
ON t.GenreId = g.GenreId
