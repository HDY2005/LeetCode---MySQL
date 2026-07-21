-- Report for every three line segments whether they can form a triangle.

-- Return the result table in any order.

-- The result format is in the following example.

select x,y,z, 
(IF (x+y > z AND y+z > x AND z+x > y, "Yes", "No")) 
as triangle 
FROM Triangle
