--:CONNECT 192.168.230.228 -U qa -P qa
SELECT     EX_ID, PA_StartDateTime AS Date, BlendCode AS Blend, Quantity_FT AS FT_Quantity, ds_FT_Atago AS DM_Atago, Quantity_FT*(ds_FT_Atago/100) AS Dry_Matter
FROM         slKPIPackingReport
WHERE		PA_StartDateTime >= '2016-09-01'
ORDER	BY	PA_StartDateTime ASC
