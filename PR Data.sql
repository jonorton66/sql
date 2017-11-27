SELECT *
FROM sl_PR_Data
WHERE PR_Production_Order >= '7186' AND PR_Production_Order <= '9999' AND PR_Pri_Out_Prev_Wt != '0'
ORDER BY PR_Production_Order ASC
