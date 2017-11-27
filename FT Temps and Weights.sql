SELECT [TTL_DateTime]
      ,[TTL_ProdOrder]
      ,[TTL_BlendCode]
      ,[TTL_OB_Name]
      ,[TTL_LT] AS 'Tank Level'
      ,[TTL_TT] AS 'Temperature'
      ,[TTL_DS] AS 'Dry Solids'

  FROM [dbo].[slTS_Tanklog]
  --WHERE [TTL_DateTime] >= '2017-01-01' AND [TTL_DateTime] <= '2017-05-30' AND [TTL_OB_Name] = 'MT1_1'
  WHERE [TTL_ProdOrder] = '7978' AND [TTL_OB_Name] LIKE 'FT%'
  ORDER BY [TTL_DateTime] ASC