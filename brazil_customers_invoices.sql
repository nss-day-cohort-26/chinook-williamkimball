SELECT Customer.FirstName,Customer.LastName,Invoice.InvoiceId,Invoice.InvoiceDate, Invoice.BillingCountry
FROM Customer 
INNER JOIN Invoice
ON Customer.customerId = Invoice.customerId
WHERE Customer.Country is 'Brazil';