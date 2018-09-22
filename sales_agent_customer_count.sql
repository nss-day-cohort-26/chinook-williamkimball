--sales_agent_customer_count.sql: 
--Provide a query that shows the count of customers assigned to each sales agent.

SELECT (Employee.FirstName || " " || Employee.LastName) AS "Sales Support Agent", COUNT (Customer.SupportRepId) AS "Number of Customers" FROM Customer
JOIN Employee
ON Customer.SupportRepId = Employee.EmployeeId
GROUP BY Customer.SupportRepId
ORDER BY COUNT (Customer.SupportRepId) DESC;