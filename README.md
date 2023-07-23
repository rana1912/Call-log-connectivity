#Documentation: MySQL Call Log Database and Visual Interface

#Project Overview
The aim of this project is to create a MySQL call log database that stores call records for recent calls made. We will build a Python program to connect to the database and retrieve call log data. Additionally, we will create an HTML and CSS-based visual interface using Flask, a Python web framework, to display the call log data in an appealing and eye-catching manner.

#Step 1: Creating the MySQL Database and Table
To begin, we create a MySQL database named call_log_database and a table named call_log. The table structure includes columns for id, caller_name, caller_number, receiver_name, receiver_number, duration, and call_datetime. We insert sample data of call log records into the table.

#Step 2: Python MySQL Connector
We use the mysql.connector library in Python to establish a connection to the MySQL database. The connection parameters include the host, username, password, and database name. We create a cursor object to execute SQL queries and fetch call log data from the table. The retrieved data is stored in a list of lists. The tabulate library is used to display the data in a tabular format.

#Step 3: HTML and CSS Styling
We design the visual interface using HTML and CSS. The layout simulates a cell phone with a screen displaying the call log data. The background image of the cell phone is set using CSS to make it visually appealing. The call log table is styled with appropriate padding, borders, and colors to enhance readability.

#Step 4: Incorporating Flask as a Server-Side Component
To make the interface dynamic, we integrate Flask, a micro web framework for Python. Flask allows us to render the HTML template and dynamically populate the call log data from the MySQL database. The Python code fetches the data from the database and passes it to the HTML template through the render_template function.

#Project Execution
To execute the project, follow these steps:
1.	Create the MySQL database and table using the provided SQL queries.
2.	Save the Python code (MySQL connector) in a Python script, e.g., call_log_connector.py.
3.	Save the HTML and CSS code in an HTML file named index.html.
4.	Create a folder named templates in your Flask application's root directory.
5.	Move the index.html file to the templates folder.
6.	Save the Python code (Flask server-side component) in a Python script, e.g., app.py.
7.	Ensure that Flask and the required libraries (mysql.connector, tabulate) are installed in your Python environment.
8.	Run the Flask application by executing the command: python app.py.
9.	Access the application through the provided URL, typically http://127.0.0.1:5000.

#Project Results
Upon executing the Flask application, a web server will be running, and you can access the visual interface for the call log data through the provided URL. The cell phone-themed layout will display the call log data fetched from the MySQL database in a well-structured and appealing manner.
With this project, users can easily view and manage call log data in a visually attractive and user-friendly interface. The combination of MySQL, Python, HTML, CSS, and Flask allows for a seamless integration of database and web technologies, creating a comprehensive solution for call log data management.



	

#CODE EXPLANATION : 
Project Documentation - Retrieving Call Log Data from MySQL Database
Introduction In this project, we have developed a Python script to connect to a MySQL call log database, retrieve call log data, and display it in a formatted table using the tabulate library. This document explains the Python code step by step and provides an overview of the MySQL queries used to set up the call log database.
#Python Code
1.	Importing Required Modules:
•	import mysql.connector: This line imports the mysql.connector module, which enables Python to interact with the MySQL database.
•	from tabulate import tabulate: This line imports the tabulate function from the tabulate module, used for formatting tabular data into a table.
2.	Database Connection Parameters: The following parameters are used to establish a connection with the MySQL database:
•	host = 'localhost': Specifies the hostname where the MySQL server is running. In this case, it is set to 'localhost'.
•	user = 'root': Specifies the username used for authentication with the MySQL server. In this case, it is set to 'root'.
•	password = '12312312': Specifies the password for the MySQL user. Replace this with the actual password used to connect.
•	database = 'call_log_database': Specifies the name of the MySQL database to connect to. In this case, it is set to 'call_log_database'.
3.	Creating a Connection Object: conn = mysql.connector.connect(host=host, user=user, password=password, database=database): This line creates a connection object conn to connect to the MySQL database using the provided connection parameters.
4.	Creating a Cursor Object: cursor = conn.cursor(): This line creates a cursor object cursor from the connection object conn. The cursor is used to execute SQL queries on the database.
5.	Executing a SELECT Query:
•	query = "SELECT * FROM call_log": This line defines the SQL query to retrieve all rows and columns from the call_log table.
•	cursor.execute(query): This line executes the SQL query using the cursor.
6.	Fetching All Rows: rows = cursor.fetchall(): This line fetches all the rows returned by the SELECT query and stores them in the rows variable.
7.	Storing Column Headers: headers = ["ID", "Caller", "Receiver", "Duration", "Call Date"]: This line defines the column headers for the table.
8.	Storing Data Rows: data = []: This line initializes an empty list called data. for row in rows: data.append(list(row)): This loop iterates over each row returned by the SELECT query, converts it into a list, and appends it to the data list. Each list represents a row of data in the call log table.
9.	Closing the Cursor and Connection:
•	cursor.close(): This line closes the cursor to release any resources associated with it.
•	conn.close(): This line closes the database connection.
10.	Printing the Formatted Table:
•	print("Call Log:"): This line prints the header for the table.
•	print(tabulate(data, headers=headers, tablefmt="grid")): This line prints the tabulated data in a grid format using the tabulate function.



