SELECT [TTL_DateTime]
      ,[TTL_ProdOrder]
      ,[TTL_BlendCode]
      ,[TTL_OB_Name]
      ,[TTL_LT] AS 'Tank Level'
      ,[TTL_TT] AS 'Temperature'
      ,[TTL_DS] AS 'Dry Solids'
	  ,[TTL_AgitatingOn]
	  ,[TTL_AgitatingOnTime]
	  ,[TTL_AgitatingOnCount]

  FROM [dbo].[slTS_Tanklog]
  --WHERE [TTL_DateTime] >= '2017-01-01' AND [TTL_DateTime] <= '2017-05-30' AND [TTL_OB_Name] = 'MT1_1'
  WHERE [TTL_ProdOrder] = '8095' AND [TTL_OB_Name] LIKE 'MT%'
  ORDER BY [TTL_DateTime] ASC