--Insert Into

--Allows editing within the columns
Set Identity_insert ap.dbo.ContactUpdates ON 

--picks which columns to insert data in the database ContactUpdates
Insert Into AP.dbo.ContactUpdates ( 
VendorID,
LastName, 
FirstName)
--Values to insert into the data
Values (                            
45,
'Chung',
'Ethan')

--turns editing within the columns off
Set Identity_insert ap.dbo.ContactUpdates OFF 

--sample output
--VendorID	LastName	FirstName
--5	Davison	Michelle
--12	Mayteh	Kendall
--17	Onandonga	Bruce
--44	Antavius	Anthony
--76	Bradlee	Danny
--94	Suscipe	Reynaldo
--101	O'Sullivan	Geraldine
--123	Bucket	Charles
--45	Chung	Ethan

