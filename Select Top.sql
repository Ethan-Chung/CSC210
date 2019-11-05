-- Select Top Rows

SELECT TOP 50 * from ap.dbo.Invoices; --This selects the Top 50 rows from database Invoices


SELECT * FROM ap.dbo.Invoices --This selects all columns from Invoices where the column InvoiceID is less than or equal too 35
WHERE InvoiceID <= 35; 

SELECT TOP 50 PERCENT * --Selects the top 50 Percent rows from Invoices
FROM ap.dbo.Invoices;

SELECT TOP 3 *         --Selects top 3 rows from Invoices where VenderID is 123
FROM ap.dbo.Invoices
Where VendorID = 123