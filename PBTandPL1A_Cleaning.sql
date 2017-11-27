:CONNECT 192.168.230.228 -U qa -P qa
SELECT lclTime AS Date_Time, BatchID, Recipe, PValueAPI
FROM batchhis
WHERE BatchID LIKE '%pl1a%' AND PValueAPI LIKE '%CLEANING_0%' AND lclTime >= '2016-01-31' AND lclTime <= '2016-02-29'
ORDER BY lclTime ASC