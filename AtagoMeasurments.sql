SELECT [DSD_DateTime]
	  ,[EX_ID]
      ,CASE
			WHEN [PP_Name] = 'FA' THEN 'FA - PE2 Extract'
			WHEN [PP_Name] = 'FB' THEN 'FB - Secondary Extract'
			WHEN [PP_Name] = 'FC' THEN 'FC - PE1 Extract'
			WHEN [PP_Name] = 'FM' THEN 'FM - Watery Extract'
			WHEN [PP_Name] = 'FP' THEN 'FP - Evap. Outlet Extract'
			WHEN [PP_Name] = 'FR' THEN 'FR - Mix Tank Extract'
			WHEN [PP_Name] = 'FS' THEN 'FS - Seperated Extract'
			WHEN [PP_Name] = 'FZ' THEN 'FZ - Ready for Spraydry'
			WHEN [PP_Name] = 'G' THEN 'G - Finished Extract'
		END AS PhaseName
      ,[DSD_BatchCode] AS SampleOrder
      ,[DSD_DrySolidValue]
      ,CASE 
			WHEN [DSD_Controle] = 1 THEN 'TRUE'
			WHEN [DSD_Controle] = 0 THEN 'FALSE'
			 else 'NN'
       end as ControlBit 
      ,CASE 
			WHEN [DSD_Production] = 1 THEN 'TRUE'
			WHEN [DSD_Production] = 0 THEN 'FALSE'
			 else 'NN'
       end as ProductionBit 
  FROM [Sara_Lee_MES].[dbo].[slDrySolidData]
  WHERE [EX_ID] = '8095'
  --WHERE [DSD_DateTime] >= '2017-01-01' AND [DSD_DateTime] <= '2017-05-31' AND ([PP_Name] = 'FC' OR [PP_Name] = 'FA' OR [PP_Name] = 'FB')
  ORDER BY [DSD_DateTime] ASC