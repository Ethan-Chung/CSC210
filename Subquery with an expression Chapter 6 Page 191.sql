--Subquery with an expression
--source: Murach's SQL 2016 Chapter 6 Page 191
--abstract: I am looking at the same queries and explaining what they do

--Selects the column InvoiceNumber, InvocieDate, InvoiceTotal, and subtracts the column InvoiceTotal, PaymentTOtal, and CreditTotal and names the new column BalanceDue
Select InvoiceNumber, InvoiceDate, InvoiceTotal,
	InvoiceTotal - PaymentTotal - CreditTotal As BalanceDue
--From the table Invocies in the database AP
From ap.dbo.Invoices
--Only selects the data where InvoiceTotal - PaymentTotal - CreditTotal is bigger than 0 
Where InvoiceTotal - PaymentTotal - CreditTotal > 0 
	--And where InvoiceTotal - PaymentTotal - CreditTotal is smaller than the subquery
	And InvoiceTotal - PaymentTotal - CreditTotal < 
	--This subquery Selects the AVG from InvoiceTotal - PaymentTotal - CreditTotal
	(Select AVG(InvoiceTotal - PaymentTotal - CreditTotal)
	--From the table Invoices in the database AP
	From ap.dbo.Invoices
	--Where the data in InvoiceTotal - PaymentTotal - CreditTotal is bigger than 0
	Where InvoiceTotal - PaymentTotal - CreditTotal > 0)
--Orders the data by InvoiceTotal in Descending order
Order By InvoiceTotal Desc 

/* 
Sample Output

InvoiceNumber	InvoiceDate	InvoiceTotal	BalanceDue
31361833	2016-03-21 00:00:00	579.42	579.42
9982771	2016-03-24 00:00:00	503.20	503.20
547480102	2016-04-01 00:00:00	224.00	224.00
134116	2016-03-28 00:00:00	90.36	90.36
*/


