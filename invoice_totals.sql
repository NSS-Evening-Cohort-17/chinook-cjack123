SELECT 
    i.Total,
    c.FirstName,
    c.LastName,
    c.Country,
    e.FirstName,
    e.LastName
FROM Employee e
JOIN Invoice i
ON c.CustomerId = i.CustomerId
JOIN Customer c
ON e.EmployeeId = c.SupportRepId




-- Provide a query that shows the 
--     customers and employees 
--     associated with each invoice. 
-- The resultant table should include:
-- Invoice Total,
-- Customer Name,
-- Customer Country,
-- Sale Agent full name.