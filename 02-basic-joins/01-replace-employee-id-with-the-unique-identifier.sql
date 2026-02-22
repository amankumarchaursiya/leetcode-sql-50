-- 1378. Replace Employee ID With The Unique Identifier
-- Problem Statement: show the unique ID of each user, If a user does not have a unique ID replace just show null.
-- Return the result table in any order.

-- Approach:
-- Select unique_id and name from the EmployeeUNI and Employees table respectively
-- Using left join on the basis of id to get the null if employees do not have unique_id


-- Method 01
SELECT EmployeeUNI.unique_id, Employees.name
FROM Employees
LEFT JOIN EmployeeUNI
ON Employees.id = EmployeeUNI.id;

-- Method 02
SELECT unique_id, name
FROM Employees
LEFT JOIN EmployeeUNI
ON Employees.id = EmployeeUNI.id;

-- Method 03
SELECT EmployeeUNI.unique_id, Employees.name
FROM Employees
LEFT JOIN EmployeeUNI
USING (id);

-- Method 04
SELECT unique_id, name
FROM Employees
LEFT JOIN EmployeeUNI
USING (id);

-- Method 05
SELECT eu.unique_id, e.name
FROM Employees AS e
LEFT JOIN EmployeeUNI AS eu
ON e.id = eu.id;

-- Method 06
SELECT eu.unique_id, e.name
FROM Employees e
LEFT JOIN EmployeeUNI eu
ON e.id = eu.id;