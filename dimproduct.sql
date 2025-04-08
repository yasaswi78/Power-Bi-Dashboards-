SELECT 
 p.[ProductKey],
 p.[ProductAlternateKey] AS ProductItemCode,
--      ,[ProductAlternateKey]
--      ,[ProductSubcategoryKey]
--      ,[WeightUnitMeasureCode]
--      ,[SizeUnitMeasureCode]
 p.[EnglishProductName] AS [Product Name],
 ps.EnglishProductSubcategoryName AS [Sub Category],
 pc.EnglishProductCategoryName AS [Product Category],
--      ,[EnglishProductName]
--      ,[SpanishProductName]
--      ,[FrenchProductName]
--    ,[StandardCost]
--    ,[FinishedGoodsFlag]
 p.[Color] AS [Product color],
--      ,[SafetyStockLevel]
--      ,[ReorderPoint]
--      ,[ListPrice]
 p.[Size] AS [Product size],
--      ,[SizeRange]
--      ,[Weight]
--      ,[DaysToManufacture]
 p.[ProductLine] AS [Productb line],
--      ,[DealerPrice]
--      ,[Class]
--      ,[Style]
 p.[ModelName] AS [Product Model Name],
--      ,[LargePhoto]
 p.[EnglishDescription] AS [Product Description],
--      ,[FrenchDescription]
--      ,[ChineseDescription]
--      ,[ArabicDescription]
--      ,[HebrewDescription]
--      ,[ThaiDescription]
--      ,[GermanDescription]
--      ,[JapaneseDescription]
--      ,[TurkishDescription]
--      ,[StartDate]
--      ,[EndDate]
ISNULL(p.Status,'Outdate') AS [Product Status]
  FROM 
  [dbo].[DimProduct] as p
  LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
  LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
  order by 
  p.ProductKey asc
