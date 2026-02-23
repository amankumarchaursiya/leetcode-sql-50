-- 1068. Product Sales Analysis I
-- Problem Statement: Report the product_name, year, and price for each sale_id in the Sales table.
-- Return the resulting table in any order.

-- Approach:
-- Select product_name, year and price from the Sales and the Product table
-- Using inner join on the basis of product_id to get the desired result

SELECT product_name, year, price
FROM Sales
INNER JOIN Product
USING(product_id);