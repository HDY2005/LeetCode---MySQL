-- The cancellation rate is computed by dividing the number of canceled (by client or driver) requests with unbanned users by the total number of requests with unbanned users on that day.

-- Write a solution to find the cancellation rate of requests with unbanned users (both client and driver must not be banned) each day between "2013-10-01" and "2013-10-03" with at least one trip. Round Cancellation Rate to two decimal points.

-- Return the result table in any order.


SELECT
    request_at AS Day,
    ROUND(
        SUM(
            CASE
                WHEN status IN ('cancelled_by_driver', 'cancelled_by_client')
                THEN 1
                ELSE 0
            END
        ) * 1.0 / COUNT(*),
        2
    ) AS "Cancellation Rate"
FROM Trips t
JOIN Users uc
    ON t.client_id = uc.users_id
JOIN Users ud
    ON t.driver_id = ud.users_id
WHERE uc.banned = 'No'
  AND ud.banned = 'No'
  AND request_at BETWEEN '2013-10-01' AND '2013-10-03'
GROUP BY request_at
ORDER BY request_at;