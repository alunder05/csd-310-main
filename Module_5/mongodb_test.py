import pymongo 
from pymongo import MongoClient
Client = MongoClient("mongodb+srv://admin:admin@atlascluster.lk5gtcj.mongodb.net/?retryWrites=true&w=majority")
db =Client ["pytech"]
collections = db ["students"]
print(db.list_collections_names)