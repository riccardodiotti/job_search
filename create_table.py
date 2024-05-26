import sqlite3

conn = sqlite3.connect('database.db')
print("Connected to database successfully")

conn.execute('CREATE TABLE results (id TEXT, university TEXT, job TEXT, company TEXT, avgsalary TEXT, salaryrange TEXT, date_added TEXT)')
print("Created table successfully!")

conn.close()
