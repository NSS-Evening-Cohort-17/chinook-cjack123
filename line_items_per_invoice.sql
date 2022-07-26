-- Looking at the InvoiceLine table, 
-- provide a query that COUNTs the 
-- number of line items for each Invoice.
-- HINT: GROUP BY


SELECT
    InvoiceId,
    COUNT(InvoiceId)
FROM InvoiceLine
GROUP BY InvoiceId

-- Is this one suppose to count the grouping of the invoice id?
-- COUNT(InvoiceId) and COUNT(InvoiceLineId) gie the same output.
