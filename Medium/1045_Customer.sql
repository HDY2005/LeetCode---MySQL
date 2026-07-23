-- Write a solution to report the customer ids from the Customer table that bought all the products in the Product table.

-- Return the result table in any order.

select c.customer_id from Customer c JOIN Product p ON c.product_key = p.product_key
group by c.customer_id 
having count(distinct c.product_key) = (SELECT COUNT(*) FROM Product)