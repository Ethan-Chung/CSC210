-- Drop Tables
--source: https://www.w3schools.com/sql/sql_drop_table.asp
--abstract: I am looking at the example queries and making my own

--Deletes table Songtable from the database csc210
Drop Table CSC210.dbo.SongTable;

--sample output
/* 
Commands completed successfully.

Completion time: 2019-11-19T13:05:45.3987152-08:00

This query deletes the table S
ongTable
*/


--Truncate Table is used to delete the data inside the table, but not the table itself
Truncate Table CSC210.dbo.SongTable


--sample output
/*
Commands completed successfully.

Completion time: 2019-11-19T13:09:29.7737276-08:00
*/