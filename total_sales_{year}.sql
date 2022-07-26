SELECT DISTINCT (
    SELECT SUM (Total)
    FROM Invoice
    WHERE InvoiceDate LIKE "2009%"
    ) as Sales_Total_2009,
    (SELECT SUM (Total)
    FROM Invoice
    WHERE InvoiceDate LIKE "2011%") as Sales_Total_2011
FROM Invoice


-- What are the respective total 
-- sales for each of those years?
-- BETWEEN 2009 AND 2011