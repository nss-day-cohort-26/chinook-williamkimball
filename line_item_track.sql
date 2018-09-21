--line_item_track.sql: 
--Provide a query that includes the purchased track name with each invoice line item.

SELECT InvoiceLine.InvoiceId, InvoiceLine.InvoiceLineId, Track.Name AS "Track Name"
FROM InvoiceLine
INNER JOIN Track 
ON InvoiceLine.TrackId = Track.TrackId
ORDER BY InvoiceLine.InvoiceId;