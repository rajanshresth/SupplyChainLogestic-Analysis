SELECT 
    [Category],
    SUM([Cost_of_Goods_Sold_COGS]) AS [Total_COGS],
    AVG([Average_Inventory]) AS [Avg_Inventory],
    ROUND(SUM([Cost_of_Goods_Sold_COGS]) / NULLIF(AVG([Average_Inventory]), 0), 2) AS [Inventory_Turnover]
FROM [Inventory_SupplyChain_Dataset]
GROUP BY [Category]
ORDER BY [Inventory_Turnover] DESC;