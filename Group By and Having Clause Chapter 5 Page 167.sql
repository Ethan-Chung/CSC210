--Group by and Having Clause
--Source: Murach's SQL 2016 Chapter 5 Page 167
--Abstract: I am looking at the example queries and explaining what they do

--Selects the columns VendorState, VendorCity, Count Everything as InvoiceQTY, Average the data in the column InvoiceTotal as InvoiceAvg
Select VendorState, VendorCity, Count(*) AS InvoiceQTY, 
	AVG(InvoiceTotal) As InvoiceAvg
--Joins the table Invoices and Vendors from the database AP
From ap.dbo.invoices join ap.dbo.Vendors
	--Joins the data when VendorID from the table Invoices and VendorID from the table Vendors have the same data
	On Invoices.VendorID = Vendors.VendorID
--Groups the data by VendorState and VendorCity
Group By VendorState, VendorCity
--Orders the data by VendorState and VendorCity
Order By VendorState, VendorCity

/*
Sample Output
VendorState	VendorCity	InvoiceQTY	InvoiceAvg
AZ	Phoenix	1	662.00
CA	Fresno	19	1208.7457
CA	Los Angeles	1	503.20
CA	Oxnard	3	188.00
CA	Pasadena	5	196.12
CA	Sacramento	7	253.0014
*/

--Selects the columns VendorState, VendorCity, Count Everything as InvoiceQTY, Average the data in the column InvoiceTotal as InvoiceAvg
Select VendorState, VendorCity, Count(*) AS InvoiceQTY, 
	AVG(InvoiceTotal) As InvoiceAvg
--Joins the table Invoices and Vendors from the database AP
From ap.dbo.invoices join ap.dbo.Vendors
	--Joins the data when VendorID from the table Invoices and VendorID from the table Vendors have the same data
	On Invoices.VendorID = Vendors.VendorID
--Groups the data by VendorState and VendorCity
Group By VendorState, VendorCity
--Limits the groupsto those with two or more invoices
Having Count(*) >= 2
--Orders the data by VendorState and VendorCity
Order By VendorState, VendorCity

/*
Sample Output
VendorState	VendorCity	InvoiceQTY	InvoiceAvg
CA	Fresno	19	1208.7457
CA	Oxnard	3	188.00
CA	Pasadena	5	196.12
CA	Sacramento	7	253.0014
CA	San Francisco	3	1211.04
MI	Ann Arbor	5	23978.482
*/ 

