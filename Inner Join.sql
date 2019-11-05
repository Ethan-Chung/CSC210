  -- A query that uses an inner join

  SELECT InvoiceNumber, InvoiceDate, InvoiceTotal -- Selects certain columns
  FROM ap.dbo.Invoices JOIN ap.dbo.Vendors -- Joins the database Invoices and Vendors together
	ON Invoices.VendorID = Vendors.VendorID -- Joins the data on VendorID
  WHERE VendorState = 'CA' --Picks out which state to choose from
  ORDER BY InvoiceDate; --Order by InvoiceDate


  --Taken from Chapter 6 of Murcah's SQL 2016