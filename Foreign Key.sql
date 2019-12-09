--Foreign Key
--Source: https://www.w3schools.com/sql/sql_foreignkey.asp
--abstract: I am looking at the sample queries and creating my own

--Creates the table ForeignKeyExample in the database csc210
Create Table csc210.dbo.ForeignKeyExample (
	--adds the column OrderID and only allows integers and does not allow Null Values
	OrderID int Not Null, 
	--adds the column ProductName and allows only characters and does not allow Null Values
	ProductName varchar(255) Not Null, 
	ProductID int Not Null, 
	--adds the constraint, Primary Key, to the column OrderID
	Primary Key (OrderID), 
	--Adds the Foreign Key constraints to ProductID that references ID in the table NullTest
	Foreign Key (ProductID) References csc210.dbo.nulltest(ID)
);

/*
The table containing the foreign key is called the child table, and the table containing the candidate key is called the referenced or parent table.
A foreign Key is a field( or collection of fields) in one table that refers to the Primary Key in another table. it is used to link two tables together.

--sample output
/*
Commands completed successfully.

Completion time: 2019-11-21T14:00:28.8814701-08:00
*/



