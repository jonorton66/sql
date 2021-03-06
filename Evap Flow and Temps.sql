SELECT [TEV_DateTime]
      ,[TEV_ProdOrder]
      ,[TEV_BlendCode]
      ,[TEV_OB_Name]
	  ,TEV_TT1_SH1
	  ,TEV_TT2_SH1
	  ,TEV_TT_VH2
	  ,TEV_TT_VH3
	  ,TEV_TT_VH4
	  ,TEV_TT_VH5
	  ,TEV_dTT_SH1_VH2
	  ,TEV_dTT_VH2_VH3
	  ,TEV_dTT_VH3_VH4
	  ,TEV_dTT_VH4_VH5
	  ,TEV_AU_S5 AS "5th_Stage_DM"
	  ,TEV_FT_S3 AS "3rd Stage Flow Rate"
	  ,TEV_FT_S4 AS "4th Stage Flow Rate"
	  ,TEV_FT_S5 AS "5th Stage Flow Rate"
	  ,TEV_FT_IE AS "Incomming Flow"
	  ,TEV_FT_IE_SP AS "Incomming Flow SP"
	  ,TEV_PIT_VC AS "Vacuum Pressure"
	  ,TEV_PIT_VC_SP AS "Vacuum Pressure SP"

  FROM slTS_EV
  --Comment/UnComment Lines below to selteBlendcode and Data Time
--WHERE [TEV_DateTime] >= '2017-09-01' AND [TEV_DateTime] <= '2017-09-30' AND [TEV_ProdOrder] != '0'
--Comment/UnComment Lines below to select order number
WHERE [TEV_DateTime] > '2017-11-01' AND [TEV_DateTime] < '2017-11-26' AND [TEV_BlendCode] = '632'
ORDER BY [TEV_DateTime] ASC