-- COUNT(), AVG(), and SUM() Functions
--source: https://www.w3schools.com/sql/sql_count_avg_sum.asp
--abstract: I am looking at the sample queries and creating my own

--Counts how many rows are in the column FirstName and makes a new column called Number from the database ContactUpdates
Select COUNT(FirstName) as Number 
From ap.dbo.ContactUpdates

--sample output
--Number
--8

--Averages the values from all of the rows inside the column PaymentTotal and makes a new column called Payment from the database Invoices
Select AVG(PaymentTotal) as Payment 
FROM ap.dbo.Invoices

--sample output
--Payment
--1566.4398

--Sums up the values from all the rows inside the column PaymentTotal and makes a new column called amount from the database ContactUpdates
Select SUM(PaymentTotal) as Amount 
from ap.dbo.Invoices

--sample output
--Amount
--178574.14
