import json
import mysql.connector as konektor

koneksi=konektor.connect(host='localhost',user='root',password='',database='alfan')
cursor=koneksi.cursor()

f = open('alfan.json',)
konten = json.load(f)
data=konten['people']

j=1
for i in data:
    firstname=i['firstName']
    lastname=i['lastName']
    gender=i['gender']
    age=i['age']
    number=i['number']
    simpan="""INSERT INTO orang(firstname, lastname, gender, age, number) VALUES(%s,%s,%s,%s,%s)"""
    cursor=koneksi.cursor()
    cursor.execute(simpan,(firstname,lastname,gender,age,number))
    koneksi.commit()
    print("data orang ke-",j," berhasil disimpan")
    print("Nama depan saya",firstname,"nama belakang saya",lastname,"Jenis kelamin",gender,"umur saya",age,"Nomor telpon",number)
    j+=1
        
f.close()

ambil="SELECT * FROM orang"
with koneksi.cursor() as cursor:
    cursor.execute(ambil)
    hasil=cursor.fetchall()
    for row in hasil:
        print(row) 