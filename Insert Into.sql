
Set Identity_insert ap.dbo.ContactUpdates ON

Insert Into AP.dbo.ContactUpdates (
VendorID,
LastName, 
FirstName)
Values (
45,
'Chung',
'Ethan')

Set Identity_insert ap.dbo.ContactUpdates OFF