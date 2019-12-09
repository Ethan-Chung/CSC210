--Case function
--source: Murach's SQL 2016 Chapter 9 Page 285
--Abstract: I am looking at the example queries and explaining what they are doing

--Select column InvoiceNumber and TermsID
Select InvoiceNumber, TermsID,
	--Case sets conditions for TermsID
	Case TermsID
		--If TermsID has the value 1 there will be a new column that says 'Net due 10 days'
		When 1 Then 'Net due 10 days'
		--If termsID has the value 2 there will  be a new column that says 'Net due 20 days'
		When 2 Then 'Net due 20 days'
		--If TermsID has the value 3 there will be a new column that says 'Net due 30 days'
		When 3 Then 'Net due 30 days' 
		--If TermsID has the value 4 there will be a new column that says 'Net due 60 days'
		When 4 Then 'Net due 60 days' 
		--If TermsID has the value 5 there will be a new column that says 'Net due 90 days'
		When 5 Then 'Net due 90 days'  
	--Ends the case and the new column will be named Terms
	End As Terms
--Selects the data from the table Invoices in the database AP
From ap.dbo.Invoices 

/* 
Sample Query 

InvoiceNumber	TermsID	Terms
963253261	3	Net due 30 days
963253237	3	Net due 30 days
125520-1	1	Net due 10 days
97/488	3	Net due 30 days
*/

--Select statement that uses a searched case function

--Selects the column InvoiceNumber, InvoiceTotal, InvoiceDate, InvoiceDueDate
Select InvoiceNumber, InvoiceTotal, InvoiceDate, InvoiceDueDate,
	--Case sets a condition for InvoiceDueDate
	Case	
		--The DateDiff function gets the current date and the InvoiceDueDate to see if the current date is over 39
		When DateDiff(day, InvoiceDueDate, GetDate()) > 30 
			--If the current date is over 30 days from the InvoiceDueDate, then the result will return as 'Over 30 days past due'
			Then 'Over 30 days past due'
		-- Searches if the current date is any number above 0 from the InvoiceDueDate
		When DateDiff(day, InvoiceDueDate, GetDate()) > 0
			--If the current day is any number above 0 from the InvoiceDueDate, the the result will return as '1 to 30 days past due' 
			Then '1 to 30 days past due'
		--Any other number, then return 'Current'
		Else 'Current'
	--Ends the case and creates a new column called Status
	End As Status
--Selects the data from the table Invoices from the database AP
From ap.dbo.Invoices
--Only prints out data where the InvoiceTotal - PaymentTotal - CreditTotal is bigger than 0 s
Where InvoiceTotal - PaymentTotal - CreditTotal > 0 

/* 
Sample Output

InvoiceNumber	InvoiceTotal	InvoiceDate	InvoiceDueDate	Status
39104	85.31	2016-03-10 00:00:00	2016-04-09 00:00:00	Over 30 days past due
963253264	52.25	2016-03-18 00:00:00	2016-04-17 00:00:00	Over 30 days past due
31361833	579.42	2016-03-21 00:00:00	2016-04-10 00:00:00	Over 30 days past due
263253268	59.97	2016-03-21 00:00:00	2016-04-20 00:00:00	Over 30 days past due
*/