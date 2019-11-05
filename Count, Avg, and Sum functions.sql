-- COUNT(), AVG(), and SUM() Functions

Select COUNT(FirstName) as Number --Counts how many rows are in the column FirstName and makes a new column called Number from the database ContactUpdates
From ap.dbo.ContactUpdates

Select AVG(PaymentTotal) as Payment --Averages the values from all of the rows inside the column PaymentTotal and makes a new column called Payment from the database Invoices
FROM ap.dbo.Invoices

Select SUM(PaymentTotal) as Amount --Sums up the values from all the rows inside the column PaymentTotal and makes a new column called amount from the database ContactUpdates
from ap.dbo.Invoices