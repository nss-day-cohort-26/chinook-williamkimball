  SELECT InvoiceId as "Invoice ID" , COUNT(InvoiceLineId) as "Line Items"
  FROM InvoiceLine
  GROUP BY InvoiceId;
