select  [CustomerID]
      ,[CustomerName]
      ,[Email]
      ,[Gender]
      ,[Age]
      ,[Country]
      ,[City]
from customers c left join geography g 
on c.GeographyID = g.GeographyID ;