--Outer join that joins 3 tables
--Source: Murach's SQL 2016 Chapter 4 Page 145
--Abstract: I am looking at the example query and explaining what is happening

--Select the columns DeptName, LastName and ProjectNo
Select DeptName, LastName, ProjectNo
--Selects the data from the table Departments from Examples
From Examples.dbo.Departments
	--Left Joins the table employees to the table departments
	Left Join Examples.dbo.employees 
	--Joins the items when the column DeptNo from Departments and column DeptNo from the column Employees are the same
		On Departments.DeptNo = Employees.DeptNo
	--Left joins another table projects
	Left Join Examples.dbo.Projects
	--Joins the column employeeID from Employees and the column EmployeeID from Projects are the same 
		On Employees.EmployeeID = Projects.EmployeeID
--Order the data by DeptName, LastName, and ProjectNo
Order By DeptName, LastName, ProjectNo

/* 
Sample Output

DeptName	LastName	ProjectNo
Accounting	Hernandez	P1011
Maintenance	Hardy	NULL
Operations	NULL	NULL
Payroll	Aaronsen	P1012
*/ 

--Select the columns DeptName, LastName and ProjectNo
Select DeptName, LastName, ProjectNo
--Selects the data from the table Departments from Examples
From Examples.dbo.Departments
	--Full Joins the table employees to the table departments
	Full Join Examples.dbo.employees 
	--Joins the items when the column DeptNo from Departments and column DeptNo from the column Employees are the same
		On Departments.DeptNo = Employees.DeptNo
	--Full joins another table projects
	Full Join Examples.dbo.Projects
	--Joins the column employeeID from Employees and the column EmployeeID from Projects are the same 
		On Employees.EmployeeID = Projects.EmployeeID
--Order the data by DeptName
Order By DeptName

/* 
Sample Output

DeptName	LastName	ProjectNo
NULL	Watson	P1013
NULL	Locario	P1013
NULL	NULL	P1014
Accounting	Hernandez	P1011
*/ 
