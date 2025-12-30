SELECT 
    [Region],
    [Category],
    ROUND(SUM([Transportation_Cost]), 2) AS [Total_Logistics_Cost],
    SUM([Units_Sold]) AS [Total_Units_Sold],
    ROUND(SUM([Transportation_Cost]) / SUM([Units_Sold]), 2) AS [Shipping_Cost_Per_Unit]
FROM [Inventory_SupplyChain_Dataset]
GROUP BY [Region], [Category]
ORDER BY [Shipping_Cost_Per_Unit] DESC;