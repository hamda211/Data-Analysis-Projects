select products.ProductID,products.ProductName,products.Price,--products.Category,
CASE
when products.Price <50 then 'Low'
when products.Price Between 50 and 200 then 'Medium'
else 'High' 
END AS PriceCategory
from dbo.products;