SELECT [EX_StartDateTime]
      ,[EX_ActivationDate]
	  ,[EX_ID]
	  ,[BlendCode]
      ,[AvgDsFirstPrim]
      
  FROM [Sara_Lee_MES].[dbo].[slKPIExtractionOrderCalc]
  --Comment/Uncomment the line blow to select blend codes
  --WHERE [EX_StartDateTime] >= '2016-09-01' AND [EX_StartDateTime] <= '2017-09-01' AND ([BlendCode] = '643' OR [BlendCode] = '646' OR [BlendCode] = '647' OR [BlendCode] = '648' OR [BlendCode] = '683')
  --Comment/Uncomment the line below to select order number
  WHERE [EX_ID] = '7984'
  ORDER BY [EX_StartDateTime] ASC