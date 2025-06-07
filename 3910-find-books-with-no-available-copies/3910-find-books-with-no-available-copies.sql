WITH CTE AS (
    SELECT
        lb.book_id,
        lb.title,
        lb.author,
        lb.genre,
        lb.publication_year,
        lb.total_copies,
        br.record_id,
        br.borrower_name,
        br.borrow_date,
        br.return_date
    FROM
        library_books AS lb
    JOIN
        borrowing_records AS br ON lb.book_id = br.book_id
    WHERE
        br.return_date IS NULL
)
SELECT
    CTE.book_id,
    CTE.title,
    CTE.author,
    CTE.genre,
    CTE.publication_year,
    COUNT(CTE.record_id) AS current_borrowers
FROM
    CTE
GROUP BY
    CTE.book_id, CTE.title, CTE.author, CTE.genre, CTE.publication_year, CTE.total_copies
HAVING
    COUNT(CTE.record_id) = CTE.total_copies 
ORDER BY
    current_borrowers DESC,
    CTE.title ASC; 