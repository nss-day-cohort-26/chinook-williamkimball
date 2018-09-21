--invoices_line_item_count.sql: 
--Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT InvoiceLine.InvoiceId, Invoice.CustomerId, Invoice.BillingAddress, 
Invoice.BillingCity, Invoice.BillingCountry, Invoice.BillingPostalCode, 
Invoice.BillingState, Invoice.Total, COUNT (InvoiceLine.InvoiceLineId) AS "Number of Invoice Line Items"
FROM Invoice
JOIN InvoiceLine
ON Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY InvoiceLine.InvoiceId;