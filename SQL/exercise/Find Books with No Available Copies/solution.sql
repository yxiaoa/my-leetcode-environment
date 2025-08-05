SELECT
	b.book_id,
	b.title,
	b.author,
	b.genre,
	b.publication_year,
	COUNT(br.record_id) AS current_borrowers
FROM
	library_books b
JOIN
	borrowing_records br ON b.book_id = br.book_id
WHERE
	br.return_date IS NULL
GROUP BY
	b.book_id,
	b.title,
	b.author,
	b.genre,
	b.publication_year,
	b.total_copies
HAVING
	COUNT(br.record_id) = b.total_copies
ORDER BY
	current_borrowers DESC,
	b.title ASC;

