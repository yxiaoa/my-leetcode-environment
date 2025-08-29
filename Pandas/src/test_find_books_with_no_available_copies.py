import pandas as pd
import unittest
from exercise.find_books_with_no_available_copies import find_books_with_no_available_copies


class TestFindBooksWithNoAvailableCopies(unittest.TestCase):
    '''
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
    '''


    def test_example(self):
        library_books_data = {
            'book_id': [1, 2, 3, 4, 5, 6],
            'title': ['The Great Gatsby', 'To Kill a Mockingbird', '1984', 'Pride and Prejudice', 'The Catcher in the Rye', 'Brave New World'],
            'author': ['F. Scott', 'Harper Lee', 'George Orwell', 'Jane Austen', 'J.D. Salinger', 'Aldous Huxley'],
            'genre': ['Fiction', 'Fiction', 'Dystopian', 'Romance', 'Fiction', 'Dystopian'],
            'publication_year': [1925, 1960, 1949, 1813, 1951, 1932],
            'total_copies': [3, 3, 1, 2, 1, 4]
        }
        borrowing_records_data = {
            'record_id': [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
            'book_id': [1, 1, 2, 3, 4, 5, 1, 6, 2, 2],
            'borrower_name': ['Alice Smith', 'Bob Johnson', 'Carol White', 'David Brown', 'Emma Wilson', 'Frank Davis', 'Grace Miller', 'Henry Taylor', 'Ivan Clark', 'Jane Adams'],
            'borrow_date': ['2024-01-15', '2024-01-20', '2024-01-10', '2024-02-01', '2024-01-05', '2024-01-18', '2024-02-05', '2024-01-12', '2024-02-12', '2024-02-15'],
            'return_date': [None, None, '2024-01-25', None, None, '2024-02-10', None, None, None, None]
        }

        library_books = pd.DataFrame(library_books_data)
        borrowing_records = pd.DataFrame(borrowing_records_data)

        expected_output = pd.DataFrame({
            'book_id': [1, 3],
            'title': ['The Great Gatsby', '1984'],
            'author': ['F. Scott', 'George Orwell'],
            'genre': ['Fiction', 'Dystopian'],
            'publication_year': [1925, 1949],
            'current_borrowers': [3, 1]
        })

        result = find_books_with_no_available_copies(
            library_books, borrowing_records)
        pd.testing.assert_frame_equal(result, expected_output)

    def test_false(self):
        '''
        Input

        library_books_data:

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

        borrowing_records_data:
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

        Expect
        | book_id | title     | author            | genre       | publication_year | current_borrowers |
        | ------- | --------- | ----------------- | ----------- | ---------------- | ----------------- |
        | 8       | Outlander | Diana Gabaldon    | Romance     | 1911             | 2                 |
        | 18      | Sapiens   | Yuval Noah Harari | Non-Fiction | 1959             | 2                 |
        '''
        library_books_data = {
            'book_id': [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18],
            'title': ['Becoming', 'The Catcher in the Rye', 'Educated', 'Thinking Fast and Slow', 'Harry Potter', 'Great Expectations', 'The Chronicles of Narnia', 'Outlander', 'The Time Traveler\'s Wife', 'Wuthering Heights', 'The Lord of the Rings', 'The Fault in Our Stars', 'To Kill a Mockingbird', 'The Great Gatsby', 'Me Before You', 'The Immortal Life', 'The Notebook', 'Sapiens'],
            'author': ['Michelle Obama', 'J.D. Salinger', 'Tara Westover', 'Daniel Kahneman', 'J.K. Rowling', 'Charles Dickens', 'C.S. Lewis', 'Diana Gabaldon', 'Audrey Niffenegger', 'Emily Bronte', 'J.R.R. Tolkien', 'John Green', 'Harper Lee', 'F. Scott Fitzgerald', 'Jojo Moyes', 'Rebecca Skloot', 'Nicholas Sparks', 'Yuval Noah Harari'],
            'genre': ['Non-Fiction', 'Fiction', 'Non-Fiction', 'Non-Fiction', 'Fantasy', 'Fiction', 'Fantasy', 'Romance', 'Romance', 'Fiction', 'Fantasy', 'Romance', 'Fiction', 'Fiction', 'Romance', 'Non-Fiction', 'Romance', 'Non-Fiction'],
            'publication_year': [1994, 1904, 1964, 1983, 1957, 2003, 1935, 1911, 1977, 1958, 1970, 1924, 1998, 2010, 1981, 1945, 1977, 1959],
            'total_copies': [2, 1, 3, 4, 3, 2, 2, 2, 2, 3, 2, 4, 2, 2, 4, 2, 3, 2]
        }
        borrowing_records_data = {
            'record_id': [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29],
            'book_id': [4, 4, 5, 5, 5, 6, 8, 8, 10, 10, 10, 11, 11, 11, 12, 12, 12, 12, 13, 13, 14, 15, 16, 17, 17, 18, 18, 18, 18],
            'borrower_name': ['Mia Anderson', 'Wendy Jackson', 'Emma Anderson', 'Ruby Anderson', 'Mia White', 'Quinn Garcia', 'Uma Wilson', 'Victor Martin', 'Mia Rodriguez', 'Alice Lee', 'Yolanda Anderson', 'Noah Wilson', 'Alice Hall', 'Xavier Anderson', 'David Lewis', 'Quinn Rodriguez', 'Ruby Martinez', 'Paul Smith', 'Henry Johnson', 'Carol Brown', 'Emma Lee', 'Ivy Martinez', 'Wendy Thomas', 'Olivia Martinez', 'Carol Jackson', 'Henry Smith', 'Wendy Lewis', 'Henry Brown', 'Carol Martinez'],
            'borrow_date': ['2024-01-05', '2024-01-14', '2024-01-09', '2024-02-17', '2024-01-15', '2024-01-06', '2024-02-20', '2024-02-08', '2024-01-30', '2024-02-16', '2024-02-19', '2024-01-30', '2024-02-26', '2024-02-02', '2024-01-20', '2024-01-13', '2024-02-28', '2024-01-08', '2024-01-16', '2024-02-16', '2024-01-31', '2024-02-25', '2024-01-26', '2024-01-29', '2024-01-02', '2024-01-05', '2024-01-04', '2024-02-27', '2024-01-16'],
            'return_date': ['2024-01-30', '2024-02-02', '2024-02-02', '2024-03-13', None, None, None, None, '2024-02-23', '2024-03-11', '2024-02-29', None, None, None, None, '2024-01-25', '2024-03-16', None, None, '2024-02-25', None, '2024-03-09', None, '2024-02-12', '2024-01-16', None, None, '2024-03-15', '2024-02-07']
        }

        library_books = pd.DataFrame(library_books_data)
        borrowing_records = pd.DataFrame(borrowing_records_data)

        expected_output = pd.DataFrame({
            'book_id': [8, 18],
            'title': ['Outlander', 'Sapiens'],
            'author': ['Diana Gabaldon', 'Yuval Noah Harari'],
            'genre': ['Romance', 'Non-Fiction'],
            'publication_year': [1911, 1959],
            'current_borrowers': [2, 2]
        })

        result = find_books_with_no_available_copies(
            library_books, borrowing_records)
        pd.testing.assert_frame_equal(result, expected_output)


if __name__ == '__main__':
    unittest.main()
