-- 1581. Customer Who Visited but Did Not Make Any Transactions
-- Problem Statement: find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.
-- Return the result table sorted in any order.

-- Approach:
-- Select customer_id and count_no_trans from the Visits and the Transactions table
-- Using left join on the basis of visit_id to get the desired result where transaction_id is null


SELECT Visits.customer_id, COUNT(Visits.visit_id) AS count_no_trans
FROM Visits
LEFT JOIN Transactions
USING (visit_id)
WHERE Transactions.transaction_id IS NULL
GROUP BY customer_id;