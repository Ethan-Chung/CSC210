-- Alter Table
--Source: https://www.w3schools.com/sql/sql_alter.asp
--abstract: I am looking at the sample queries and creating my own

--Alters the table SongTable
Alter Table CSC210.dbo.SongTable
--Adds the column Genre that allows up to 255 characters into the table SongTable
Add Genre varchar(255);



--sample output
/*
Commands completed successfully.

Completion time: 2019-11-19T13:14:58.1200376-08:00
*/


--Choses the table SongTable to alter or change
Alter Table CSC210.dbo.SongTable
--Removes the column Genre from the table SongTable
Drop Column Genre;

--Sample output
/*
Commands completed successfully.

Completion time: 2019-11-19T13:17:54.4794237-08:00
*/


