import sqlite3

conn = sqlite3.connect('database.db')
print("Connected to database successfully")

conn.execute('INSERT INTO results ("1", "Politecnico di Milano", "Project Manager", "VF", "50000", "30000-60000", "04-01-2024")')
print("Created table successfully!")

conn.close()
