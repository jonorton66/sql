--:CONNECT 192.168.230.228 -U qa -P qa
SELECT *
FROM dbo.slParticleSizeData
ORDER BY PSD_ImportDateTime ASC