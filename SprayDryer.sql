SELECT *
FROM dbo.slTS_SP
--WHERE TSP_DateTime >= '2016-9-19' AND TSP_DateTime <= '2016-9-20'
WHERE TSP_ProdOrder > '2128' AND TSP_ProdOrder < '2131'
ORDER BY TSP_ProdOrder ASC