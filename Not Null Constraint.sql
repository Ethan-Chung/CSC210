--Not Null
--source:https://www.w3schools.com/sql/sql_notnull.asp
--Abstract: I am looking at the sample queries and creating my own.

--Creates a table named NullTest
Create Table CSC210.dbo.NullTest (
	--creates a column called ID that can only input integers that won't accept Null Values
	ID int Not Null,
	--Creates a column called FirstName that can only contain characters and won't accept Null Values
	FirstName varchar(255) Not NUll, 
	School varchar(255) Not NUll, 
);

--sample output
/*
Commands completed successfully.

Completion time: 2019-11-19T13:37:19.0867309-08:00
*/


--Alters the table Songtable from the database CSC210
Alter Table CSC210.dbo.SongTable
--Changes the column SongTitle so that it will not accept Null Values
Alter Column SongTitle varchar(255) Not Null;

--sample output
/*
Commands completed successfully.

Completion time: 2019-11-19T13:39:56.6374843-08:00
*/

