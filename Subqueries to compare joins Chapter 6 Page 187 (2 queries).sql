--Subqueries to compare joins
--source: Murach's SQL 2016 Chapter 6 Page 186
--abstract: I am looking at the example queries and explaining what they do	

--A query that uses an inner join

--Select the column InvoiceNumber, InvoiceDate, and InvoiceTotal
Select InvoiceNumber, InvoiceDate, InvoiceTotal
--Selects the table Invoices and joins the table Vendors
from ap.dbo.Invoices Join ap.dbo.Vendors
	--Joins the data where VendorID from the table Invoices is the same as VendorID from the table Vendors
	on Invoices.VendorID = Vendors.VendorID
--Selects the data where VendorState has the data 'CA' in it
Where VendorState = 'CA'
--orders the data by InvoiceDate
Order by InvoiceDate

/*
Sample Output

InvoiceNumber	InvoiceDate	InvoiceTotal
125520-1	2015-12-24 00:00:00	95.00
97/488	2015-12-24 00:00:00	601.95
111-92R-10096	2015-12-30 00:00:00	16.33
*/

--The same query restarted with a subquery

--Select the column InvoiceNumber, InvoiceDate, and InvoiceTotal
Select InvoiceNumber, InvoiceDate, InvoiceTotal
--Selects the table Invoices from the database AP
from ap.dbo.Invoices 
--Selects data where VendorID in
Where VendorID in
	--Subquery that selects the column VendorID
	(Select VendorID 
	--From the table Vendors
	From ap.dbo.Vendors
	--Selects the data where VendorState has the value 'CA' in ita
	Where Vendorstate = 'CA')
--orders the data by InvoiceDate
Order by InvoiceDate

/*
sample output

InvoiceNumber	InvoiceDate	InvoiceTotal
125520-1	2015-12-24 00:00:00	95.00
97/488	2015-12-24 00:00:00	601.95
111-92R-10096	2015-12-30 00:00:00	16.33
*/
