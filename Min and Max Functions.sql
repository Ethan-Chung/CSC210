-- MIN() and MAX() functions

Select MIN(PaymentTotal) as SmallestPrice  --Selects the Minimum number from the column PaymentTotal and makes a new column called SmallesTPrice from Invoices
from ap.dbo.Invoices;

Select MAX(PaymentTotal) as LargestPrice --Selects the Maximum number from the column PaymentTotal and makes a new column called LargestPrice from Invoices
from ap.dbo.Invoices;