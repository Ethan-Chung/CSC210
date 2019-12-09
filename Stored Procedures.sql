--Stored Procedure
--Source:https://www.w3schools.com/sql/sql_stored_procedures.asp
--Abstract: I wrote looked at the examples in W3schools and then I create my own query

--Creates a stored procedure named SelectAllVendors that selects all records from the Vendors table
Create Procedure SelectAllVendors As
Select * from ap.dbo.vendors
--sends these statements as one set of statements to the SQL server
Go;

--Sample Output

--When you Execute SelectAllVendors it will execute the stored procedure
Exec SelectAllVendors;

/*
VendorID	VendorName	VendorAddress1	VendorAddress2
1	US Postal Service	Attn:  Supt. Window Services	PO Box 7005
2	National Information Data Ctr	PO Box 96621	NULL
3	Register of Copyrights	Library Of Congress	NULL
4	Jobtrak	1990 Westwood Blvd Ste 260	NULL
5	Newbrige Book Clubs	3000 Cindel Drive	NULL
6	California Chamber Of Commerce	3255 Ramos Cir	NULL 
*/



