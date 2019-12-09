-- Having Clause

--Selects VEndorId and counts the amount of states there are and returns the result in a new column called amount
Select Count(VendorID) As Amount, VendorState from ap.dbo.Vendors
--Groups the data by VendorState
Group by VendorState
--Only returns the data that has more than 3 states
Having Count(VendorID) > 3;

--sample output
--Amount	VendorState
--75 CA
--4	NJ
--7	OH

--Selects VendorName and counts InvoiceID from Invoices and returns the amount in a new column called AmountofInvoices
Select vendors.vendorName, Count(ap.dbo.Invoices.InvoiceID) as AmountofInvoices
from (ap.dbo.Invoices
--Inner Joins Vendors on VendorID which returns all rows from each table where one table's key is related to another table's key
Inner Join ap.dbo.vendors On Invoices.VendorID = Vendors.VendorID)
--groups data by VendorName
Group By VendorName
--Only returns the VendorName that has more than 5 InvoiceID
Having Count(Invoices.InvoiceID) > 5

--sample output
--vendorName	AmountofInvoices
--Federal Express Corporation	47
--Pacific Bell	6
--United Parcel Service	9
--Zylka Design	8