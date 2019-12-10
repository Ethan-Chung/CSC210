-- MIN() and MAX() functions
--Source: https://www.w3schools.com/sql/sql_min_max.asp
--abstract: I am looking at the example queries and creating my own

--Selects the Minimum number from the column PaymentTotal and makes a new column called SmallesTPrice from Invoices
Select MIN(PaymentTotal) as SmallestPrice  
from ap.dbo.Invoices;

--sample output
--SmallestPrice
--0.00


--Selects the Maximum number from the column PaymentTotal and makes a new column called LargestPrice from Invoices
Select MAX(PaymentTotal) as LargestPrice 
from ap.dbo.Invoices;

--sample output
--LargestPrice
--37966.19
