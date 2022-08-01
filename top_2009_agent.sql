-- Which sales agent made 
-- the most in sales in 2009?


SELECT 
    FirstName,
    LastName,
     MAX(Total_Sales)
FROM
(SELECT Employee.FirstName, Employee.LastName, 
SUM (Invoice.Total) as Total_Sales
FROM Employee
JOIN Customer
ON Employee.EmployeeId = Customer.SupportRepId
JOIN Invoice
ON Customer.CustomerId = Invoice.CustomerId
WHERE Invoice.InvoiceDate LIKE "2009%"
GROUP BY Employee.FirstName, Employee.LastName)