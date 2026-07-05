USE project_supply_chain_data;

SHOW TABLES;

SELECT * 
FROM supply_chain_data
LIMIT 10;

-- Total products
SELECT COUNT(*) AS total_products
FROM supply_chain_data;

-- Top revenue product types
SELECT `Product type`,
SUM(`Revenue generated`) AS total_revenue
FROM supply_chain_data
GROUP BY `Product type`
ORDER BY total_revenue DESC;

-- Average shipping cost
SELECT AVG(`Shipping costs`) AS avg_shipping_cost
FROM supply_chain_data;

-- Top suppliers
SELECT `Supplier name`,
SUM(`Revenue generated`) AS revenue
FROM supply_chain_data
GROUP BY `Supplier name`
ORDER BY revenue DESC
LIMIT 10;

-- Highest defect rate products
SELECT SKU,
`Defect rates`
FROM supply_chain_data
ORDER BY `Defect rates` DESC
LIMIT 10;

-- Shipping cost by transport mode
SELECT `Transportation modes`,
AVG(`Shipping costs`) AS avg_cost
FROM supply_chain_data
GROUP BY `Transportation modes`;

-- Product availability
SELECT Availability,
COUNT(*) AS total
FROM supply_chain_data
GROUP BY Availability;

-- Average manufacturing cost
SELECT AVG(`Manufacturing costs`) AS avg_cost
FROM supply_chain_data;

-- Stock level analysis
SELECT SKU,
`Stock levels`
FROM supply_chain_data
ORDER BY `Stock levels` ASC;

-- Lead time analysis
SELECT AVG(`Lead times`) AS avg_lead_time
FROM supply_chain_data;


