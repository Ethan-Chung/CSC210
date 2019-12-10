--Order By clause
--Source: Murach's SQL 2016 Chapter 3 Page 117
--Abstract: I am looking at the example queries and creating my own

--Selects the column VendorName
Select VendorName,
	--Adds a comma after VendorCity a space after VendorState and adds VendorZipCode and creates a new column named Address
	VendorCity + ', ' + VendorState + ' ' + VendorZipCode As Address
--Selects the data from the table Vendors from the database AP
From ap.dbo.Vendors
--Orders the data by VendorName in ascending order
Order By VendorName

/*
Sample Output

VendorName	Address
Abbey Office Furnishings	Fresno, CA 93722
American Booksellers Assoc	Tarrytown, NY 10591
American Express	Los Angeles, CA 90096
ASC Signs	Fresno, CA 93703
*/ 

--Selects the column VendorName
Select VendorName,
	--Adds a comma after VendorCity a space after VendorState and adds VendorZipCode and creates a new column named Address
	VendorCity + ', ' + VendorState + ' ' + VendorZipCode As Address
--Selects the data from the table Vendors from the database AP
From ap.dbo.Vendors
--Orders the data by VendorName in descending order
Order By VendorName Desc

/* 
Sample Output

VendorName	Address
Zylka Design	Fresno, CA 93711
Zip Print & Copy Center	Fresno, CA 93777
Zee Medical Service Co	Washington, IA 52353
Yesmed, Inc	Fresno, CA 93718
*/

--Selects the column VendorName
Select VendorName,
	--Adds a comma after VendorCity a space after VendorState and adds VendorZipCode and creates a new column named Address
	VendorCity + ', ' + VendorState + ' ' + VendorZipCode As Address
--Selects the data from the table Vendors from the database AP
From ap.dbo.Vendors
--Orders the data by VendorState, then VendorCity, then VendorName in ascending order
Order By VendorState, VendorCity, VendorName

/* 
Sample Output

AT&T	Phoenix, AZ 85062
Computer Library	Phoenix, AZ 85023
Wells Fargo Bank	Phoenix, AZ 85038
Aztek Label	Anaheim, CA 92807
*/ 





