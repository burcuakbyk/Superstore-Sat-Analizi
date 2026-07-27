import pandas as pd
from sqlalchemy import create_engine
import urllib

# Excel dosyasının yolu
excel_file = "C:\\Users\\Burcu\\OneDrive\\Desktop\\SQL_Import\\Superstore Dataset.xlsx"

# Excel'i oku
df = pd.read_excel(excel_file)

# SQL Server bağlantısı
params = urllib.parse.quote_plus(
    "DRIVER={ODBC Driver 17 for SQL Server};"
    "SERVER=(local)\\SQLEXPRESS;"
    "DATABASE=KaggleData;"
    "Trusted_Connection=yes;"
)

engine = create_engine(f"mssql+pyodbc:///?odbc_connect={params}")

# SQL Server'a aktar
df.to_sql(
    "Superstore",
    con=engine,
    if_exists="replace",
    index=False
)

print("Veriler başarıyla SQL Server'a aktarıldı!")