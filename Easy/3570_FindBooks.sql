-- Write a solution to find all books that are currently borrowed (not returned) and have zero copies available in the library.

-- A book is considered currently borrowed if there exists a borrowing record with a NULL return_date
-- Return the result table ordered by current borrowers in descending order, then by book title in ascending order.

-- The result format is in the following example.

SELECT lb.book_id, lb.title, lb.author, lb.genre, lb.publication_year, lb.total_copies AS current_borrowers FROM library_books lb JOIN borrowing_records br ON lb.book_id = br.book_id
WHERE br.return_date IS NULL
GROUP BY lb.book_id, lb.title, lb.author, lb.genre, lb.publication_year, lb.total_copies
HAVING COUNT(*) = lb.total_copies
ORDER BY current_borrowers DESC , lb.title ASC