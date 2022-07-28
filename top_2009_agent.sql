-- Which sales agent made 
-- the most in sales in 2009?


Select 
    MAX(Total)
FROM Invoice 

SELECT 
    e.FirstName || ' ' || e.LastName as FullName,
    Sum(i.Total) Sum_of_Sales,
    (
    SELECT 
    MAX(Total) 
    FROM Invoice
    WHERE InvoiceDate LIKE "2009%"
    )
FROM Invoice i
JOIN Customer c
ON i.CustomerId = c.CustomerId
JOIN Employee e
ON e.EmployeeId = c.SupportRepId
WHERE InvoiceDate LIKE "2009%" 
GROUP BY  FullName

SELECT 
    DISTINCT (SELECT SUM (Total)
    FROM Invoice
    WHERE InvoiceDate LIKE "2009%") as Sales_Total_2009,

    (SELECT SUM (Total)
    FROM Invoice
    WHERE InvoiceDate LIKE "2011%") as Sales_Total_2011
FROM Invoice
