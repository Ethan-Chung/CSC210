-- Select Top Rows
--source: https://www.w3schools.com/sql/sql_top.asp
--abstract: I am looking at the sample queries and creating my own

--This selects the Top 50 rows from database Invoices
SELECT TOP 50 * from ap.dbo.Invoices; 

--sample output
--InvoiceID	VendorID	InvoiceNumber	InvoiceDate	InvoiceTotal	PaymentTotal	CreditTotal	TermsID	InvoiceDueDate	PaymentDate
--1	122	989319-457	2015-12-08 00:00:00	3813.33	3813.33	0.00	3	2016-01-08 00:00:00	2016-01-07 00:00:00
--2	123	263253241	2015-12-10 00:00:00	40.20	40.20	0.00	3	2016-01-10 00:00:00	2016-01-14 00:00:00
--3	123	963253234	2015-12-13 00:00:00	138.75	138.75	0.00	3	2016-01-13 00:00:00	2016-01-09 00:00:00
--4	123	2-000-2993	2015-12-16 00:00:00	144.70	144.70	0.00	3	2016-01-16 00:00:00	2016-01-12 00:00:00
--5	123	963253251	2015-12-16 00:00:00	15.50	15.50	0.00	3	2016-01-16 00:00:00	2016-01-11 00:00:00
--6	123	963253261	2015-12-16 00:00:00	42.75	42.75	0.00	3	2016-01-16 00:00:00	2016-01-21 00:00:00
--...
--50 57	547479217	2016-02-07 00:00:00	116.00	116.00	0.00	3	2016-03-07 00:00:00	2016-03-07 00:00:00


--This selects all columns from Invoices where the column InvoiceID is less than or equal too 35
SELECT * FROM ap.dbo.Invoices 
WHERE InvoiceID <= 35; 

--sample output
--InvoiceID	VendorID	InvoiceNumber	InvoiceDate	InvoiceTotal	PaymentTotal	CreditTotal	TermsID	InvoiceDueDate	PaymentDate
--1	122	989319-457	2015-12-08 00:00:00	3813.33	3813.33	0.00	3	2016-01-08 00:00:00	2016-01-07 00:00:00
--2	123	263253241	2015-12-10 00:00:00	40.20	40.20	0.00	3	2016-01-10 00:00:00	2016-01-14 00:00:00
--3	123	963253234	2015-12-13 00:00:00	138.75	138.75	0.00	3	2016-01-13 00:00:00	2016-01-09 00:00:00
--4	123	2-000-2993	2015-12-16 00:00:00	144.70	144.70	0.00	3	2016-01-16 00:00:00	2016-01-12 00:00:00
--...
--35 107	RTR-72-3662-X	2016-01-25 00:00:00	1600.00	1600.00	0.00	4	2016-03-04 00:00:00	2016-03-09 00:00:00

--Selects the top 50 Percent rows from Invoices
SELECT TOP 50 PERCENT * 
FROM ap.dbo.Invoices;

--sample output
--InvoiceID	VendorID	InvoiceNumber	InvoiceDate	InvoiceTotal	PaymentTotal	CreditTotal	TermsID	InvoiceDueDate	PaymentDate
--1	122	989319-457	2015-12-08 00:00:00	3813.33	3813.33	0.00	3	2016-01-08 00:00:00	2016-01-07 00:00:00
--2	123	263253241	2015-12-10 00:00:00	40.20	40.20	0.00	3	2016-01-10 00:00:00	2016-01-14 00:00:00
--3	123	963253234	2015-12-13 00:00:00	138.75	138.75	0.00	3	2016-01-13 00:00:00	2016-01-09 00:00:00
--4	123	2-000-2993	2015-12-16 00:00:00	144.70	144.70	0.00	3	2016-01-16 00:00:00	2016-01-12 00:00:00
--...
--57 103	75C-90227	2016-02-11 00:00:00	1367.50	1367.50	0.00	5	2016-03-31 00:00:00	2016-03-31 00:00:00


--Selects top 3 rows from Invoices where VenderID is 123
SELECT TOP 3 *         
FROM ap.dbo.Invoices
Where VendorID = 123

--sample output
--InvoiceID	VendorID	InvoiceNumber	InvoiceDate	InvoiceTotal	PaymentTotal	CreditTotal	TermsID	InvoiceDueDate	PaymentDate
--2	123	263253241	2015-12-10 00:00:00	40.20	40.20	0.00	3	2016-01-10 00:00:00	2016-01-14 00:00:00
--3	123	963253234	2015-12-13 00:00:00	138.75	138.75	0.00	3	2016-01-13 00:00:00	2016-01-09 00:00:00
--4	123	2-000-2993	2015-12-16 00:00:00	144.70	144.70	0.00	3	2016-01-16 00:00:00	2016-01-12 00:00:00
