-- Provide a query that 
-- shows total sales made by 
-- each sales agent. The resultant 
-- table should include:
--     1. Employee full name
--     2. Total sales for each 
--        employee (all time)

SELECT 
    e.FirstName || ' ' || e.LastName as FullName,
    Sum(i.Total)
FROM Invoice i 
JOIN Customer c
ON i.CustomerId = c.CustomerId 
JOIN Employee e
ON e.EmployeeId = c.SupportRepId
GROUP BY  FullName

