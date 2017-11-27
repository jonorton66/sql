SELECT [TTL_DateTime]
      ,[TTL_OB_Name]

FROM [dbo].[slTS_Tanklog]
WHERE [TTL_DateTime] >= '2017-09-01' AND [TTL_DateTime] <= '2017-09-30' AND [TTL_OB_Name] LIKE 'FT%'
--WHERE [TTL_ProdOrder] = '7981' AND [TTL_OB_Name] LIKE 'FT%'
ORDER BY [TTL_DateTime] ASC