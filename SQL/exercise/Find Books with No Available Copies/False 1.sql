/**
Input:

library_books table:

| book_id | title                    | author              | genre       | publication_year | total_copies |
| ------- | ------------------------ | ------------------- | ----------- | ---------------- | ------------ |
| 1       | Becoming                 | Michelle Obama      | Non-Fiction | 1994             | 2            |
| 2       | The Catcher in the Rye   | J.D. Salinger       | Fiction     | 1904             | 1            |
| 3       | Educated                 | Tara Westover       | Non-Fiction | 1964             | 3            |
| 4       | Thinking Fast and Slow   | Daniel Kahneman     | Non-Fiction | 1983             | 4            |
| 5       | Harry Potter             | J.K. Rowling        | Fantasy     | 1957             | 3            |
| 6       | Great Expectations       | Charles Dickens     | Fiction     | 2003             | 2            |
| 7       | The Chronicles of Narnia | C.S. Lewis          | Fantasy     | 1935             | 2            |
| 8       | Outlander                | Diana Gabaldon      | Romance     | 1911             | 2            |
| 9       | The Time Traveler's Wife | Audrey Niffenegger  | Romance     | 1977             | 2            |
| 10      | Wuthering Heights        | Emily Bronte        | Fiction     | 1958             | 3            |
| 11      | The Lord of the Rings    | J.R.R. Tolkien      | Fantasy     | 1970             | 2            |
| 12      | The Fault in Our Stars   | John Green          | Romance     | 1924             | 4            |
| 13      | To Kill a Mockingbird    | Harper Lee          | Fiction     | 1998             | 2            |
| 14      | The Great Gatsby         | F. Scott Fitzgerald | Fiction     | 2010             | 2            |
| 15      | Me Before You            | Jojo Moyes          | Romance     | 1981             | 4            |
| 16      | The Immortal Life        | Rebecca Skloot      | Non-Fiction | 1945             | 2            |
| 17      | The Notebook             | Nicholas Sparks     | Romance     | 1977             | 3            |
| 18      | Sapiens                  | Yuval Noah Harari   | Non-Fiction | 1959             | 2            |
borrowing_records table:

| record_id | book_id | borrower_name    | borrow_date | return_date |
| --------- | ------- | ---------------- | ----------- | ----------- |
| 1         | 4       | Mia Anderson     | 2024-01-05  | 2024-01-30  |
| 2         | 4       | Wendy Jackson    | 2024-01-14  | 2024-02-02  |
| 3         | 5       | Emma Anderson    | 2024-01-09  | 2024-02-02  |
| 4         | 5       | Ruby Anderson    | 2024-02-17  | 2024-03-13  |
| 5         | 5       | Mia White        | 2024-01-15  | null        |
| 6         | 6       | Quinn Garcia     | 2024-01-06  | null        |
| 7         | 8       | Uma Wilson       | 2024-02-20  | null        |
| 8         | 8       | Victor Martin    | 2024-02-08  | null        |
| 9         | 10      | Mia Rodriguez    | 2024-01-30  | 2024-02-23  |
| 10        | 10      | Alice Lee        | 2024-02-16  | 2024-03-11  |
| 11        | 10      | Yolanda Anderson | 2024-02-19  | 2024-02-29  |
| 12        | 11      | Noah Wilson      | 2024-01-30  | null        |
| 13        | 11      | Alice Hall       | 2024-02-26  | null        |
| 14        | 11      | Xavier Anderson  | 2024-02-02  | null        |
| 15        | 12      | David Lewis      | 2024-01-20  | null        |
| 16        | 12      | Quinn Rodriguez  | 2024-01-13  | 2024-01-25  |
| 17        | 12      | Ruby Martinez    | 2024-02-28  | 2024-03-16  |
| 18        | 12      | Paul Smith       | 2024-01-08  | null        |
| 19        | 13      | Henry Johnson    | 2024-01-16  | null        |
| 20        | 13      | Carol Brown      | 2024-02-16  | 2024-02-25  |
| 21        | 14      | Emma Lee         | 2024-01-31  | null        |
| 22        | 15      | Ivy Martinez     | 2024-02-25  | 2024-03-09  |
| 23        | 16      | Wendy Thomas     | 2024-01-26  | null        |
| 24        | 17      | Olivia Martinez  | 2024-01-29  | 2024-02-12  |
| 25        | 17      | Carol Jackson    | 2024-01-02  | 2024-01-16  |
| 26        | 18      | Henry Smith      | 2024-01-05  | null        |
| 27        | 18      | Wendy Lewis      | 2024-01-04  | null        |
| 28        | 18      | Henry Brown      | 2024-02-27  | 2024-03-15  |
| 29        | 18      | Carol Martinez   | 2024-01-16  | 2024-02-07  |
Output:

| book_id | title     | author            | genre       | publication_year | current_borrowers |
| ------- | --------- | ----------------- | ----------- | ---------------- | ----------------- |
| 8       | Outlander | Diana Gabaldon    | Romance     | 1911             | 2                 |
| 18      | Sapiens   | Yuval Noah Harari | Non-Fiction | 1959             | 2                 |
 */
