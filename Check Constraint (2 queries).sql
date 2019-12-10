--Check Constraint
--source: https://www.w3schools.com/sql/sql_check.asp
--abstract: I am looking at the sample queries and creating my own

--Creates table Customers in the database CSC210
Create Table csc210.dbo.customers (
	--Adds column CustomerID as an Integer and doesn't allow null values
	CustomerID int Not Null, 
	--adds column LastName that allows only characters and doesn't allow null values
	LastName varchar(255) Not Null, 
	FirstName varchar(255) Not Null, 
	Age int, 
	Height int,
	--adds the check constraint that only allows certain values for this column
	Check (Age >= 21)
);

/*
Commands completed successfully.

Completion time: 2019-11-21T14:21:34.9166067-08:00
*/

--Changes the table FavoriteSong in the database CSC210
Alter Table csc210.dbo.FavoriteSong
--Adds the check constraint to the column Age that only allows values that are equal too or greater than 3
Add Check (Age >= 3)
