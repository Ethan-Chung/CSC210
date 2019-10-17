/* Selects all data in the Tables Vendors */
Select * from ap.dbo.vendors
/* Finds all the data in the Column Vendorcity that has Washington in it */
Where Vendorcity = 'Washington'
/* Order all the data by VendorID in decending order */
Order By VendorID desc;