SELECT 
  c.customerkey AS CustomerKey, 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  c.firstname as [FirstName], 
  --[MiddleName]
  c.lastname AS [LastName], 
  c.firstname + ' ' + lastname as [Full Name], 
  --[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  --,[EmailAddress]  --,[YearlyIncome]  --,[TotalChildren]  --,[NumberChildrenAtHome]
  --,[EnglishEducation]  --,[SpanishEducation]  --,[FrenchEducation]  --,[EnglishOccupation]
  --,[SpanishOccupation]  --,[FrenchOccupation]  --,[HouseOwnerFlag]  --,[NumberCarsOwned]
  --,[AddressLine1]  --,[AddressLine2]  --,[Phone]
  c.datefirstpurchase AS DateFirstPurchase, 
  g.city AS [Customer City] -- Joined in Customer City from Geography table
FROM 
  dbo.DimCustomer AS c 
  LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC --Ordered List by CustomerKey