#Documentation: HTML Code Explanation
The following section provides a detailed explanation of the HTML code used to create an eye-catching interface for displaying call log data.
1.	<!DOCTYPE html>: This is the document type declaration, indicating that the document is an HTML5 document.
2.	<html>: The root element of the HTML document, containing all other elements.
3.	<head>: This element contains meta-information about the document, such as the title, links to external stylesheets, and scripts.
4.	<title>Call Log Data</title>: Sets the title of the web page, which appears in the browser's title bar or tab.
5.	<style>: Defines inline CSS styles that will be applied to elements on the page.
6.	CSS for body: Styles for the body element, including background color, margins, paddings, and centering content using flexbox. The height is set to 100vh to make the content fill the entire viewport height.
7.	CSS for .cell-phone: Styles for the container representing a visual simulation of a cell phone. It includes width, height, background image with cover sizing, and overflow hidden to hide any overflowing content.
8.	CSS for .screen: Styles for the cell phone screen, with width, height, white background color, margin, and overflow-y set to auto for vertical scrolling when content exceeds the screen's height.
9.	CSS for .call-log: Styles for the call log table, including font-family set to Arial and sans-serif.
10.	CSS for .call-log table: Styles for the call log table, setting width to 100% and collapsing cell borders.
11.	CSS for .call-log th, .call-log td: Styles for both table header and data cells, with padding, text alignment, and a bottom border for separation.
12.	CSS for .call-log th: Styles for table header cells, setting background color for distinction from table data.
13.	<body>: The body element containing the visible content of the web page.
14.	<div class="cell-phone">: A div element representing the container for the cell phone image.
15.	<div class="screen">: A div element representing the cell phone screen.
16.	<div class="call-log">: A div element wrapping the call log table and applying the .call-log CSS styles.
17.	<h1>Call Log</h1>: A heading element displaying the title "Call Log" at the top of the table.
18.	<table>: The element representing the call log table, containing rows and columns of call log data.
19.	<thead>: Groups the table header rows.
20.	<tr>: Represents a table row.
21.	<th>: Represents a table header cell, defining column headers.
22.	<tbody>: Groups the table body rows.
23.	{% for call in call_log %}: A Jinja template expression starting a loop to iterate over each call log entry (call) in the call_log list passed from the Flask app.
24.	<td>{{ call[0] }}</td> to <td>{{ call[6] }}</td>: Table data cells displaying values from each column of the call log entry, accessed using the index of the call list.
25.	{% endfor %}: Closes the Jinja template loop.
26.	</table>, </div>, </div>, and </body>: Closing tags for their respective elements, properly structuring the HTML document.
27.	</html>: Closing tag marking the end of the HTML document.


#Explanation of the Flask App Code:
1.	from flask import Flask, render_template: This line imports the Flask class from the Flask library, which is used to create the web application, and the render_template function, which is used to render HTML templates.
2.	import mysql.connector: This line imports the mysql.connector module, which provides functionality to interact with the MySQL database.
3.	app = Flask(__name__): This line creates a new Flask application instance. The __name__ variable represents the name of the current Python module.
4.	@app.route('/'): This is a decorator that maps the URL path '/' to the call_log() function. When a user accesses the root URL of the application, this function will be called.
5.	def call_log():: This is the definition of the call_log() function, which serves as the view for the '/' route.
6.	Database connection parameters: The following variables store the connection details for the MySQL database: host, user, password, and database. These parameters will be used to establish a connection to the MySQL database.
7.	Create a connection object: The conn variable creates a connection object to connect to the MySQL database using the provided connection parameters.
8.	Create a cursor object: The cursor variable creates a cursor object from the connection. The cursor is used to execute SQL queries on the database.
9.	Execute a SELECT query to retrieve call log data: The query variable stores the SQL query to retrieve all rows and columns from the call_log table. The cursor.execute(query) line executes this query using the cursor.
10.	Fetch all rows: The rows variable fetches all the rows returned by the SELECT query and stores them.
11.	Close the cursor and connection: After fetching the data, the cursor and connection are closed to release any resources associated with them.
12.	Return the call log data to the template: The return render_template('index.html', call_log=rows) line renders the HTML template named index.html. It passes the rows variable, which contains the call log data, to the template.
13.	if __name__ == '__main__':: This condition checks if the script is being executed as the main module.
14.	app.run(debug=True): This starts the Flask development server. The debug=True option enables debug mode, which provides more detailed error messages during development.
When the Flask app is run, it will listen on the default localhost:5000 address. When a user accesses the root URL (http://localhost:5000/) in the browser, the call_log() function will be executed, and the call log data will be retrieved from the MySQL database and displayed on the rendered HTML template.


