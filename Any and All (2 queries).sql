--Any and All

--Select Vendor Name from ap.dbo.Vendors
Select VendorName from ap.dbo.Vendors
--Returns data where VendorID has any value from the table Invoices has a Payment Total bigger than 3000 
Where VendorID = Any (Select VendorID from ap.dbo.Invoices 
where PaymentTotal > 3000);

--sample output
--VendorName
--Data Reproductions Corp
--Bertelsmann Industry Svcs. Inc
--Digital Dreamworks
--Malloy Lithographing Inc
--Yesmed, Inc
--United Parcel Service

--Selects VendorName from Vendors
Select VendorName from ap.dbo.Vendors
--Returns data where VendorID has all values from the table Invoices has a PaymentTotal = 10) 
Where VendorID = ALL (Select VendorID from ap.dbo.Invoices 
where PaymentTotal = 10);

--sample output 
--VendorName
--Federal Express Corporation




