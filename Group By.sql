--Group By

--Selects how many states there are from the tables Vendors and returns a new column with the amount of each state
Select Count(VendorID) as Amount, VendorState from ap.dbo.vendors
--Groups the data by VendorState
Group by VendorState

--Sample Output
--amount	VendorState
--3	AZ
--75 CA
--1	CT
--3	DC
--1	FL
--2	IA


--Select VendorName from Vendors, counts the amount of InvoiceID from each VendorName and makes a new column called AmountofOrders from the table Invoices
Select ap.dbo.vendors.VendorName, Count(InvoiceID) As AmountofOrders From ap.dbo.Invoices
--Left joins vendors on VendorID which returns all rows from the left table(VendorName) and joins the right table(Invoices) to it
Left Join ap.dbo.Vendors on ap.dbo.Invoices.VendorID = ap.dbo.Vendors.VendorID
--Groups the data by VendorName
Group by VendorName

--sample output
--VendorName	AmountofOrders
--Abbey Office Furnishings	1
--Bertelsmann Industry Svcs. Inc	1
--Blue Cross	3
--Cahners Publishing Company	1
--Cardinal Business Media, Inc.	2