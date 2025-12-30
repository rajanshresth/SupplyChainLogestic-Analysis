SELECT 
    [Region],
    [Category],
    COUNT(*) AS [Total_Orders],
    SUM(CASE WHEN [Backorder] = 'TRUE' THEN 1 ELSE 0 END) AS [Backorder_Count],
    ROUND(CAST(SUM(CASE WHEN [Backorder] = 'TRUE' THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*) * 100, 2) AS [Backorder_Risk_%]
FROM [Inventory_SupplyChain_Dataset]
GROUP BY [Region], [Category]
HAVING SUM(CASE WHEN [Backorder] = 'TRUE' THEN 1 ELSE 0 END) > 0
ORDER BY [Backorder_Risk_%] DESC;