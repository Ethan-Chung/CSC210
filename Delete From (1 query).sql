-- A query that deletes a record from a table
--Source: https://www.w3schools.com/sql/sql_delete.asp
--Abstract: I am looking at the sample queries and creating my own

--Selects what database to delete from
Delete From ap.dbo.ContactUpdates 
--Selects which value to delete
Where FirstName = 'Ethan' 

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

