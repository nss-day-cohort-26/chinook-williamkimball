SELECT(Employee.FirstName || " " || Employee.LastName) AS FullName ,Invoice.InvoiceId
FROM Employee 
INNER JOIN Customer
ON Employee.EmployeeId = Customer.SupportRepId
INNER JOIN Invoice
ON Customer.CustomerId = Invoice.CustomerId
ORDER BY Employee.LastName, Invoice.InvoiceId