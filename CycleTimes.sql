--:CONNECT 192.168.230.228 -U qa -P qa
SELECT DISTINCT AA.PR_Production_Order, AA.PR_Blend_Code, AA.PR_Sec_Out_Prev_Time
FROM sl_PR_Data AA

INNER JOIN 
	(SELECT DISTINCT PR_Production_Order, MAX(PR_Sec_Out_Prev_Time) AS MaxCycleTime
	FROM sl_PR_Data
	GROUP BY PR_Production_Order) groupedAA
ON AA.PR_Production_Order = groupedAA.PR_Production_Order
AND AA.PR_Sec_Out_Prev_Time = groupedAA.MaxCycleTime

--WHERE AA.PR_OB_Name = 'PR_SEC_OUT' AND AA.PR_Production_Order >= '7149' AND AA.PR_Production_Order <= '9999'
WHERE AA.PR_OB_Name = 'PR_SEC_OUT' AND AA.PR_DateTime >= '2017-01-01' AND AA.PR_DateTime <= '2017-05-31' AND AA.PR_Production_Order <= '9999' AND PR_Blend_Code = '632'

ORDER BY AA.PR_Production_Order ASC