--top_3_artists.sql: 
--Provide a query that shows the top 3 best selling artists.

SELECT Artist.Name, Count (InvoiceLine.TrackId) AS "Artist Sales Count" FROM InvoiceLine
JOIN Track 
ON InvoiceLine.TrackId = Track.TrackId
JOIN Artist
ON Track.AlbumId = Album.AlbumId
JOIN Album
ON Artist.ArtistId = Album.ArtistId
GROUP BY Artist.Name
ORDER BY Count (InvoiceLine.TrackId)DESC
LIMIT 3;