-- 1683. Invalid Tweets
-- Problem Statement: find the IDs of the invalid tweets.
-- The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.

-- Approach:
-- Select tweet_id from the Tweets table
-- Keep only those rows where length of content > 15

SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;