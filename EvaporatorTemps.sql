SELECT TEV_Cleaning, 
		TEV_Production, 
		TEV_OB_Name, 
		TEV_DateTime, 
		TEV_ProdOrder, 
		TEV_BlendCode, 
		TEV_TT1_SH1, 
		TEV_TT2_SH1, 
		TEV_TT_VH2, 
		TEV_TT_VH3, 
		TEV_TT_VH4, 
		TEV_TT_VH5, 
		TEV_dTT_SH1_VH2, 
		TEV_dTT_VH2_VH3, 
		TEV_dTT_VH3_VH4, 
		TEV_dTT_VH4_VH5, 
		TEV_AU_S5 AS "5th_Stage_DM"
FROM dbo.slTS_EV
-- Change the TEV_DateTime to dial in on a date needed
--WHERE TEV_DateTime >= '2017-07-19' AND TEV_DateTime <= '2017-07-20' --AND TEV_ProdOrder = '7924' --AND TEV_BlendCode = '632' AND TEV_ProdOrder != '0' AND TEV_ProdOrder < '9999'
WHERE TEV_ProdOrder >= '7916' AND TEV_ProdOrder <= '7924'
ORDER BY TEV_DateTime ASC
--GROUP BY TEV_TT1_SH1