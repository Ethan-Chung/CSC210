--Auto Increment
--source: https://www.w3schools.com/sql/sql_autoincrement.asp
--abstract: I am looking at the sample queries and creating my own

--creates the table auto_increment in the database csc210
Create Table csc210.dbo.auto_increment (
	--creates a column named Id that only allows integers, doesnt allow null values, and automatically increase the amount by 1 for each new record
	--Identity(5,10) means that the value starts at 5 and increases the value by 10 per new data
	ID int Not Null Identity(5,10),
	--creates a column PersonName that only allows characters and does not accept nulls
	PersonName varchar(255) Not Null, 
);

--sample output
/*
Commands completed successfully.

Completion time: 2019-11-26T13:43:50.3224979-08:00
*/

--Since we set the column ID to auto increase we do not have to specity a value for the ID column. A value will automatically be added

--Inserts value 'John' into the column PersonName in the table auto_increment
Insert into csc210.dbo.auto_increment (PersonName)
values ('John');

--sample output
/*
(1 row affected)

Completion time: 2019-11-26T13:47:49.7162148-08:00
*/