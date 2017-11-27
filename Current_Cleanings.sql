:CONNECT 192.168.230.228 -U qa -P qa
SELECT *
FROM slCleaningCircuitTime
-- Uncomment this line to select current cleaning time frame -- WHERE CCT_StartTime >= '2016-01-01' AND CCT_StartTime <= '2016-01-31'
ORDER BY CCT_StartTime ASC