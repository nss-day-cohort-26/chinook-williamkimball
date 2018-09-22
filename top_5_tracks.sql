--top_5_tracks.sql: 
--Provide a query that shows the top 5 most purchased songs.

SELECT Track.Name, Count (InvoiceLine.TrackId) FROM InvoiceLine
JOIN Invoice 
ON InvoiceLine.InvoiceId = Invoice.InvoiceId
JOIN Track
ON InvoiceLine.TrackId = Track.TrackId
GROUP BY Track.Name
ORDER BY Count (InvoiceLine.TrackId) DESC
LIMIT 5;