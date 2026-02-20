-- 1148. Article Views I
-- Problem Statement: find all the authors that viewed at least one of their own articles
-- Return the result table sorted by id in ascending order
-- Note that equal author_id and viewer_id indicate the same person

-- Approach:
-- Select distinct author_id as id from the Views table
-- Keep only those rows where author_id = viewer_id
-- And author_id is sorted in ascending order

SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY author_id;