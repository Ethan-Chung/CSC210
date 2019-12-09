--Unions 
--Source: Murach's SQL 2016 Chapter 4 Page 151
--Abstract: I am looking at the example query and explaining what it does

	--Select 'Activce' and rename it as Source, the column InvoiceNumber, InvoiceDate, and InvoiceTotal
	Select 'Active' As Source, InvoiceNumber, InvoiceDate, InvoiceTotal
	--Selects the data from the table ActiveInvoices from the database Examples
	From Examples.dbo.ActiveInvoices
	--Only returns the data where InvocieDate is greater than or equal too '02/01/2016'
	Where InvoiceDate >= '02/01/2016'
--Union combines all of the data from the two tables
Union
	--Selects 'Paid' and rename it as Source, the column InvoiceNumber, InvoiceDate, and InvoiceTotal
	Select 'Paid' As Source, InvoiceNumber, InvoiceDate, InvoiceTotal
	--Selects the table PaidInvoices from the database Examples
	From Examples.dbo.PaidInvoices
	--Selects the data where InvoiceDate is greater than or equal too '02/01/2016'
	Where Invoicedate >= '02/01/2016'
--Orders the data by InvoiceTotal in descending order
Order By InvoiceTotal Desc; 

/*
Sample Output

Source	InvoiceNumber	InvoiceDate	InvoiceTotal
Paid	P-0259	2016-03-19 00:00:00	26881.40
Paid	0-2060	2016-03-24 00:00:00	23517.58
Paid	40318	2016-02-01 00:00:00	21842.00
Active	P-0608	2016-03-23 00:00:00	20551.18
Active	0-2436	2016-03-31 00:00:00	10976.06
*/