:CONNECT 192.168.230.228 -U qa -P qa
SELECT PR_DateTime, PR_Production_Order, PR_Blend_Code, PR_Sec_Out_Prev_Time
FROM sl_PR_Data
WHERE PR_DateTime >= '2013-01-01' AND PR_DateTime <= '2013-12-31' AND PR_OB_Name = 'PR_SEC_OUT' AND PR_Blend_Code = '604'
ORDER BY PR_Production_Order ASC