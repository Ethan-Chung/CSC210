--Select Statement Examples
--source: Murach's SQL Server 2016 Chapter 3 page 89
--abstract: I am looking at the SQL queries and then writing in comments to explain what is happening

--Select the column InvoiceNumber, InvoiceDate, and InvoiceTotal
Select InvoiceNumber, InvoiceDate, InvoiceTotal
--Selects the columns from the Invoice Table
From ap.dbo.invoices
--Orders the data by the Invoice Total
Order By InvoiceTotal


--sample output
/* 
InvoiceNumber	InvoiceDate	InvoiceTotal
25022117	2016-01-01 00:00:00	6.00
24863706	2016-01-10 00:00:00	6.00
24780512	2016-02-22 00:00:00	6.00
21-4923721	2016-01-13 00:00:00	9.95
*/

--Selects the column InvoiceID, InvoiceTotal, and adds the two columns CreditTotal and PaymentTotal togethr and makes a new column called totalCredits 
Select InvoiceID, InvoiceTotal, CreditTotal + PaymentTotal as TotalCredits
--selects the columns from the table Invoices
From ap.dbo.Invoices
--only selects the data that matches the InvoiceID of 17
where InvoiceID = 17

--sample output
/* 
InvoiceID	InvoiceTotal	TotalCredits
17	10.00	10.00
*/

