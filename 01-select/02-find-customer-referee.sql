-- 584. Find Customer Referee
-- Problem Statement: Find the names of the customer that are either:
-- 1. referred by any customer with id != 2
-- 2. not referred by any customer
-- Return the result table in any order

-- Approach:
-- Select name from the Customer table
-- Keep only those rows where referee_id != 2 or refree_id is null

SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL;