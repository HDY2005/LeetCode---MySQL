select customer_number from Orders
group by customer_number

order by count(*) DESC

Limit 1