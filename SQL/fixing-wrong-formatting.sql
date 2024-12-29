-- Fixing Wrong Formatting

-- Wrong format for Order Date
SELECT DISTINCT `Order Date`,`Ship Date`
FROM global_superstore
LIMIT 10;

UPDATE global_superstore
SET `Order Date` = STR_TO_DATE(`Order Date`, '%d-%m-%Y')
WHERE STR_TO_DATE(`Order Date`, '%d-%m-%Y') IS NOT NULL;

ALTER TABLE global_superstore 
MODIFY COLUMN `Order Date` DATE;


-- Wrong format for Ship Date
UPDATE global_superstore
SET `Ship Date` = STR_TO_DATE(`Ship Date`, '%d-%m-%Y')
WHERE STR_TO_DATE(`Ship Date`, '%d-%m-%Y') IS NOT NULL;

ALTER TABLE global_superstore 
MODIFY COLUMN `Ship Date` DATE;
