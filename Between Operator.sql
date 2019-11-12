--Between 
-- Source: https://www.w3schools.com/sql/sql_between.asp
-- Abstract: I am looking at the sample queries and creating my own query

--Selects all columns from Invoices where the values in InvoiceDate are between '2016-01-08 00:00:00' and '2016-01-21 00:00:00'
Select * from ap.dbo.Invoices 
where InvoiceDate between '2016-01-08 00:00:00' and '2016-01-21 00:00:00';

--output sample
--InvoiceID	VendorID	InvoiceNumber	InvoiceDate	InvoiceTotal	PaymentTotal	CreditTotal	TermsID	InvoiceDueDate	PaymentDate
--20	115	24863706	2016-01-10 00:00:00	6.00	6.00	0.00	4	2016-02-19 00:00:00	2016-02-15 00:00:00
--21	119	10843	2016-01-11 00:00:00	4901.26	4901.26	0.00	2	2016-01-31 00:00:00	2016-01-29 00:00:00
--22	123	963253235	2016-01-11 00:00:00	108.25	108.25	0.00	3	2016-02-10 00:00:00	2016-02-09 00:00:00
--23	97	21-4923721	2016-01-13 00:00:00	9.95	9.95	0.00	2	2016-02-02 00:00:00	2016-01-28 00:00:00
--24	113	77290	2016-01-13 00:00:00	1750.00	1750.00	0.00	5	2016-03-02 00:00:00	2016-03-05 00:00:00
--25	123	963253246	2016-01-13 00:00:00	129.00	129.00	0.00	3	2016-02-12 00:00:00	2016-02-09 00:00:00
--26	123	4-342-8069	2016-01-14 00:00:00	10.00	10.00	0.00	3	2016-02-13 00:00:00	2016-02-13 00:00:00
--27	88	972110	2016-01-15 00:00:00	207.78	207.78	0.00	1	2016-01-25 00:00:00	2016-01-27 00:00:00
--28	123	963253263	2016-01-16 00:00:00	109.50	109.50	0.00	3	2016-02-15 00:00:00	2016-02-10 00:00:00
--29	108	121897	2016-01-19 00:00:00	450.00	450.00	0.00	4	2016-02-28 00:00:00	2016-03-03 00:00:00
--30	123	1-200-5164	2016-01-20 00:00:00	63.40	63.40	0.00	3	2016-02-19 00:00:00	2016-02-24 00:00:00
--31	104	P02-3772	2016-01-21 00:00:00	7125.34	7125.34	0.00	3	2016-02-20 00:00:00	2016-02-24 00:00:00
--32	121	97/486	2016-01-21 00:00:00	953.10	953.10	0.00	3	2016-02-20 00:00:00	2016-02-22 00:00:00

--Selects all columns from Invoices where the values in InvoiceDate are not between '2016-01-08 00:00:00' and '2016-01-21 00:00:00'
Select * from ap.dbo.Invoices 
where InvoiceDate not between '2016-01-08 00:00:00' and '2016-01-21 00:00:00';

