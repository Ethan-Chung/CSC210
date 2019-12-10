--create index
--source: https://www.w3schools.com/sql/sql_create_index.asp
--abstract: I am looking at the sample queries and creating my own

--creates an index named idx_pname
create index idx_pname
--creates an index that refers to both LastName and FirstName
on csc210.dbo.ListofNames (LastName, FirstName);

--sample output
/*
Commands completed successfully.

Completion time: 2019-11-26T13:35:27.0768518-08:00
*/



