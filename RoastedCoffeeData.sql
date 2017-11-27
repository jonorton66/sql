
:CONNECT 192.168.230.228 -U qa -P qa
SELECT *
FROM  slExtractionOrders
WHERE (EX_ID>='7010') 