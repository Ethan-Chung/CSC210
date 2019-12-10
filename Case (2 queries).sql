--Case

--Select VendorID and Payment Total
Select VendorID, PaymentTotal,
--Case statement goes through conditions and returns a value when the condition is met
CASE
	-- If PaymentTotal is equal to zero print "The PaymentTotal is 0"
	When PaymentTotal = 0 Then 'The PaymentTotal is 0'
	-- If PaymentTotal is greater than 2000 then print "The PaymentTotal is greater than 2000"
	When PaymentTotal > 2000 then 'The PaymentTotal is greater than 2000'
	-- Anything else print "The PaymentTotal is under 2000"
	else 'The PaymentTotal is under 2000'
--Creates a new column called PaymentText
End As PaymentText
--Selects from the database Invoices
From ap.dbo.Invoices

--sample output
--VendorID	PaymentTotal	PaymentText
--122	3813.33	The PaymentTotal is greater than 2000
--123	40.20	The PaymentTotal is under 2000
--123	138.75	The PaymentTotal is under 2000
--123	144.70	The PaymentTotal is under 2000
--123	15.50	The PaymentTotal is under 2000



--Selects VendorName, VendorCity, and VendorState
Select VendorName, VendorCity, VendorState
--Selects from table Vendors
from ap.dbo.Vendors
--Order by the case
order by
(Case
	-- If there is a NULL value in VendorCity then order by VendorState
	When VendorCity IS Null Then VendorState
	-- If there is not a Null Value, Order by VendorCity
	Else VendorCity
--Tells the case to end
End);


--sample output
--VendorName	VendorCity	VendorState
--Blue Shield of California	Anaheim	CA
--Aztek Label	Anaheim	CA
--Malloy Lithographing Inc	Ann Arbor	MI
--Data Reproductions Corp	Auburn Hills	MI

