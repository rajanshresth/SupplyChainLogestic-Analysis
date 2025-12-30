CREATE TABLE supply_chain_data (
    order_date DATE,
    region VARCHAR(50),
    category VARCHAR(50),
    supplier VARCHAR(100),
    warehouse VARCHAR(50),
    order_status VARCHAR(50),
    units_sold INT,
    inventory_level INT,
    transportation_cost NUMERIC(15,2),
    order_accuracy BOOLEAN,
    lead_time_days INT,
    backorder BOOLEAN,
    cogs NUMERIC(15,2),
    average_inventory NUMERIC(15,2),
    warehouse_capacity INT
);