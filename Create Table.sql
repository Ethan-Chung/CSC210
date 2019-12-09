--Create Table
--Source: https://www.w3schools.com/sql/sql_create_table.asp
--abstract: I am looking  at the sample queries and making my own query to create my own table

--Creates the table 'SongTable' in the database CSC210
Create Table CSC210.dbo.SongTable (
--these values add new columns to the table and sets its parameters. int means only integers can be added 	
	TrackID int,
--varchar means only characters can be added to this column with a max of 255 	
	SongTitle varchar(255), 
	Artist varchar(255), 
	Albumn varchar(255), 
	ReleaseDate varchar(255)
);

--sample output
/*
Commands completed successfully.

Completion time: 2019-11-14T14:14:54.1955238-08:00

Creates the table SongTable into the database CSC210
*/


 --This query selects a table that does not exist yet and uses the table SongTable to create a New Table
 Select * into csc210.dbo.NewSongTable 
 from csc210.dbo.SongTable;

 --sample output
 /*
 (0 rows affected)

Completion time: 2019-11-19T12:52:53.5458001-08:00

Creates a table that does not exist from SongTable
*/