--output sample
--I-nvoiceID	VendorID	InvoiceNumber	InvoiceDate	InvoiceTotal	PaymentTotal	CreditTotal	TermsID	InvoiceDueDate	PaymentDate
--1	122	989319-457	2015-12-08 00:00:00	3813.33	3813.33	0.00	3	2016-01-08 00:00:00	2016-01-07 00:00:00
--2	123	263253241	2015-12-10 00:00:00	40.20	40.20	0.00	3	2016-01-10 00:00:00	2016-01-14 00:00:00
--3	123	963253234	2015-12-13 00:00:00	138.75	138.75	0.00	3	2016-01-13 00:00:00	2016-01-09 00:00:00
--4	123	2-000-2993	2015-12-16 00:00:00	144.70	144.70	0.00	3	2016-01-16 00:00:00	2016-01-12 00:00:00
--5	123	963253251	2015-12-16 00:00:00	15.50	15.50	0.00	3	2016-01-16 00:00:00	2016-01-11 00:00:00
--6	123	963253261	2015-12-16 00:00:00	42.75	42.75	0.00	3	2016-01-16 00:00:00	2016-01-21 00:00:00
--7	123	963253237	2015-12-21 00:00:00	172.50	172.50	0.00	3	2016-01-21 00:00:00	2016-01-22 00:00:00
--8	89	125520-1	2015-12-24 00:00:00	95.00	95.00	0.00	1	2016-01-04 00:00:00	2016-01-01 00:00:00
--9	121	97/488	2015-12-24 00:00:00	601.95	601.95	0.00	3	2016-01-24 00:00:00	2016-01-21 00:00:00
--10	123	263253250	2015-12-24 00:00:00	42.67	42.67	0.00	3	2016-01-24 00:00:00	2016-01-22 00:00:00
--11	123	963253262	2015-12-25 00:00:00	42.50	42.50	0.00	3	2016-01-25 00:00:00	2016-01-20 00:00:00
--12	96	I77271-O01	2015-12-26 00:00:00	662.00	662.00	0.00	2	2016-01-16 00:00:00	2016-01-13 00:00:00
--13	95	111-92R-10096	2015-12-30 00:00:00	16.33	16.33	0.00	2	2016-01-20 00:00:00	2016-01-23 00:00:00
--14	115	25022117	2016-01-01 00:00:00	6.00	6.00	0.00	4	2016-02-10 00:00:00	2016-02-10 00:00:00
--15	48	P02-88D77S7	2016-01-03 00:00:00	856.92	856.92	0.00	3	2016-02-02 00:00:00	2016-01-30 00:00:00
--16	97	21-4748363	2016-01-03 00:00:00	9.95	9.95	0.00	2	2016-01-23 00:00:00	2016-01-22 00:00:00
--17	123	4-321-2596	2016-01-05 00:00:00	10.00	10.00	0.00	3	2016-02-04 00:00:00	2016-02-05 00:00:00
--18	123	963253242	2016-01-06 00:00:00	104.00	104.00	0.00	3	2016-02-05 00:00:00	2016-02-05 00:00:00
--19	34	QP58872	2016-01-07 00:00:00	116.54	116.54	0.00	1	2016-01-17 00:00:00	2016-01-19 00:00:00
--33	105	94007005	2016-01-23 00:00:00	220.00	220.00	0.00	3	2016-02-22 00:00:00	2016-02-26 00:00:00
--34	123	963253232	2016-01-23 00:00:00	127.75	127.75	0.00	3	2016-02-22 00:00:00	2016-02-18 00:00:00
--35	107	RTR-72-3662-X	2016-01-25 00:00:00	1600.00	1600.00	0.00	4	2016-03-04 00:00:00	2016-03-09 00:00:00
--36	121	97/465	2016-01-25 00:00:00	565.15	565.15	0.00	3	2016-02-24 00:00:00	2016-02-24 00:00:00
--37	123	963253260	2016-01-25 00:00:00	36.00	36.00	0.00	3	2016-02-24 00:00:00	2016-02-26 00:00:00
--38	123	963253272	2016-01-26 00:00:00	61.50	61.50	0.00	3	2016-02-25 00:00:00	2016-02-28 00:00:00


--Selects all columns from Invoices where the values in InvoiceDate are between '2016-01-08 00:00:00' and '2016-01-21 00:00:00' 
Select * from ap.dbo.Invoices 
where InvoiceDate between '2016-01-08 00:00:00' and '2016-01-21 00:00:00'
--Does not select values 20, 23, and 31 in InvoiceID
and not InvoiceID in (20,23,31);

--sample output
--InvoiceID	VendorID	InvoiceNumber	InvoiceDate	InvoiceTotal	PaymentTotal	CreditTotal	TermsID	InvoiceDueDate	PaymentDate
--21	119	10843	2016-01-11 00:00:00	4901.26	4901.26	0.00	2	2016-01-31 00:00:00	2016-01-29 00:00:00
--22	123	963253235	2016-01-11 00:00:00	108.25	108.25	0.00	3	2016-02-10 00:00:00	2016-02-09 00:00:00
--24	113	77290	2016-01-13 00:00:00	1750.00	1750.00	0.00	5	2016-03-02 00:00:00	2016-03-05 00:00:00
--25	123	963253246	2016-01-13 00:00:00	129.00	129.00	0.00	3	2016-02-12 00:00:00	2016-02-09 00:00:00
--26	123	4-342-8069	2016-01-14 00:00:00	10.00	10.00	0.00	3	2016-02-13 00:00:00	2016-02-13 00:00:00
--27	88	972110	2016-01-15 00:00:00	207.78	207.78	0.00	1	2016-01-25 00:00:00	2016-01-27 00:00:00
--28	123	963253263	2016-01-16 00:00:00	109.50	109.50	0.00	3	2016-02-15 00:00:00	2016-02-10 00:00:00
--29	108	121897	2016-01-19 00:00:00	450.00	450.00	0.00	4	2016-02-28 00:00:00	2016-03-03 00:00:00
--30	123	1-200-5164	2016-01-20 00:00:00	63.40	63.40	0.00	3	2016-02-19 00:00:00	2016-02-24 00:00:00
--32	121	97/486	2016-01-21 00:00:00	953.10	953.10	0.00	3	2016-02-20 00:00:00	2016-02-22 00:00:00
