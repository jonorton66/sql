SELECT PR_Production_Order, sum(PR_Sec_Out_Prev_Wt) AS Sec_WT, COUNT(PR_Sec_Out_Prev_Wt) AS SEC_#_Orders, 
sum(PR_Sec_Out_Prev_Wt)/COUNT(PR_Sec_Out_Prev_Wt) AS SEC_AVE, 
sum(PR_Pri_Out_Prev_Wt) AS Prim_WT, COUNT(PR_Pri_Out_Prev_Wt) AS PRI_#_Orders, sum(PR_Pri_Out_Prev_Wt)/COUNT(PR_Pri_Out_Prev_Wt) AS PRIM_AVE
FROM dbo.sl_PR_Data

WHERE PR_DateTime >= '12/01/15' AND PR_DateTime <= '1/19/17' AND PR_Production_Order <= '9999' AND (PR_OB_Name = 'PR_Sec_Out' OR PR_OB_Name = 'PR_Pri_Out')
--WHERE PR_Production_Order >= '7150' AND PR_Production_Order <= '9999' AND (PR_OB_Name = 'PR_Sec_Out' OR PR_OB_Name = 'PR_Pri_Out')
GROUP BY PR_Production_Order
ORDER BY PR_Production_Order ASC
