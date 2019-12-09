-- Union Function

--Selects column vendorID from the database Invoice Archive
Select VendorID from ap.dbo.InvoiceArchive 
-- Selects only distincts values from both tables InvoiceArchive and Invoices
Union
--Selects column VendorId from the database Invoices to union the data
Select VendorID from ap.dbo.Invoices
--Order's the data by Vendor ID
Order by VendorID;


--Sample Output
--VendorID
--34
--37
--48
--72
--80
--81

--Union ALL

--Selects column VendorID from the table InvoiceArchive
Select VendorID from ap.dbo.InvoiceArchive
-- Union only selects distinct values. Union All selects all values (even duplicates) from both tables
Union ALL
--Selects column VendorID from the table Invoices
Select VendorID from ap.dbo.Invoices
--Orders the data by VendorID in descending order
Order by VendorID desc;

--Sample Output
--VendorID
--123
--123
--123
--123
--123
--123
--123