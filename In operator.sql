--In Operator

Select * from ap.dbo.vendors --Selects all columns from Vendors where the column VendorState has the value 'CA'
where VendorState In ('CA')

Select * from ap.dbo.Vendors --Selects all columns from Vendors where the column VendorState does not have the value 'WA'
where VendorState not in ('WA')

Select * FROM ap.dbo.Invoices --Selects all columns from Vendor where the values in InvoiceNumber are the same as in the database Invoice Archive
where InvoiceNumber in (
Select InvoiceNumber from ap.dbo.InvoiceArchive)