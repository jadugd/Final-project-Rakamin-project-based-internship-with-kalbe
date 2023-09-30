#Melakukan import mysql connector
import mysql.connector as mq

#Melakukan percobaan koneksi
conn = mq.connect(
    host="localhost", user="admin", password="admin", database="kalbe")

#membuat object cursor sebagai penanda
cursor = conn.cursor()

#Deklarasi SQL Query untuk memasukkan record ke DB (KARYAWAN)
insert_sql = (
    "INSERT INTO KARYAWAN (FIRST_NAME, LAST_NAME, AGE, SEX, INCOME)"
    "VALUES (%s, %s, %s, %s, %s)"
)

values = ("John", "Doe", "32", "M", "5000")

try:
    #eksekusi SQL Command
    cursor.execute(insert_sql, values)

    #melakukan perubahan (commit) pada DB
    conn.commit()
    print('berhasil insert')
except Exception as e:
    #Rollback apabila ada issue
    conn.rollback()
    print('insert gagal', e)

#Menutup koneksi
conn.close()