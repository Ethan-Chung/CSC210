--joins

--selects InoviceID from Invoices, VendorName from vendors, and InvoiceDate from Invoices. These are columns that are related with each other 
Select Invoices.InvoiceID, Vendors.VendorName, Invoices.InvoiceDate
--selects the database Invoices. Invoices also has a relationship with Vendors and share the column 'VendorID'
from ap.dbo.invoices
--Inner Join joins the database Invoices and Vendors on VendorID since they both are related with each other and share the same column
Inner Join ap.dbo.vendors On Invoices.VendorID=Vendors.VendorID
--orders the data by InvoiceID
order by InvoiceID;


--sample output
--InvoiceID	VendorName	InvoiceDate
--1		United Parcel Service	2015-12-08 00:00:00
--2		Federal Express Corporation	2015-12-10 00:00:00
--3		Federal Express Corporation	2015-12-13 00:00:00
--4		Federal Express Corporation	2015-12-16 00:00:00
--5		Federal Express Corporation	2015-12-16 00:00:00
--6		Federal Express Corporation	2015-12-16 00:00:00
--7		Federal Express Corporation	2015-12-21 00:00:00
--8		Evans Executone Inc	2015-12-24 00:00:00
--9	    Zylka Design	2015-12-24 00:00:00
--10	Federal Express Corporation	2015-12-24 00:00:00
--11	Federal Express Corporation	2015-12-25 00:00:00
--12	Wells Fargo Bank	2015-12-26 00:00:00
--13	Pacific Bell	2015-12-30 00:00:00
--14	Roadway Package System, Inc	2016-01-01 00:00:00
--15	Fresno County Tax Collector	2016-01-03 00:00:00
--16	Compuserve	2016-01-03 00:00:00
--17	Federal Express Corporation	2016-01-05 00:00:00
--18	Federal Express Corporation	2016-01-06 00:00:00
--19	IBM	2016-01-07 00:00:00
--20	Roadway Package System, Inc	2016-01-10 00:00:00

--Selects vendor name from vendors and invoiceID from invoices
Select vendors.vendorname, invoices.invoiceID
--selects the database Vendors as Table 1
from ap.dbo.Vendors
--Left joins invoices on VendorId from both tables. This means it takes the names from vendorsname and tries to find the InoviceID for the name. 
--if there is no value found, it will return a Null Value
Left Join ap.dbo.invoices on Vendors.vendorid = invoices.vendorID
--Orders the data by VendorName
Order by vendors.vendorname


--sample output
--vendorname	invoiceID
--Abbey Office Furnishings	82
--American Booksellers Assoc	NULL
--American Express	NULL
--ASC Signs	NULL
--Ascom Hasler Mailing Systems	NULL
--AT&T	NULL
--Aztek Label	NULL

--Selects InvoiceID from Invoices and VendorName from Vendors
Select invoices.invoiceID, vendors.vendorName
--from database Invoices
from ap.dbo.Invoices
--Right Joins vendors with Invoices on VendorID. This tries to match the InvoiceID with the VendorName. 
--If there is no InvoiceID that matches with the vendorname then it will return a NULL value
Right Join ap.dbo.Vendors on invoices.vendorID = Vendors.VendorID
--order by InvoiceID
Order by Invoices.invoiceID

--sample output 
--invoiceID	vendorName
--NULL	Unocal
--NULL	Dataforms/West
--1	United Parcel Service
--2	Federal Express Corporation
--3	Federal Express Corporation
--4	Federal Express Corporation