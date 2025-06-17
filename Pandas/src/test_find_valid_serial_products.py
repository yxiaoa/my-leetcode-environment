import pandas as pd
import unittest
from exercise.find_valid_serial_products import find_valid_serial_products


class TestFindValidSerialProducts(unittest.TestCase):
    def test_example(self):
        '''
        Input:

        products table:

        +------------+--------------+------------------------------------------------------+
        | product_id | product_name | description                                          |
        +------------+--------------+------------------------------------------------------+
        | 1          | Widget A     | This is a sample product with SN1234-5678            |
        | 2          | Widget B     | A product with serial SN9876-1234 in the description |
        | 3          | Widget C     | Product SN1234-56789 is available now                |
        | 4          | Widget D     | No serial number here                                |
        | 5          | Widget E     | Check out SN4321-8765 in this description            |
        +------------+--------------+------------------------------------------------------+

        Output:

        +------------+--------------+------------------------------------------------------+
        | product_id | product_name | description                                          |
        +------------+--------------+------------------------------------------------------+
        | 1          | Widget A     | This is a sample product with SN1234-5678            |
        | 2          | Widget B     | A product with serial SN9876-1234 in the description |
        | 5          | Widget E     | Check out SN4321-8765 in this description            |
        +------------+--------------+------------------------------------------------------+
        '''
        data = {'product_id': [1, 2, 3, 4, 5],
                'product_name': ['Widget A', 'Widget B', 'Widget C', 'Widget D', 'Widget E'],
                'description': ['This is a sample product with SN1234-5678', ''
                                'A product with serial SN9876-1234 in the description',
                                'Product SN1234-56789 is available now',
                                'No serial number here',
                                'Check out SN4321-8765 in this description']}
        expected_result = pd.DataFrame({'product_id': [1, 2, 5],
                                        'product_name': ['Widget A', 'Widget B', 'Widget E'],
                                        'description': ['This is a sample product with SN1234-5678',
                                                        'A product with serial SN9876-1234 in the description',
                                                        'Check out SN4321-8765 in this description']})
        df = pd.DataFrame(data)
        result = find_valid_serial_products(df)

        pd.testing.assert_frame_equal(result, expected_result)


if __name__ == '__main__':
    unittest.main()
