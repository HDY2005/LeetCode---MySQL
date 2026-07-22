-- Reformat the table such that there is a department id column and a revenue column for each month.

-- Return the result table in any order.


select id, 
MAX(IF(month = "Jan",revenue, NULL)) as Jan_Revenue,
Max(IF(month = "Feb",revenue, NULL)) as Feb_Revenue,
Max(IF(month = "Mar",revenue, NULL)) as Mar_Revenue,
Max(IF(month = "Apr",revenue, NULL)) as Apr_Revenue,
Max(IF(month = "May",revenue, NULL)) as May_Revenue,
Max(IF(month = "Jun",revenue, NULL)) as Jun_Revenue,
Max(IF(month = "Jul",revenue, NULL)) as Jul_Revenue,
Max(IF(month = "Aug",revenue, NULL)) as Aug_Revenue,
Max(IF(month = "Sep",revenue, NULL)) as Sep_Revenue,
Max(IF(month = "Oct",revenue, NULL)) as Oct_Revenue,
Max(IF(month = "Nov",revenue, NULL)) as Nov_Revenue,
Max(IF(month = "Dec",revenue, NULL)) as Dec_Revenue
FROM Department

Group by id