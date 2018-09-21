--sales_agent_total_sales.sql: 
--Provide a query that shows total sales made by each sales agent.
Select (Employee.FirstName || " " || Employee.LastName) AS "Sales Support Agent", ROUND (SUM( Invoice.Total), 2) as "Total Sales" 
FROM Employee
INNER JOIN Customer
ON Employee.EmployeeId = Customer.SupportRepId
INNER JOIN Invoice
ON Customer.CustomerId = Invoice.CustomerId
GROUP BY Employee.LastName;
