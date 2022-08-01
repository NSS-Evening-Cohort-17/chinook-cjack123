Which country's customers spent the most?



SELECT
    BillingCountry,
    MAX(Sales)
FROM
(
SELECT 
    BillingCountry,
    SUM(Total) Sales
FROM Invoice 
GROUP BY BillingCountry 
)