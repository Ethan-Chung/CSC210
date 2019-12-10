--Inner Join with two conditions
--source: Murach's SQL 2016
--abstract: I am explaining the SQL queries from the book

--Select the columns InvoiceNumber, InvoiceDate, InvoiceTotal, and InvoiceLineItemAmount
Select InvoiceNumber, InvoiceDate, InvoiceTotal, InvoiceLineItemAmount
--Selects the table Invoices and InvoiceLineItems (names InvoiceLineItem as LineItems) and joins the data
From ap.dbo.Invoices Join ap.dbo.InvoiceLineItems as LineItems
	-- Joins the data where InvoiceID from Invoices are the same as InvoiceID from LineItems and
	on (Invoices.InvoiceID = Lineitems.InvoiceID) and
	-- Joins the data from InvoiceToal from invoices that is bigger than InvoiceLineItemAmount from LineItems
		(Invoices.InvoiceTotal > LineItems.InvoiceLineItemAmount)
--Orders the data by InvoiceNumber
Order By InvoiceNumber;

--sample output
/*
InvoiceNumber	InvoiceDate	InvoiceTotal	InvoiceLineItemAmount
97/522	2016-02-28 00:00:00	1962.13	1197.00
97/522	2016-02-28 00:00:00	1962.13	765.13
I77271-O01	2015-12-26 00:00:00	662.00	50.00
I77271-O01	2015-12-26 00:00:00	662.00	75.60
*/

--This is the same as above but instead of a and clause it uses a where clause

--Select the columns InvoiceNumber, InvoiceDate, InvoiceTotal, and InvoiceLineItemAmount
Select InvoiceNumber, InvoiceDate, InvoiceTotal, InvoiceLineItemAmount
--Selects the table Invoices and InvoiceLineItems (names InvoiceLineItem as LineItems) and joins the data
From ap.dbo.Invoices Join ap.dbo.InvoiceLineItems as LineItems
	-- Joins the data where InvoiceID from Invoices are the same as InvoiceID from LineItems and
	on (Invoices.InvoiceID = Lineitems.InvoiceID) 
--Where the data from InvoiceToal from invoices that is bigger than InvoiceLineItemAmount from LineItems
Where (Invoices.InvoiceTotal > LineItems.InvoiceLineItemAmount)
--Orders the data by InvoiceNumber
Order By InvoiceNumber;

--sample output
/*
InvoiceNumber	InvoiceDate	InvoiceTotal	InvoiceLineItemAmount
97/522	2016-02-28 00:00:00	1962.13	1197.00
97/522	2016-02-28 00:00:00	1962.13	765.13
I77271-O01	2015-12-26 00:00:00	662.00	50.00
I77271-O01	2015-12-26 00:00:00	662.00	75.60
I77271-O01	2015-12-26 00:00:00	662.00	58.40
*/





