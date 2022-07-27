-- Provide a query that shows the 
-- total number of invoices per country.

SELECT
    InvoiceId,
    BillingCountry,
    Sum(Total)
FROM Invoice
Group By BillingCountry