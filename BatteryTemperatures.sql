SELECT TEB_DateTime, 
TEB_ProdOrder, 
TEB_BlendCode, 
TEB_TT_PO, 
TEB_TT_E_1, 
TEB_TT_E_2, 
TEB_TT_E_3, 
TEB_TT_E_4, 
TEB_TT_E_5, 
TEB_TT_E_6, 
TEB_TT_E_7, 
TEB_TT_E_8
FROM slTS_EB
WHERE [TEB_DateTime] > '2016-01-01' AND [TEB_DateTime] < '2017-01-01' AND [TEB_BlendCode] = '647'
ORDER BY [TEB_DateTime] ASC