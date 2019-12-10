--Join
--Source: Murach's SQL 2016 Chapter 4 Page 127
--Abstract: I am explaining the SQL queries

--Selects the column InvoiceNumber and VendorName
Select InvoiceNumber, VendorName
--From the table Vendor and Invoices from the database AP and Joins them together
From ap.dbo.Vendors Join ap.dbo.Invoices
	--Joins the data that statisfy when VendorID is equal to VendorID
	On Vendors.VendorID = Invoices.VendorID

--sample output
/*
InvoiceNumber	VendorName
QP58872	IBM
Q545443	IBM
547481328	Blue Cross
547479217	Blue Cross
547480102	Blue Cross
P02-88D77S7	Fresno County Tax Collector
40318	Data Reproductions Corp
*/
