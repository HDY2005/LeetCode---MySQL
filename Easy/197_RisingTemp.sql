-- Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).

-- Return the result table in any order.

Select today.id from Weather today CROSS JOIN Weather yesterday
where dateDiff(today.recordDate, yesterday.recordDate) = 1 AND today.temperature > yesterday.temperature