--Backing up a database
--Source: https://www.w3schools.com/sql/sql_backup_db.asp
--abstract: I am looking at the example queries and creating my own

--backs up the database CSC210 to the folder backup in the C:\Drive
Backup Database CSC210
to disk = 'C:\backup';


--backs up the database CSC210 to the folder backup 
backup Database CSC210
To disk = 'C:\backup'
--A differential back up reduces the back up time and only backs up the changes
with Differential;

