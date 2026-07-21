-- Write a solution to report the product_name, year, and price for each sale_id in the Sales table.

-- Return the resulting table in any order.

-- The result format is in the following exampl

select product_name, year, price from Sales s JOIN Product p ON s.product_id = p.product_id
