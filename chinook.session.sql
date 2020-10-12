1.
SELECT 
    FirstName,
    LastName,
    CustomerId
FROM Customer
WHERE NOT Country='USA'

2.
SELECT 
    FirstName,
    LastName,
    CustomerId
FROM Customer
WHERE Country='Brazil'

3.
SELECT
    c.FirstName,
    c.LastName,
    i.InvoiceId,
    i.InvoiceDate,
    i.BillingCountry
FROM Invoice i
JOIN Customer c ON c.CustomerId = i.CustomerId
WHERE c.Country = 'Brazil'

4.
SELECT DISTINCT
    e.FirstName,
    e.LastName,
    e.EmployeeId
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
