--top_2013_track.sql: 
--Provide a query that shows the most purchased track of 2013.

SELECT Track.Name, Count (InvoiceLine.TrackId) FROM InvoiceLine
JOIN Invoice 
ON InvoiceLine.InvoiceId = Invoice.InvoiceId
JOIN Track
ON InvoiceLine.TrackId = Track.TrackId
WHERE Invoice.InvoiceDate LIKE "2013%"
GROUP BY Track.Name
ORDER BY Count (InvoiceLine.TrackId) DESC
LIMIT 1;
