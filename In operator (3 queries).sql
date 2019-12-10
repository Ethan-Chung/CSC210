--In Operator
--source: https://www.w3schools.com/sql/sql_in.asp
--abstract: I am looking at the sample queries and creating my own

--Selects all columns from Vendors where the column VendorState has the value 'CA'
Select * from ap.dbo.vendors 
where VendorState In ('CA')

--sample output
--VendorID	VendorName	VendorAddress1	VendorAddress2	VendorCity	VendorState	VendorZipCode	VendorPhone	VendorContactLName	VendorContactFName	DefaultTermsID	DefaultAccountNo
--4	Jobtrak	1990 Westwood Blvd Ste 260	NULL	Los Angeles	CA	90025	(800) 555-8725	Quinn	Kenzie	3	572
--6	California Chamber Of Commerce	3255 Ramos Cir	NULL	Sacramento	CA	95827	(916) 555-6670	Mauro	Anton	3	572
--7	Towne Advertiser's Mailing Svcs	Kevin Minder	3441 W Macarthur Blvd	Santa Ana	CA	92704	NULL	Maegen	Ted	3	540
--8	BFI Industries	PO Box 9369	NULL	Fresno	CA	93792	(559) 555-1551	Kaleigh	Erick	3	521
--9	Pacific Gas & Electric	Box 52001	NULL	San Francisco	CA	94152	(800) 555-6081	Anthoni	Kaitlyn	3	521

--Selects all columns from Vendors where the column VendorState does not have the value 'WA'
Select * from ap.dbo.Vendors 
where VendorState not in ('WA')

--sample output
--VendorID	VendorName	VendorAddress1	VendorAddress2	VendorCity	VendorState	VendorZipCode	VendorPhone	VendorContactLName	VendorContactFName	DefaultTermsID	DefaultAccountNo
--10	Robbins Mobile Lock And Key	4669 N Fresno	NULL	Fresno	CA	93726	(559) 555-9375	Leigh	Bill	2	523
--11	Bill Marvin Electric Inc	4583 E Home	NULL	Fresno	CA	93703	(559) 555-5106	Hostlery	Kaitlin	2	523
--12	City Of Fresno	PO Box 2069	NULL	Fresno	CA	93718	(559) 555-9999	Mayte	Kendall	3	574
--13	Golden Eagle Insurance Co	PO Box 85826	NULL	San Diego	CA	92186	NULL	Blanca	Korah	3	590

--Selects all columns from Vendor where the values in InvoiceNumber are the same as in the database Invoice Archive
Select * FROM ap.dbo.Invoices 
where InvoiceNumber in (
Select InvoiceNumber from ap.dbo.InvoiceArchive)

--sample output
--InvoiceID	VendorID	InvoiceNumber	InvoiceDate	InvoiceTotal	PaymentTotal	CreditTotal	TermsID	InvoiceDueDate	PaymentDate

--there were no similarities 
