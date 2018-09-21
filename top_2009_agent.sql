--top_2009_agent.sql: 
--Which sales agent made the most in sales in 2009?

Select MAX((Employee.FirstName || " " || Employee.LastName)) AS "Sales Support Agent", ROUND (SUM( Invoice.Total), 2) AS "Total Sales" 
FROM Employee
INNER JOIN Customer
ON Employee.EmployeeId = Customer.SupportRepId
INNER JOIN Invoice
ON Customer.CustomerId = Invoice.CustomerId
AND Invoice.InvoiceDate LIKE "2009%"
GROUP BY Employee.LastName
LIMIT 1;