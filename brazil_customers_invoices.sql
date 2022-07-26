SELECT
    c.FirstName,
    c.LastName,
    i.InvoiceId,
    i.InvoiceDate,
    i.BillingCountry
From Customer AS c
Join Invoice AS i
on c.CustomerId = i.CustomerId
Where i.BillingCountry = "Brazil"


