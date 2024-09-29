import MySQLdb

db=MySQLdb.connect("localhost","root","root","mypython")
cursor=db.cursor()

print("Database connectivity done.....")


