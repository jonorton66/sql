--:CONNECT 192.168.230.228 -U qa -P qa
SELECT     * --EX_StartDateTime, EX_ID, BlendCode, PrimYield, SecYield, PrimYield + SecYield AS TotalYield
FROM         slKPIExtractionOrderCalc
--WHERE		EX_StartDateTime >= '2015-12-01' AND EX_StartDateTime <= '2016-12-31' AND BlendCode = '547'
WHERE EX_ID = '8080'
ORDER	BY	EX_StartDateTime ASC