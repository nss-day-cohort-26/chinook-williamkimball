--line_item_track_artist.sql: 
--Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT InvoiceLine.InvoiceId, InvoiceLine.InvoiceLineId, Track.Name AS "Track Name", Artist.Name AS "Artist Name"
FROM InvoiceLine
INNER JOIN Track 
ON InvoiceLine.TrackId = Track.TrackId
INNER JOIN Album 
ON Track.AlbumId = Album.AlbumId
Inner Join Artist
On Album.ArtistId = Artist.ArtistId
ORDER BY InvoiceLine.InvoiceId;