--:CONNECT 192.168.230.228 -U qa -P qa

SELECT slCleaningCircuitTime.CCT_Circuit AS Current_Item, slCleaningCircuitTime.CCT_StartTime AS Current_StartTime, 
slCleaningCircuitTime.CCT_DrainEnd AS Current_EndTime, slCleaningCircuitTime.CCT_Description AS Current_Description, 
slCleaningCircuitTimeHist.CCTH_Circuit AS HIST_Item, slCleaningCircuitTimeHist.CCTH_StartTime AS HIST_StartTime, 
slCleaningCircuitTimeHist.CCTH_DrainEnd AS HIST_EndTime, slCleaningCircuitTimeHist.CCTH_Description AS HIST_Description

FROM slCleaningCircuitTime
INNER JOIN slCleaningCircuitTimeHist

ON slCleaningCircuitTime.CCT_Circuit=slCleaningCircuitTimeHist.CCTH_Circuit

--Uncomment the lines below to select current cleaning time frame -- 
WHERE CCT_StartTime >= '2016-05-01' AND CCTH_StartTime >= '2016-05-01' AND CCT_StartTime <= '2016-06-01' AND CCTH_StartTime <= '2016-06-01'
ORDER BY CCT_StartTime ASC, CCTH_StartTime ASC