from flask import Flask, render_template
import mysql.connector

app = Flask(__name__)
@app.route('/')
def call_log():
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

    # Close the cursor and connection
    cursor.close()
    conn.close()

    return render_template('index.html', call_log=rows)
if __name__ == '__main__':
    app.run(debug=True)


