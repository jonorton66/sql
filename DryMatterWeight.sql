--CONNECT 192.168.230.228
SELECT a.*, b.*
FROM ( 
	SELECT SUM(PR_Sec_Out_Prev_Wt+PR_Pri_Out_Prev_Wt) AS Outlet_Weight
	FROM sl_PR_Data
	GROUP BY PR_Production_Order
	) a
JOIN (
	SELECT KG_DS_Extract
	FROM slKPIExtractionOrderCalc
	) b