-- Write a solution to find the average selling price for each product. average_price should be rounded to 2 decimal places. If a product does not have any sold units, its average selling price is assumed to be 0.

-- Return the result table in any order.


select p.product_id , 

round(ifnull(sum(p.price * s.units )/ sum(s.units),0),2) as average_price 
from Prices p LEFT JOIN UnitsSold s ON p.product_id = s.product_id
AND s.purchase_date BETWEEN p.start_date AND p.end_date

group by p.product_id