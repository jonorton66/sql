--:CONNECT 192.168.230.229 -U qa -P qa
SELECT      TSE_DateTime, TSE_ProdOrder, TSE_BlendCode, TSE_OB_Name AS Machine, TSE_XUT_SEI AS InletTurbidity, TSE_XUT_SEO AS OutletTurbidity
FROM        dbo.slTS_SE
WHERE		TSE_BlendCode = '632' AND TSE_DateTime >= '2017-01-01' AND TSE_DateTime <= '2017-05-31'
ORDER	BY	TSE_ProdOrder ASC