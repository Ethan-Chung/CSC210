--Offset and Fetch
--source: Murach's 2016 SQL Chapter 3 Page 121
--abstract: I am explaining the SQL queries in the book

--Selects the column VendorId and InvoiceTotal
Select VendorID, InvoiceTotal
--From the table Invoices in the database AP
From ap.dbo.Invoices
--Order the data by InvoiceTotal in decending order
Order by InvoiceTotal Desc
	--Specifies the number of rows that should be skipped before rows are returned 
	Offset 0 rows 
	--Fetches the first 5 rows of the table
	Fetch first 5 rows only

--sample output
/*
VendorID	InvoiceTotal
110	37966.19
110	26881.40
110	23517.58
72	21842.00
110	20551.18
*/

--Selects the column VendorName, VendorCity, VendorState, and VendorZipCode
Select VendorName, VendorCity, VendorState, VendorZipCode
--From the table Vendors in the database AP
From ap.dbo.Vendors
--Only selects the data where the column VendorState has the value 'CA'
Where VendorState = 'CA' 
--Orders the data by VendorCity
Order By VendorCity
	--Skips 10 rows
	Offset 10 Rows
	--Returns the next 10 rows of data
	Fetch Next 10 Rows Only

--sample output
/*
VendorName	VendorCity	VendorState	VendorZipCode
Robbins Mobile Lock And Key	Fresno	CA	93726
BFI Industries	Fresno	CA	93792
California Data Marketing	Fresno	CA	93721
Yale Industrial Trucks-Fresno	Fresno	CA	93706
*/

