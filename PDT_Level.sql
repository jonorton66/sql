SELECT TEB_DateTime, TEB_ProdOrder, TEB_BlendCode, TEB_LT_PDT
FROM slTS_EB
WHERE TEB_DateTime >= '2017-01-01' AND TEB_DateTime <= '2017-05-31' AND TEB_BlendCode = '632'
ORDER BY TEB_DateTime ASC
