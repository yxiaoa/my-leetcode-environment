import pandas as pd

def find_books_with_no_available_copies(library_books: pd.DataFrame, borrowing_records: pd.DataFrame) -> pd.DataFrame:
    borrowed_counts = borrowing_records[borrowing_records['return_date'].isnull()].groupby('book_id').size().reset_index(name='current_borrowers')
    result = library_books.merge(borrowed_counts, on='book_id', how='left')
    result['current_borrowers'] = result['current_borrowers'].fillna(0).astype('int64')
    return result[result['total_copies'] == result['current_borrowers']].drop(columns=['total_copies']).sort_values(['current_borrowers', 'title'], ascending=[False, True]).reset_index(drop=True)
