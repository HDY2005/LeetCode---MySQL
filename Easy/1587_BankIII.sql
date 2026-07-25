-- Write a solution to report the name and balance of users with a balance higher than 10000. The balance of an account is equal to the sum of the amounts of all transactions involving that account.

-- Return the result table in any order.

select name, SUM(t.amount) as balance from Users u JOIN Transactions t ON u.account = t.account
group by u.account, u.name
having SUM(t.amount)>10000