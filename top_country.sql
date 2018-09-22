--top_country.sql: 
--Which country's customers spent the most?

SELECT Invoice.BillingCountry AS "Country", ROUND(AVG (Invoice.Total), 2) AS "Average Sales" FROM Invoice
GROUP BY Invoice.BillingCountry
ORDER BY ROUND(AVG (Invoice.Total), 2) DESC
LIMIT 1;