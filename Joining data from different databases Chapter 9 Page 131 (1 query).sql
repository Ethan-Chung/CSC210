--Join with tables from different database
--source: Murach's SQL 2016 Chapter 4 Page 131
--Abstract: I am looking at the example queries and creating my own

--Select the columns VendorName, CustLastName, CustFirstName, VendorState and names it State, VendorCity and names the column City
Select VendorName, CustLastName, CustFirstName, 
	VendorState As State, Vendorcity As City
--Selects the data from the table Vendors from the database Ap and names the table Vendors
From Ap.dbo.vendors As Vendors
	--Joins the table Customers from the database ProductOrders and names the table Customers to Vendors
	Join ProductOrders.dbo.Customers As Customers
	--Joins the data where VEndorZipCode from Vendors is the same as CustZip from Customers
	On Vendors.VendorZipCode = Customers.CustZip 
--Orders the data by State and City
Order By State, City

/* 
Sample Output

VendorName	CustLastName	CustFirstName	State	City
Wells Fargo Bank	Marissa	Kyle	AZ	Phoenix
Aztek Label	Irvin	Ania	CA	Anaheim
Gary McKeighan Insurance	Neftaly	Thalia	CA	Fresno
Gary McKeighan Insurance	Holbrooke	Rashad	CA	Fresno
Shields Design	Damien	Deborah	CA	Fresno
*/
