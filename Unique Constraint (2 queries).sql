--Unique Constraint
--Source: https://www.w3schools.com/sql/sql_unique.asp
--abstract: I am looking at the sample queries and creating my own

--Creates a new table called Unique in the database CSC210
Create Table CSC210.dbo.UniqueTable (
	--Creates a column called ID that only accepts integers and doesn't accept Null Values
	ID int Not Null, 
	Height varchar(255),
	--Creates a column called LastName that only accepts characters and doesn't accept Null Values
	LastName varchar(255) Not Null, 
	Age int,
	--Adds the Unique Constraint to the columns ID and LastName that ensures all values in the column are different
	Constraint UC_UniqueTable Unique (ID, LastName)
);

/* 
Both the unique and primary key constraints provide a guarantee for uniqueness for a column or set of columns.
You can have many unique constraints per table, but only one Primary Key constraint per table
*/

--sample output
/*
Commands completed successfully.

Completion time: 2019-11-19T13:47:11.9590574-08:00
*/

--Changes the table Song Table from the database csc210
Alter table CSC210.dbo.SongTable
--adds the constraint Unique to TrackID
Add Unique (TrackID);

/*
Commands completed successfully.

Completion time: 2019-11-19T13:55:23.8917204-08:00
*/
