--Like Function

Select * from ap.dbo.Vendors  --Select all columns from Vendors where a value from VendorName starts with B
Where VendorName Like 'B%';

Select * from ap.dbo.Vendors --Selects all columns from Vendors where a value from the column VendorName ends with B
where VendorName Like '%B'

Select * from ap.dbo.Vendors --Selects all columns from Vendors where values from the column VendorName has l as the 3rd letter
where VendorName Like '__l%'