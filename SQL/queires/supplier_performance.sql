SELECT 
    [Supplier],
    COUNT(*) AS [Total_Orders],
    AVG([Lead_Time_Days]) AS [Avg_Lead_Time],
    ROUND(AVG(CAST([Order_Accuracy] AS FLOAT)) * 100, 2) AS [Accuracy_Rate_%],
    ROUND(AVG(CAST([Backorder] AS FLOAT)) * 100, 2) AS [Backorder_Rate_%]
FROM [Inventory_SupplyChain_Dataset]
GROUP BY [Supplier]
ORDER BY [Accuracy_Rate_%] DESC;