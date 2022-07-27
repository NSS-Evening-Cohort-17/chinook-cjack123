-- Provide a query that shows each
--  Invoice line item, with the 
--  name of the track t



SELECT 
    i.InvoiceLineId,
    i.InvoiceId,
    t.Name
FROM InvoiceLine i
JOIN Track t
ON i.TrackId = t.TrackId

