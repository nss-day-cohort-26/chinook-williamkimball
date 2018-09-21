SELECT Invoice.Total,(Customer.FirstName || " " || Customer.LastName) AS CustomerFullName ,Customer.Country, (Employee.FirstName || " " || Employee.LastName) AS SalesAgentName
FROM Customer 
INNER JOIN Invoice
ON Invoice.CustomerId = Customer.CustomerId
INNER JOIN Employee
ON Customer.SupportRepId = Employee.EmployeeId
ORDER BY Customer.LastName