--SELECT     *, Quantity_FT*(ds_FT_Atago/100) AS Dry_Matter_FT, Quantity_MT*(ds_MT_Atago/100) AS Dry_Matter_MT, PrimYield+SecYield AS Total_Yield
SELECT		EX_StartDateTime, EX_ID, BlendCode
FROM        slKPIExtractionOrderCalc

WHERE		EX_StartDateTime >= '2016-01-01' AND EX_StartDateTime <= '2017-07-31'
