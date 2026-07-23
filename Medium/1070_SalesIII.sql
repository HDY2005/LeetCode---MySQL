-- Write a solution to find all sales that occurred in the first year each product was sold.

-- For each product_id, identify the earliest year it appears in the Sales table.

-- Return all sales entries for that product in that year.

-- Return a table with the following columns: product_id, first_year, quantity, and price.

select s.product_id, s.year as first_year, s.quantity, s.price from sales s JOIN (
Select s2.product_id, min(year) as first_year FROM SALES s2
group by s2.product_id
) t 
ON s.product_id = t.product_id AND s.year = t.first_year