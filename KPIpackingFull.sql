--:CONNECT 192.168.230.228 -U qa -P qa
SELECT     *, Quantity_FT*(ds_FT_Atago/100) AS Dry_Matter
FROM         slKPIPackingReport
WHERE		EX_ID BETWEEN '7314' AND '7320'
ORDER	BY	PA_StartDateTime ASC
