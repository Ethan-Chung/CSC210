--String expressions
--source: Murach's SQL 2016 Chapter 3 page 95
--abstract: I am explaining the sql queries from the book

--Selects VendorCity, VendorState, and adds the values from VendorCity and VendorState 
Select VendorCity, VendorState, VendorCity + VendorState
--Selects the columns from the table Vendors
From ap.dbo.vendors

--sample output
/*
VendorCity	VendorState	(No column name)
Madison	WI	MadisonWI
Washington	DC	WashingtonDC
Washington	DC	WashingtonDC
Los Angeles	CA	Los AngelesCA
*/

--Selects the column VendorName, Then adds VendorCity with a comma after, VendorState with a space, and VendorZipCode, Then names the new column Address
Select VendorName, VendorCity + ', ' + VendorState + ' ' + VendorZipCode As Address
--Selects the columns from the table Vendors
From ap.dbo.vendors

--sample output
/*
VendorName	Address
US Postal Service	Madison, WI 53707
National Information Data Ctr	Washington, DC 20090
Register of Copyrights	Washington, DC 20559
Jobtrak	Los Angeles, CA 90025
Newbrige Book Clubs	Washington, NJ 07882
*/

--Selects the column VendorName and adds " 's Adress: " to it. Then Selects the column Vendorcity and adds a comma, VendorState and adds a space and adds VendorZipcode
Select VendorName + '''s Address: ', VendorCity + ', ' + VendorState + ' ' + VendorZipCode
--Selects the column from the table Vendors
From ap.dbo.Vendors

--sample output
/*
(No column name)	(No column name)
US Postal Service's Address: 	Madison, WI 53707
National Information Data Ctr's Address: 	Washington, DC 20090
Register of Copyrights's Address: 	Washington, DC 20559
Jobtrak's Address: 	Los Angeles, CA 90025
*/

