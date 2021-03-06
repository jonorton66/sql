SELECT [TSE_DateTime]
      ,[TSE_ProdOrder]
      ,[TSE_BlendCode]
      ,[TSE_OB_Name]
      ,[TSE_XUT_SEI] AS 'Turbidity Inlet'
      ,[TSE_XUT_SEO] AS 'Turbidity Outlet'
      ,[TSE_XUT_SEO_SP] AS 'Turbidity Outlet SP'
      ,[TSE_PIT_SEO] AS 'SEP. Outlet Pressure'
      ,[TSE_PIT_SEO_SP] AS 'SEP. Outlet Pressure SP'
      ,[TSE_PIT_DEO] AS 'DEC. Outlet Pressure'
      ,[TSE_PIT_DEO_SP] AS 'DEC. Outlet Pressure SP'
      ,[TSE_TT_SC] AS 'Temp. Outlet Cooler'
      ,[TSE_TT_SC_SP] AS 'Temp. Outlet Cooler SP'
  FROM [Sara_Lee_TimeLog].[dbo].[slTS_SE]
WHERE [TSE_DateTime] > '2016-01-01' AND [TSE_DateTime] < '2017-01-01' AND [TSE_BlendCode] = '647'
ORDER BY [TSE_DateTime] ASC