# first install the mysql-connector-python package using the following command
# pip install mysql-connector-python

from dotenv import load_dotenv # alternatively, can use pyyaml
import os
import mysql.connector

# Load environment variables from .env file
load_dotenv()

print(os.getenv("DB_NAME"))
# Establish a connection to the MySQL server
cnx = mysql.connector.connect(
    host=os.getenv("DB_HOST"),
    user=os.getenv("DB_USER"), # both root and andrewcbuensalida works
    password=os.getenv("DB_PASSWORD"),
    database=os.getenv("DB_NAME"),
)

# Perform database operations here...
cursor = cnx.cursor()
# cursor.execute("SHOW TABLES")

# tables = cursor.fetchall()

#   # Show columns of all tables
# for table in tables:
#     cursor.execute(f"SHOW COLUMNS FROM {table[0]}")
#     columns = cursor.fetchall()
#     print(f"Columns of table {table[0]}:")
#     for column in columns:
#         print(column[0])


# Ask the user for first name and last name
first_name = input("Enter first name: ")
last_name = input("Enter last name: ")
# Ask the user for CollegeID
college_id = input("Enter CollegeID: ")

# Insert the student into the students table
insert_query = "INSERT INTO students (FirstName, LastName, CollegeID) VALUES (%s, %s, %s)"
values = (first_name, last_name, college_id)
cursor.execute(insert_query, values)
cnx.commit()

print("Student inserted successfully!")

# Select all students from the students table
select_query = "SELECT * FROM students" 
cursor.execute(select_query)
students = cursor.fetchall()

# Print the details of all students
print("All students:")
for student in students:
  print('this is student ', student)

cursor.close()
# Close the connection
cnx.close()