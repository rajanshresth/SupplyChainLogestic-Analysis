SELECT 
    [Warehouse],
    [Region],
    AVG([Inventory_Level]) AS [Avg_Inventory],
    AVG([Warehouse_Capacity]) AS [Max_Capacity],
    ROUND((AVG(CAST([Inventory_Level] AS FLOAT)) / AVG([Warehouse_Capacity])) * 100, 2) AS [Utilization_%]
FROM [Inventory_SupplyChain_Dataset]
GROUP BY [Warehouse], [Region]
ORDER BY [Utilization_%] DESC;