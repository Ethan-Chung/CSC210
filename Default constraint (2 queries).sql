--Default Constraint
--source: https://www.w3schools.com/sql/sql_default.asp
--abstract: I am looking at the example queries and creating my own. 

--Creates the table ListofNames in the database csc210
Create Table CSC210.dbo.ListofNames (
	--adds the column ID that only accepts integers and does not except Null values
	ID int Not Null,
	--adds the column LastName that only accepts characters. If there is no value the name column will put in 'doe' as a value
	LastName varchar(255) Default 'Doe',
	FirstName varchar(255) Default 'Jane',
	Age int
);

--sample output
/*
Commands completed successfully.

Completion time: 2019-11-26T13:11:13.1884773-08:00
*/


--alters the table songtable in the database csc210
Alter Table csc210.dbo.songtable
--adds a constraint to column Songtitle
add constraint SongTitle
--Sets the constraint default to the column Songtitle. If there is no value in the column Santuary will be placed in the column instead 
Default 'Santuary' for SongTitle; 

--sample output
/*
Commands completed successfully.

Completion time: 2019-11-26T13:25:55.3235518-08:00
*/
