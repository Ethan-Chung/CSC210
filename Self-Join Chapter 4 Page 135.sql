--Self-Join
--Source: Murach's SQL 2016 Chapter 4 Page 135
--Abstract: I am looking at the example queries and creating my own

--Select Distinct columns Vendors1.Vendor, Vendor1.VendorCity, and Vendors1.VendorState. Distinct keyword eliminate duplicate rows
Select Distinct Vendors1.VendorName, Vendors1.VendorCity, 
	Vendors1.VendorState
--Selects the data from the table Vendors and names it Vendor1 and joins the table Vendors and names it Vendor2
From ap.dbo.Vendors As Vendors1 Join ap.dbo.Vendors As Vendors2
	--Joins the data when VendorCity from Vendor1 is the same as VendorCity from Vendors2
	On (Vendors1.VendorCity = Vendors2.VendorCity) And 
	--Joins the data when VendorState from Vendors1 is the same as VendorState from Vendors2
		(Vendors1.VendorState = Vendors2.VendorState) And 
	--Compares the data VendorID from Vendors1 and VendorID from Vendors2
		(Vendors1.VendorID <> Vendors2.VendorID)
--Orders the data by Vendors1.VendorState and Vendors1.VendorCity
Order By Vendors1.VendorState, Vendors1.VendorCity

/* 
Sample Output

VendorName	VendorCity	VendorState
AT&T	Phoenix	AZ
Computer Library	Phoenix	AZ
Wells Fargo Bank	Phoenix	AZ
Aztek Label	Anaheim	CA
Blue Shield of California	Anaheim	CA
*/ 