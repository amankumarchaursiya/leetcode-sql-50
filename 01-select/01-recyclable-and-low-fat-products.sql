-- 1757. Recyclable and Low Fat Products
-- Problem Statement: find the ids of products that are both low fat and recyclable

-- Approach:
-- Select product_id from the Products table
-- Keep only those rows where low_fats = 'Y' and recyclable = 'Y'

SELECT product_id
FROM Products
WHERE low_fats = 'Y'
AND recyclable = 'Y';