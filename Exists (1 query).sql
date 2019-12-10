-- Exists

--Selects VendorName from the table Vendors
Select VendorName from ap.dbo.Vendors
--Where the price that exists is greater than 2500 from the table Invoices) 
Where Exists (Select InvoiceID from ap.dbo.Invoices
Where Invoices.InvoiceID = Vendors.VendorID And Invoices.InvoiceTotal > 2500);

--sample output
--VendorName
--US Postal Service
--The Library Ltd
--Enterprise Communications Inc
--Custom Printing Company
--Capital Resource Credit
