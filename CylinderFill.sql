SELECT [EX_ActivationDate]
	  ,[EX_ActualStopDateTime]
	  ,[EX_ID]
      ,[EBC_BlndCode]
      ,[EX_SPDosingWeight]
      ,[EX_TotalDosingWeight]
      ,[EX_BatchCreatID]
      ,[EX_SpDosingcountAtStartOfOrder]
  FROM [Sara_Lee_MES].[dbo].[slExtractionOrders]
WHERE [EX_ActivationDate] >= '2017-01-01' AND [EX_ActualStopDateTime] <= '2017-05-31' AND [EBC_BlndCode] = '632'
ORDER BY [EX_ActivationDate] ASC