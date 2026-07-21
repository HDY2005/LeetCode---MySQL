-- Write a solution to find the names of all the salespersons who did not have any orders related to the company with the name "RED".

-- Return the result table in any order.


select s.name from SalesPerson s JOIN Orders o ON s.sales_id = o.sales_id JOIN Company c on (o.com_id = c.com_id and c.name = 'RED') 
where o.sales_id is null

select salesperson.name
from orders o join company c on (o.com_id = c.com_id and c.name = 'RED')
right join salesperson on salesperson.sales_id = o.sales_id
where o.sales_id is null