-- Provide a query that shows all 
-- Invoices. The resultant table 
-- should include:
--     InvoiceId
--     The total number of line 
--        items on each invoice

-- This one is a bit vague for me.
-- Am I counting the line items or am i taking the sum?
-- When I think of "total" I think sum. But, the file name says count which could be easily interpreted as thus.
-- Either way I provided an answer for both.

SELECT 
    i. InvoiceId,
    Sum(il.InvoiceId) Items
FROM Invoice i
JOIN InvoiceLine il
ON i.InvoiceId =il.InvoiceId
GROUP BY i.InvoiceId



SELECT 
    i. InvoiceId,
    Count(il.InvoiceId) Items
FROM Invoice i
JOIN InvoiceLine il
ON i.InvoiceId =il.InvoiceId
GROUP BY i.InvoiceId