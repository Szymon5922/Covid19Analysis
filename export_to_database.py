import pandas as pd
from sqlalchemy import create_engine
import argparse

def convert_file_to_sql(file_path, server, database, table_name):
    try:
        if file_path.endswith('.xlsx'):
            print('Xlsx file')
            df = pd.read_excel(file_path)
        elif file_path.endswith('.csv'):
            print('Csv file')
            df = pd.read_csv(file_path, encoding='windows-1252')
        else:
            print('Unexpected file format')
            return

        # using windows authentication
        odbc_driver = 'ODBC Driver 17 for SQL Server'
        connection_string = f'mssql+pyodbc://{server}/{database}?trusted_connection=yes&driver={odbc_driver}'
        engine = create_engine(connection_string)

        df.to_sql(table_name, con=engine, if_exists='replace')

        engine.dispose()

        print(f'Data from {file_path} successfully exported to {table_name} in {database} database.')
    
    except FileNotFoundError:
        print(f'File {file_path} not exist.')
    except Exception as e:
        print(f'Error: {str(e)}')

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('file', type=str, help='file path')
    parser.add_argument('server', type=str, help='SQL server name')
    parser.add_argument('database', type=str, help='database name')
    parser.add_argument('table_name', type=str, help='target table name (creates if not exist)')

    args = parser.parse_args()

    convert_file_to_sql(args.file, args.server, args.database, args.table_name)