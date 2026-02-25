-- 197. Rising Temperature
-- Problem Statement: find all dates' id with higher temperatures compared to its previous dates (yesterday).
-- Return the result table in any order.

-- Approach:
-- Select id from the Weather table as w1
-- Self join the Weather table as w2
-- Join on the condition where DATEDIFF(w1.recordDate, w2.recordDate) = 1
-- Compare the temperature where w1.temperature > w2.temperature
-- Return the ids where the temperature is higher than the previous day

SELECT w1.id
FROM Weather w1
JOIN Weather w2
ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
WHERE w1.temperature > w2.temperature;