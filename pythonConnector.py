
import mysql.connector
from tabulate import tabulate

# Database connection parameters
host = 'localhost'
user = 'root'
password = '12312312'
database = 'call_log_database'

# Create a connection object
conn = mysql.connector.connect(host=host, user=user, password=password, database=database)

# Create a cursor object
cursor = conn.cursor()

# Execute a SELECT query to retrieve call log data
query = "SELECT * FROM call_log"
cursor.execute(query)

# Fetch all rows
rows = cursor.fetchall()

# Store the column headers
headers = ["ID", "Caller", "Receiver", "Duration", "Call Date"]

# Store the data rows in a list of lists
data = []
for row in rows:
    data.append(list(row))

# Close the cursor and connection
cursor.close()
conn.close()

# Print the formatted table
print("Call Log:")
print(tabulate(data, headers=headers, tablefmt="grid"))

