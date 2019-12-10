--Primary Key
--Source: https://www.w3schools.com/sql/sql_primarykey.asp
--abstract: I am looking at the sample queries and creating my own

--Creates Table FavoriteSong in the database CSC210
Create Table CSC210.dbo.FavoriteSong (
	--Creates a new column called TrackID that only accepts integers and does not accept Null Values
	TrackID int Not Null, 
	--Creates a new column called FirstName that only accepts characters and doesn't accept Null Values
	FirstName varchar(255) Not Null, 
	LastName varchar(255), 
	FavoriteSongs varchar(255), 
	Age int, 
	--Adds the primary Key constraint to the columns TrackID and FirstName
	Constraint PK_FavoriteSong Primary Key (TrackID, FirstName)
); 

--sample output
/*
Commands completed successfully.

Completion time: 2019-11-19T14:01:47.2133684-08:00
*/


--Changes the table NullTest in the database CSC210
Alter Table CSC210.dbo.NullTest
--adds the primary key constraint to the column ID
Add Primary Key (ID);

--sample output
/*
Commands completed successfully.

Completion time: 2019-11-19T14:07:00.9717464-08:00
*/
