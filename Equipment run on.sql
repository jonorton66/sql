--Main Table: Put all visable columns after SELECT
--TODO: add in TMM_OB_Name, TMF_OB_Name, TSP_OB_Name
SELECT TOP (10000) TEB_DateTime, TEB_ProdOrder, TEB_OB_Name, TSC_OB_Name, TEV_OB_Name, TSE_OB_Name, TTL_OB_Name
FROM slTS_EB
--Join EV Table with EB Table based on Production Order
FULL JOIN slTS_EV ON slTS_EB.TEB_ProdOrder = slTS_EV.TEV_ProdOrder
--Join MF Table with EB Table based on DateTime
FULL JOIN slTS_SE ON slTS_EB.TEB_ProdOrder = slTS_SE.TSE_ProdOrder
--Join SC Table with EB Table based on Prod Order
FULL JOIN slTS_SC ON slTS_EB.TEB_ProdOrder = slTS_SC.TSC_ProdOrder
--Join Tanklog with EB Table based on ProdOrder
FULL JOIN slTS_Tanklog ON slTS_EB.TEB_ProdOrder = slTS_Tanklog.TTL_ProdOrder

--Join MM Table with EB Table based on DateTime
--INNER JOIN slTS_MM ON slTS_MF.TMF_DateTime = slTS_MM.TMM_DateTime
WHERE TEB_ProdOrder = '7902'
ORDER BY TEB_DateTime DESC