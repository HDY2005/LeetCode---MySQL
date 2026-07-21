-- Write a solution to report the movies with an odd-numbered ID and a description that is not "boring".

-- Return the result table ordered by rating in descending order.

-- The result format is in the following example.

Select id, movie, description, rating from Cinema 
having id%2 != 0 AND description != "boring"
order by rating desc