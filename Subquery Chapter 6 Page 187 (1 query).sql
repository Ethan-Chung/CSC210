--subqueries
--source: Murach's SQL 2016 Chapter 6 Page 184
--abstract: I am looking at the example queries and explaining what is happening

--Selects the column InvoiceNumber, InvoiceDate, and InvoiceTotal
Select InvoiceNumber, InvoiceDate, InvoiceTotal 
--From the table Invoices in the database AP
From ap.dbo.invoices
--Selects data where InvoiceTotal is greater than the average of the column InvoiceTotal from the database Invoices
Where InvoiceTotal > 
	--This is a subquery. It is a Select statement that's coded within another SQL statement. It can return a single Value.
	--In this case it is returning the average of InvoiceTotal from the table Invoices
	(Select AVG(InvoiceTotal)
	From ap.dbo.Invoices)
--Order the data by InvoiceTotal
Order by InvoiceTotal

/*
Sample output
InvoiceNumber	InvoiceDate	InvoiceTotal
989319-487	2016-02-20 00:00:00	1927.54
97/522	2016-02-28 00:00:00	1962.13
989319-417	2016-03-23 00:00:00	2051.59
989319-427	2016-02-16 00:00:00	2115.81
989319-477	2016-02-08 00:00:00	2184.11
*/

