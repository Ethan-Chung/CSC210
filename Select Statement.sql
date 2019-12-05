--Select Statement
--Source: https://www.w3schools.com/sql/sql_select.asp
--Abstract: I am looking at the sample queries and creating my own

/* Selects all data in the Tables Vendors */
Select * from ap.dbo.vendors
/* Finds all the data in the Column Vendorcity that has Washington in it */
Where Vendorcity = 'Washington'
/* Order all the data by VendorID in decending order */
Order By VendorID desc;

--sample output
--VendorID	VendorName	VendorAddress1	VendorAddress2	VendorCity	VendorState	VendorZipCode	VendorPhone	VendorContactLName	VendorContactFName	DefaultTermsID	DefaultAccountNo
--82	Reiter's Scientific & Pro Books	2021 K Street Nw	NULL	Washington	DC	20006	(202) 555-5561	Rodolfo	Carlee	2	572
--24	Zee Medical Service Co	4221 W Sierra Madre #104	NULL	Washington	IA	52353	NULL	Hallie	Juliana	3	570
--5	Newbrige Book Clubs	3000 Cindel Drive	NULL	Washington	NJ	07882	(800) 555-9980	Marks	Michelle	4	394
--3	Register of Copyrights	Library Of Congress	NULL	Washington	DC	20559	NULL	Liana	Lukas	3	403
--2	National Information Data Ctr	PO Box 96621	NULL	Washington	DC	20090	(301) 555-8950	Irvin	Ania	3	540
