# import modul
import xml.etree.ElementTree as ET
import mysql.connector as konektor

# koneksi ke DBMS
koneksi=konektor.connect(host='localhost',user='root',password='',database='alfan')
cursor=koneksi.cursor()

# memparse data dari file xml dan menjadikannya objek tree (dimasukkan ke variable tree)
tree=ET.parse('buku.xml')
# variabel buku menyimpan semua data dari hasil parse tadi
buku=tree.findall('book')

# variabel i adalah variable yang menyimpan objek atau data dari variabel buku, variabel j untuk menyimpan sudah berapa banyak SQL yang dijalankan
for i, j in zip(buku,range(1,len(buku))):
    author=i.find('author').text
    title=i.find('title').text
    genre=i.find('genre').text
    price=i.find('price').text
    publish_date=i.find('publish_date').text
    description=i.find('description').text
    simpan="""INSERT INTO buku(author,title,genre,price,publish_date,description) VALUES(%s,%s,%s,%s,%s,%s)"""
    cursor=koneksi.cursor()
    cursor.execute(simpan,(author,title,genre,price,publish_date,description))
    koneksi.commit()
    print("buku ke-",j," berhasil disimpan")
    print ("buku ini berjudul", title,"ditulis oleh", author, "bertemakan", genre, "dirilis pada", publish_date, "pendapat saya terhadap buku ini", description,"dengan harga", price)

#     perintah select biasa di mysql untuk menampilkan semua data yang ada di tabel buku
ambil="SELECT * FROM buku"
with koneksi.cursor() as cursor:
    cursor.execute(ambil)
    hasil=cursor.fetchall()
    for row in hasil:
        print(row)  