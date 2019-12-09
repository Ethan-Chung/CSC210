--Outer Join
--Source: Murach's SQL 2016 Chapter 4 Page 143
--Abstract: I am looking at the example queries and explain them

/* 
Departments Table

DeptNo	DeptName
1	Accounting
2	Payroll
3	Operations
4	Personnel
5	Maintenance

The Employees Table

EmployeeID	LastName	FirstName	DeptNo	ManagerID
1	Smith	Cindy	2	NULL
2	Jones	Elmer	4	1
3	Simonian	Ralph	2	2
4	Hernandez	Olivia	1	2
5	Aaronsen	Robert	2	3
6	Watson	Denise	6	3
7	Hardy	Thomas	5	2
8	O'Leary	Rhea	4	2
9	Locario	Paulo	6	1
*/ 

--Left outer join

--Selects DeptName, DeptNo from the table Departments, and LastName
Select DeptName, Departments.DeptNo, LastName
--takes all the data from the left table (Departments) and matches the data from the table Employees
From Examples.dbo.Departments Left Join Examples.dbo.Employees
	-- Joins the data when the column DeptNo from Departments is the same as the column DeptNo from Employees 
	On Departments.DeptNo = Employees.DeptNo 

/*
Sample output

DeptName	DeptNo	LastName
Accounting	1	Hernandez
Payroll	2	Smith
Payroll	2	Simonian
Payroll	2	Aaronsen
Operations	3	NULL
*/

--Right outer Join

--Selects DeptName, DeptNo from the table Employees, and LastName
Select DeptName, Employees.DeptNo, LastName
--takes all the data from the right table (Employees) and matches the data from the left table (Departments)
From Examples.dbo.Departments Right Join Examples.dbo.Employees
	-- Joins the data when the column DeptNo from Departments is the same as the column DeptNo from Employees 
	On Departments.DeptNo = Employees.DeptNo 

/*
Sample Output

DeptName	DeptNo	LastName
Payroll	2	Smith
Personnel	4	Jones
Payroll	2	Simonian
Accounting	1	Hernandez
Payroll	2	Aaronsen
NULL	6	Watson
*/

--Full Outer Join

--Selects DeptName, DeptNo from the table Departments, DeptNo from the table Employees, and LastName
Select DeptName, Departments.DeptNo, Employees.DeptNo, LastName
--returns all records when there is a match in left (Departments) or right (Employees) table records.
From Examples.dbo.Departments Full Join Examples.dbo.Employees
	-- Joins the data when the column DeptNo from Departments is the same as the column DeptNo from Employees 
	On Departments.DeptNo = Employees.DeptNo 

/*
Sample Output

DeptName	DeptNo	DeptNo	LastName
Accounting	1	1	Hernandez
Payroll	2	2	Smith
Payroll	2	2	Simonian
Payroll	2	2	Aaronsen
Operations	3	NULL	NULL
Personnel	4	4	Jones
*/