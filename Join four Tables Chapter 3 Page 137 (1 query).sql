--Inner Joins that Join 4 Tables
--source: Murach's SQL 2016 Chapter 4 Page 137
--abstract: I am looking at the example query and explaining what is happening 

--Select the column VendorName, InvoiceNumber, InvoiceDate, InvoiceLineItemAmount and renames to LineItemAmount, and AccountDescription
Select VendorName, InvoiceNumber, InvoiceDate,
	InvoiceLineItemAmount As LineItemAmount, AccountDescription
--Selects the table Vendors and uses it to join all the other tables on it
From ap.dbo.vendors
	-- Joins the table Invoices when VendorID from Vendors is the same as VendorID from the table Invoices
	Join ap.dbo.Invoices on Vendors.VendorID = Invoices.VendorID
	--joins the table InvoiceLineItems when InvoiceID from the table Vendors is the same as VendorID from Invoices
	Join ap.dbo.InvoiceLineItems
		On Invoices.InvoiceID = InvoiceLineItems.InvoiceID
	--Joins the table GLAccounts when AccountNo from InvoiceLineItems is the same as AccountNo on GLAccounts
	Join ap.dbo.GLAccounts on InvoiceLineItems.AccountNo = GLAccounts.AccountNo
--Only selects the data where Invoicetotal - PaymentTotal - CreditTotal is bigger than zero
Where InvoiceTotal - PaymentTotal - CreditTotal > 0 
--Order the data by VendorName and LineItemAmount in descending order
Order By VendorName, LineItemAmount Desc;

--sample output
/*
First Interim Table 

VendorName	InvoiceNumber	InvoiceDate
Blue Cross	547480102	2016-04-01 00:00:00
Cardinal Business Media, Inc.	134116	2016-03-28 00:00:00
Data Reproductions Corp	39104	2016-03-10 00:00:00
Federal Express Corporation	263253270	2016-03-22 00:00:00
Federal Express Corporation	263253268	2016-03-21 00:00:00
Federal Express Corporation	963253264	2016-03-18 00:00:00

Second Interim Table

VendorName	InvoiceNumber	InvoiceDate	LineItemAmount
Blue Cross	547480102	2016-04-01 00:00:00	224.00
Cardinal Business Media, Inc.	134116	2016-03-28 00:00:00	90.36
Data Reproductions Corp	39104	2016-03-10 00:00:00	85.31
Federal Express Corporation	263253270	2016-03-22 00:00:00	67.92
Federal Express Corporation	263253268	2016-03-21 00:00:00	59.97
Federal Express Corporation	963253264	2016-03-18 00:00:00	52.25

Final Table

VendorName	InvoiceNumber	InvoiceDate	LineItemAmount	AccountDescription
Blue Cross	547480102	2016-04-01 00:00:00	224.00	Group Insurance
Cardinal Business Media, Inc.	134116	2016-03-28 00:00:00	90.36	Direct Mail Advertising
Data Reproductions Corp	39104	2016-03-10 00:00:00	85.31	Book Printing Costs
Federal Express Corporation	263253270	2016-03-22 00:00:00	67.92	Freight
Federal Express Corporation	263253268	2016-03-21 00:00:00	59.97	Freight
*/
