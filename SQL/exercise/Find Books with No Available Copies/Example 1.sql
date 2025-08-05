/**
Input:

library_books table:

+---------+------------------------+------------------+----------+------------------+--------------+
| book_id | title                  | author           | genre    | publication_year | total_copies |
+---------+------------------------+------------------+----------+------------------+--------------+
| 1       | The Great Gatsby       | F. Scott         | Fiction  | 1925             | 3            |
| 2       | To Kill a Mockingbird  | Harper Lee       | Fiction  | 1960             | 3            |
| 3       | 1984                   | George Orwell    | Dystopian| 1949             | 1            |
| 4       | Pride and Prejudice    | Jane Austen      | Romance  | 1813             | 2            |
| 5       | The Catcher in the Rye | J.D. Salinger    | Fiction  | 1951             | 1            |
| 6       | Brave New World        | Aldous Huxley    | Dystopian| 1932             | 4            |
+---------+------------------------+------------------+----------+------------------+--------------+
borrowing_records table:

+-----------+---------+---------------+-------------+-------------+
| record_id | book_id | borrower_name | borrow_date | return_date |
+-----------+---------+---------------+-------------+-------------+
| 1         | 1       | Alice Smith   | 2024-01-15  | NULL        |
| 2         | 1       | Bob Johnson   | 2024-01-20  | NULL        |
| 3         | 2       | Carol White   | 2024-01-10  | 2024-01-25  |
| 4         | 3       | David Brown   | 2024-02-01  | NULL        |
| 5         | 4       | Emma Wilson   | 2024-01-05  | NULL        |
| 6         | 5       | Frank Davis   | 2024-01-18  | 2024-02-10  |
| 7         | 1       | Grace Miller  | 2024-02-05  | NULL        |
| 8         | 6       | Henry Taylor  | 2024-01-12  | NULL        |
| 9         | 2       | Ivan Clark    | 2024-02-12  | NULL        |
| 10        | 2       | Jane Adams    | 2024-02-15  | NULL        |
+-----------+---------+---------------+-------------+-------------+
Output:

+---------+------------------+---------------+-----------+------------------+-------------------+
| book_id | title            | author        | genre     | publication_year | current_borrowers |
+---------+------------------+---------------+-----------+------------------+-------------------+
| 1       | The Great Gatsby | F. Scott      | Fiction   | 1925             | 3                 |
| 3       | 1984             | George Orwell | Dystopian | 1949             | 1                 |
+---------+------------------+---------------+-----------+------------------+-------------------+
 */
DROP TABLE IF EXISTS library_books;

CREATE TABLE
	library_books (book_id INT, title VARCHAR(255), author VARCHAR(255), genre VARCHAR(255), publication_year INT, total_copies INT);

INSERT INTO
	library_books (book_id, title, author, genre, publication_year, total_copies)
VALUES
	(1, 'The Great Gatsby', 'F. Scott', 'Fiction', 1925, 3),
	(2, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1960, 3),
	(3, '1984', 'George Orwell', 'Dystopian', 1949, 1),
	(4, 'Pride and Prejudice', 'Jane Austen', 'Romance', 1813, 2),
	(5, 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 1951, 1),
	(6, 'Brave New World', 'Aldous Huxley', 'Dystopian', 1932, 4);

DROP TABLE IF EXISTS borrowing_records;

CREATE TABLE
	borrowing_records (record_id INT, book_id INT, borrower_name VARCHAR(255), borrow_date DATE, return_date DATE);

INSERT INTO
	borrowing_records (record_id, book_id, borrower_name, borrow_date, return_date)
VALUES
	(1, 1, 'Alice Smith', '2024-01-15', NULL),
	(2, 1, 'Bob Johnson', '2024-01-20', NULL),
	(3, 2, 'Carol White', '2024-01-10', '2024-01-25'),
	(4, 3, 'David Brown', '2024-02-01', NULL),
	(5, 4, 'Emma Wilson', '2024-01-05', NULL),
	(6, 5, 'Frank Davis', '2024-01-18', '2024-02-10'),
	(7, 1, 'Grace Miller', '2024-02-05', NULL),
	(8, 6, 'Henry Taylor', '2024-01-12', NULL),
	(9, 2, 'Ivan Clark', '2024-02-12', NULL),
	(10, 2, 'Jane Adams', '2024-02-15', NULL);

