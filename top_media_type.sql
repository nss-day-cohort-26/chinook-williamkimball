--top_media_type.sql: 
--Provide a query that shows the most purchased Media Type.

SELECT MediaType.Name, Count (MediaType.Name) AS "Media Type Sales Count" 
FROM InvoiceLine
JOIN Track 
ON InvoiceLine.TrackId = Track.TrackId
JOIN MediaType
ON Track.MediaTypeId = MediaType.MediaTypeId
GROUP BY MediaType.Name
ORDER BY Count (MediaType.Name)DESC
LIMIT 1;