DROP TABLE IF EXISTS library_books;

CREATE TABLE
	library_books (book_id INT, title VARCHAR(255), author VARCHAR(255), genre VARCHAR(255), publication_year INT, total_copies INT);

INSERT INTO
	library_books (book_id, title, author, genre, publication_year, total_copies)
VALUES
	(1, 'Becoming', 'Michelle Obama', 'Non-Fiction', 1994, 2),
	(2, 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 1904, 1),
	(3, 'Educated', 'Tara Westover', 'Non-Fiction', 1964, 3),
	(4, 'Thinking Fast and Slow', 'Daniel Kahneman', 'Non-Fiction', 1983, 4),
	(5, 'Harry Potter', 'J.K. Rowling', 'Fantasy', 1957, 3),
	(6, 'Great Expectations', 'Charles Dickens', 'Fiction', 2003, 2),
	(7, 'The Chronicles of Narnia', 'C.S. Lewis', 'Fantasy', 1935, 2),
	(8, 'Outlander', 'Diana Gabaldon', 'Romance', 1911, 2),
	(9, "The Time Traveler's Wife", 'Audrey Niffenegger', 'Romance', 1977, 2),
	(10, 'Wuthering Heights', 'Emily Bronte', 'Fiction', 1958, 3),
	(11, 'The Lord of the Rings', 'J.R.R. Tolkien', 'Fantasy', 1970, 2),
	(12, 'The Fault in Our Stars', 'John Green', 'Romance', 1924, 4),
	(13, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1998, 2),
	(14, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 2010, 2),
	(15, 'Me Before You', 'Jojo Moyes', 'Romance', 1981, 4),
	(16, 'The Immortal Life', 'Rebecca Skloot', 'Non-Fiction', 1945, 2),
	(17, 'The Notebook', 'Nicholas Sparks', 'Romance', 1977, 3),
	(18, 'Sapiens', 'Yuval Noah Harari', 'Non-Fiction', 1959, 2);

DROP TABLE IF EXISTS borrowing_records;

CREATE TABLE
	borrowing_records (record_id INT, book_id INT, borrower_name VARCHAR(255), borrow_date DATE, return_date DATE);

INSERT INTO
	borrowing_records (record_id, book_id, borrower_name, borrow_date, return_date)
VALUES
	(1, 4, 'Mia Anderson', '2024-01-05', '2024-01-30'),
	(2, 4, 'Wendy Jackson', '2024-01-14', '2024-02-02'),
	(3, 5, 'Emma Anderson', '2024-01-09', '2024-02-02'),
	(4, 5, 'Ruby Anderson', '2024-02-17', '2024-03-13'),
	(5, 5, 'Mia White', '2024-01-15', NULL),
	(6, 6, 'Quinn Garcia', '2024-01-06', NULL),
	(7, 8, 'Uma Wilson', '2024-02-20', NULL),
	(8, 8, 'Victor Martin', '2024-02-08', NULL),
	(9, 10, 'Mia Rodriguez', '2024-01-30', '2024-02-23'),
	(10, 10, 'Alice Lee', '2024-02-16', '2024-03-11'),
	(11, 10, 'Yolanda Anderson', '2024-02-19', '2024-02-29'),
	(12, 11, 'Noah Wilson', '2024-01-30', NULL),
	(13, 11, 'Alice Hall', '2024-02-26', NULL),
	(14, 11, 'Xavier Anderson', '2024-02-02', NULL),
	(15, 12, 'David Lewis', '2024-01-20', NULL),
	(16, 12, 'Quinn Rodriguez', '2024-01-13', '2024-01-25'),
	(17, 12, 'Ruby Martinez', '2024-02-28', '2024-03-16'),
	(18, 12, 'Paul Smith', '2024-01-08', NULL),
	(19, 13, 'Henry Johnson', '2024-01-16', NULL),
	(20, 13, 'Carol Brown', '2024-02-16', '2024-02-25'),
	(21, 14, 'Emma Lee', '2024-01-12', NULL),
	(22, 15, 'Ivy Martinez', '2024-02-25', '2024-03-09'),
	(23, 16, 'Wendy Thomas', '2024-01-26', NULL),
	(24, 17, 'Olivia Martinez', '2024-01-29', '2024-02-12'),
	(25, 17, 'Carol Jackson', '2024-01-02', '2024-01-16'),
	(26, 18, 'Henry Smith', '2024-01-05', NULL),
	(27, 18, 'Wendy Lewis', '2024-01-04', NULL),
	(28, 18, 'Henry Brown', '2024-02-27', '2024-03-15'),
	(29, 18, 'Carol Martinez', '2024-01-16', '2024-02-07');

