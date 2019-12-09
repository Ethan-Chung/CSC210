--Grouping Function
--Source: Murach's SQL 2016 Chapter 9 Page 291
--Abstract: I am looking at the example queries and explaining what they do 

--Selects the data that fits with the case
Select
	--Adds conditions
	Case 
		--Grouping is used to establish Null Values. If Grouping returns the value 1 then it will return 'All'
		When Grouping(VendorState) = 1 Then 'All'
		--Any other value, it will return the value in the column VendorState
		Else VendorState
	--Ends the case and creates a column called VendorState
	End As VendorState, 
	--Adds another condition
	Case 
		--When grouping returns a 1 from the column VendorCity, then it will return 'All'
		When Grouping(VendorCity) = 1 Then 'All'
		--Any other value, it will return the value in the column VendorCity
		Else VendorCity
	--Ends the case and creates a column called VendorCity
	End As VendorCity,
	--Counts all of the data that matches with the VendorState and Vendor City and creates a column called QTYVendors
	Count(*) as QTYVendors
--Selects all the data from the table Vendors in the database AP
From ap.dbo.Vendors
--Only returns the data where there are the values 'IA', and 'NJ' in the VendorState column
Where VendorState IN ('IA', 'NJ')
--Group the data by VendorState and VendorCity with rollup. Rollup groups the data and assumes there is a hiearchy and groups the data as such. 
--In this case, VendorState > VendorCity
Group By VendorState, VendorCity With Rollup
--Orders the data by VendorState in Desc order, and VendorCity in Desc order
Order By VendorState Desc, VendorCity Desc;

/* 
Sample Output

VendorState	VendorCity	QTYVendors
NJ	Washington	1
NJ	Fairfield	1
NJ	East Brunswick	2
NJ	All	4
*/

