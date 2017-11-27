:CONNECT 192.168.230.228 -U qa -P qa
SELECT COUNT (Recipe) AS Number_OF_Times_Cleaned
FROM batchhis 
WHERE lclTime > '2016-01-01' AND lclTime <= '2016-01-31' AND Unit LIKE 'SE1' 
AND Recipe LIKE '%LCU_CC_SE1_CLEANING_0-1%' OR Recipe LIKE '%LCU_CC_SE1_CLEANING_10-1%'