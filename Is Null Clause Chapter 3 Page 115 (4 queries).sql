--Is Null Clause
--Source: Murach's 2016 SQL Chapter 3 Page 115
--abstract: I am explaining what the queries are doing

--Selects all columns
Select * 
--Selects columns form the table NullSample from the database Examples
From Examples.dbo.NullSample 
--Only selects the data that is 0 in the invoicetotal column
Where InvoiceTotal = 0

--sample output
/*
InvoiceID	InvoiceTotal
2	0.00
5	0.00
*/

--Selects all the columns
Select * 
--From the table Nullsample in the database Examples
From Examples.dbo.NullSample
--Only selects the data in InvoiceTotal that is not 0
Where InvoiceTotal <> 0

--sample output
/*
InvoiceID	InvoiceTotal
1	125.00
4	2199.99
*/

--Selects all the columns
Select *
--From the table Nullsample in the database Examples
From Examples.dbo.NullSample
--Only selects the data in InvoiceTotal that is NULL
Where InvoiceTotal Is Null

--sample output
/*
InvoiceID	InvoiceTotal
3	NULL
*/

--Selects all of the columns
Select *
--From the table Nullsample in the database Examples
From Examples.dbo.NullSample
--Only selects the data In the InvoiceTotal column that is not a Null value
Where InvoiceTotal is not Null

--sample output
/*
InvoiceID	InvoiceTotal
1	125.00
2	0.00
4	2199.99
5	0.00
*/

