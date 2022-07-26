SELECT 
    e.FirstName,
    e.LastName,
    i.InvoiceId
FROM Employee e
JOIN Invoice i
ON c.CustomerId = i.CustomerId
JOIN Customer c
ON e.EmployeeId = c.SupportRepId