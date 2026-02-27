-- 577. Employee Bonus
-- Problem Statement: report the name and bonus amount of each employee who satisfies either of the following:
-- The employee has a bonus less than 1000.
-- The employee did not get any bonus.
-- Return the result table in any order.

-- Approach:
-- Select Employee.name and Bonus.bonus from the Employee table
-- Perform a LEFT JOIN with the Bonus table using empId (so all employees are included, even if they have no bonus record)
-- Replace NULL bonus values with 0 using IFNULL
-- Keep only those rows where the bonus (or 0 if NULL) is less than 1000

SELECT Employee.name, Bonus.bonus
FROM Employee
LEFT JOIN Bonus
  USING (empId)
WHERE IFNULL(Bonus.bonus, 0) < 1000;