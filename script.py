import csv

import psycopg2


def loader(file_name, table_name):

    with psycopg2.connect(host='localhost', database='north', user='postgres',password='Kiryha2805') as conn:
        with conn.cursor() as cur:
            with open(file_name) as ff:
                data = csv.reader(ff)
                next(data)
                for i in data:
                    cur.execute(f"INSERT INTO {table_name} VALUES ({'%s, '* (len(i)-1) + '%s'})",tuple(i))


if __name__ == '__main__':
    loader("customers_data.csv", "customers")
    loader('employees_data.csv', 'employees')
    loader('orders_data.csv', 'orders')
