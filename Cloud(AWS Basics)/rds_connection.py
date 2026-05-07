import mysql.connector

conn = mysql.connector.connect(
    host="your-endpoint",
    user="admin",
    password="password",
    database="testdb"
)

cursor = conn.cursor()
cursor.execute("SELECT * FROM users")

for row in cursor.fetchall():
    print(row)
