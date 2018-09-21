--top_agent.sql: 
--Which sales agent made the most in sales over all?


Select MAX((Employee.FirstName || " " || Employee.LastName)) AS "Sales Support Agent", ROUND (SUM( Invoice.Total), 2) AS "Total Sales" 
FROM Employee
INNER JOIN Customer
ON Employee.EmployeeId = Customer.SupportRepId
INNER JOIN Invoice
ON Customer.CustomerId = Invoice.CustomerId
GROUP BY Employee.LastName
ORDER BY SUM(Invoice.Total) DESC
LIMIT 1;