--Between Operator

Select * from ap.dbo.Invoices --Selects all columns from Invoices where the values in InvoiceDate are between '2016-01-08 00:00:00' and '2016-01-21 00:00:00'
where InvoiceDate between '2016-01-08 00:00:00' and '2016-01-21 00:00:00';


Select * from ap.dbo.Invoices --Selects all columns from Invoices where the values in InvoiceDate are not between '2016-01-08 00:00:00' and '2016-01-21 00:00:00'
where InvoiceDate not between '2016-01-08 00:00:00' and '2016-01-21 00:00:00';

Select * from ap.dbo.Invoices --Selects all columns from Invoices where the values in InvoiceDate are between '2016-01-08 00:00:00' and '2016-01-21 00:00:00' and does not have the InoviceID 20,23, and 31
where InvoiceDate between '2016-01-08 00:00:00' and '2016-01-21 00:00:00'
and not InvoiceID in (20,23,31);
