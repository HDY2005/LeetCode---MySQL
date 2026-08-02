-- Write a solution to analyze AI prompt usage patterns based on the following requirements:

-- For each user, calculate the total number of prompts they have submitted.
-- For each user, calculate the average tokens used per prompt (Rounded to 2 decimal places).
-- Only include users who have submitted at least 3 prompts.
-- Only include users who have submitted at least one prompt with tokens greater than their own average token usage.
-- Return the result table ordered by average tokens in descending order, and then by user_id in ascending order.

SELECT user_id, COUNT(prompt) prompt_count, ROUND(AVG(tokens),2) avg_tokens
FROM prompts
GROUP BY user_id
HAVING COUNT(prompt) > 2 AND MAX(tokens) > AVG(tokens)
ORDER BY avg_tokens DESC, user_id;