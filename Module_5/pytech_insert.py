from pymongo import MongoClient
url = "mongodb+srv://admin:admin@atlascluster.lk5gtcj.mongodb.net/?retryWrites=true&w=majority"
client = MongoClient(url)

# pytech database
pytech = client.pytech

# students collection
students = pytech.students

# insert 3 students
records = [
    {
        "student_id": "1007",
        "first_name": "John",
        "last_name": "Doe"
    },
    {
        "student_id": "1008",
        "first_name": "Jane",
        "last_name": "Doe"
    },
    {
        "student_id": "1009",
        "first_name": "Joe",
        "last_name": "Blow"
    }
]

print("-- INSERT STATEMENTS --")
for record in records:
    new_student_Id = students.insert_one(record).inserted_id
    # print(record)
    print(f"Inserted student record {record['first_name']} {record['last_name']} into the students collection with document_id {new_student_Id}")
    print ()
    
   # print ("End of program, press any key to continue...")