SELECT 
  c.customerkey AS CustomerKey, 
  --  ,[GeographyKey]
  --  ,[CustomerAlternateKey]
  --  ,[Title]
  c.firstname AS [FirstName], 
  --  ,[MiddleName]
  c.lastname AS [LastName], 
  c.firstname + ' ' + c.lastname AS [Full Name], 
  --  ,[NameStyle]
  --  ,[BirthDate]
  --  ,[MaritalStatus]
  --  ,[Suffix]
  CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'FEMALE' END AS Gender, 
  --  ,[Gender]
  --  ,[EmailAddress]
  --  ,[YearlyIncome]
  --  ,[TotalChildren]
  --  ,[NumberChildrenAtHome]
  --  ,[EnglishEducation]
  --  ,[SpanishEducation]
  --  ,[FrenchEducation]
  --  ,[EnglishOccupation]
  --  ,[SpanishOccupation]
  --  ,[FrenchOccupation]
  --  ,[HouseOwnerFlag]
  --  ,[NumberCarsOwned]
  --  ,[AddressLine1]
  --  ,[AddressLine2]
  --  ,[Phone]
  c.datefirstpurchase AS DatefirstPurchase, 
  --  ,[CommuteDistance]
  g.city AS [Customer City] 
FROM 
  dbo.DimCustomer AS c 
  LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.GeographyKey 
ORDER BY 
  CustomerKey ASC
