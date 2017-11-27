--:CONNECT 192.168.230.228 -U qa -P qa
SELECT * --CCTH_Circuit AS Item, CCTH_StartTime AS StartDate_and_Time, CCTH_Description AS Description
FROM slCleaningCircuitTimeHist
WHERE CCTH_StartTime >= '2015-10-01' AND CCTH_StartTime < '2015-11-01' --AND CCTH_StartTime <= '2016-02-29'
ORDER BY CCTH_StartTime ASC