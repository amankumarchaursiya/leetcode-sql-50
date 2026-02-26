-- 1661. Average Time of Process per Machine
-- Problem Statement: find the average time each machine takes to complete a process.
-- The time to complete a process is the 'end' timestamp minus the 'start' timestamp. The average time is calculated by the total time to complete every process on the machine divided by the number of processes that were run.
-- The resulting table should have the machine_id along with the average time as processing_time, which should be rounded to 3 decimal places.
-- Return the result table in any order.

-- Approach:
-- Select records from the Activity table as StartActivity where activity_type = 'start'
-- Self join the Activity table as EndActivity
-- Join on matching machine_id and process_id to pair each start with its corresponding end
-- Filter EndActivity where activity_type = 'end'
-- Calculate the time difference using (EndActivity.timestamp - StartActivity.timestamp)
-- Compute the average processing time for each machine_id using AVG()
-- Round the result to 3 decimal places using ROUND()
-- Group the result by machine_id

SELECT
  StartActivity.machine_id,
  ROUND(
    AVG(EndActivity.timestamp - StartActivity.timestamp),
    3
  ) AS processing_time
FROM Activity AS StartActivity
INNER JOIN Activity AS EndActivity
  USING (machine_id, process_id)
WHERE
  StartActivity.activity_type = 'start'
  AND EndActivity.activity_type = 'end'
GROUP BY 1;