#1. Tuliskan perintah untuk membuat database dengan nama TOKOXXXXX (dimana XXXXX adalah 5 digit nim terakhir Anda) !
Perintah
mysql -u root
# membuat database

create database toko20415;

#2.	Tuliskan perintah untuk membuat tabel (nama tabel : BarangXXXXX, dimana XXXX adalah 5 digit nim terakhir Anda) sesuai dengan tampilan berikut :

CREATE TABLE barang20415 (
    kode CHAR(7)  NOT NULL,
    nama CHAR(20) NOT NULL,
    stock INT(4) NOT NULL,
    satuan CHAR(10) NOT NULL,
    harga INT(10) ,
    tgl_kadalua DATE,
    pemasok CHAR(18)
);
#3.	Tuliskan perintah untuk menambahkan data barang seperti tabel soal no 2!

INSERT INTO barang20415 (kode, nama, stock, satuan, harga, tgl_kadalua, pemasok)
    VALUES
        ('11111', 'Mixer Yamaha A12X', '20', 'buah', '550000', '2025-01-01', 'PT.Mulia'),
        ('22222', 'Lampu LED 4W', '50', 'buah', '5000', '2024-05-05', 'PT.Maju'),
        ('33333', 'Pensil HBC', '100', 'buah', '1000', '2023-04-08', 'CV.Jaya'),
        ('44444', 'Buku Swan 50', '200', 'buah', '5500', '2024-11-22', 'CV.Jaya),
        ('55555', 'Sprite 1,5 liter', '35', 'botol', '10000', '2021-12-12', 'CV.Segar'),
        ('66666', 'Aqua 1,5 Liter', '2', 'botol', '6000', '2020-12-20', 'CV.Segar'),
        ('77777', 'Gula XYZ 1kg', '1', 'sak', '12500', '2020-10-15', 'PT. Hong Kuan'),
        ('88888', 'Kopi 200gr', '5', 'bungkus', '5000', '2020-01-25', 'PT. Hang Kuan'),
        ('99999', 'Songkok Turki', '50', 'buah', '55000', '2025-01-20', 'CV. Murni')
         ;
  #gunakan ini jika yang diaatas error tidak mau run
         INSERT INTO barang20415 (kode, nama, stock, satuan, harga, tgl_kadalua, pemasok) VALUES ('11111', 'Mixer Yamaha A12X', '20', 'buah', '550000', '2025-01-01', 'PT.Mulia');
         INSERT INTO barang20415 (kode, nama, stock, satuan, harga, tgl_kadalua, pemasok) VALUES ('22222', 'Lampu LED 4W', '50', 'buah', '5000', '2024-05-05', 'PT.Maju');
         INSERT INTO barang20415 (kode, nama, stock, satuan, harga, tgl_kadalua, pemasok) VALUES ('33333', 'Pensil HBC', '100', 'buah', '1000', '2023-04-08', 'CV.Jaya');
         INSERT INTO barang20415 (kode, nama, stock, satuan, harga, tgl_kadalua, pemasok) VALUES ('44444', 'Buku Swan50', '200', 'buah', '5500', '2024-04-08', 'CV.Jaya');
         INSERT INTO barang20415 (kode, nama, stock, satuan, harga, tgl_kadalua, pemasok) VALUES ('55555', 'Sprite 1,5 L', '30', 'botol', '10000', '2021-12-12', 'CV.Segar');
         INSERT INTO barang20415 (kode, nama, stock, satuan, harga, tgl_kadalua, pemasok) VALUES ('66666', 'Aqua 1,5 L', '2', 'botol', '6000', '2020-12-20', 'CV.Segar');
         INSERT INTO barang20415 (kode, nama, stock, satuan, harga, tgl_kadalua, pemasok) VALUES ('77777', 'Gula XYZ 1kg', '1', 'karung', '12500', '2020-10-15', 'PT.Hong Kuan');
         INSERT INTO barang20415 (kode, nama, stock, satuan, harga, tgl_kadalua, pemasok) VALUES ('88888', 'Kopi 200gr', '5', 'bungkus', '5500', '2020-01-25', 'PT.Hong Kuan');
         INSERT INTO barang20415 (kode, nama, stock, satuan, harga, tgl_kadalua, pemasok) VALUES ('99999', 'Songkok Turki', '50', 'buah', '55000', '2025-01-20', 'CV.Murni');
         
         
        #ilmu tambaha Membuat Primary dan foreign key pada Tabel yang sudah dibuat
         #menghapus primary key yang sudah dibuat
         ALTER TABLE barang20415 drop primary key;
         
         
         #4.	Bagaimana cara untuk menjadikan field Kode sebagai primary key ?
         ALTER TABLE barang20415 ADD PRIMARY KEY(kode);
         
         
         #5.	Bagaimana mengubah field Harga menjadi Harga Jual ?
         ALTER TABLE barang20415 change harga harga_jual char(11);
         
         # 6.	Tuliskan perintah untuk mengubah data TglKadaluarsa menjadi 2024/12/30 untuk barang yang kodenya = 44444 !
         update barang20415 set tgl_kadalua = '2024-12-30' where kode = '44444';
         
         #7.	Tuliskan perintah untuk menampilkan data barang yang terdiri field kode, nama, stock, harga, dan variabel baru jumlah. Dimana jumlah merupakan perkalian stock dan harga jual !
         
         SELECT kode, nama, stock, harga_jual, stock * harga_jual  as jumlah from barang20415;
         # 8.	Tuliskan perintah untuk menampilkan data barang yang akan kadaluarsa paling lama 100 hari dari sekarang !
         select * from barang20415 where tgl_kadalua between '2022-05-17' and '2022/08/25';
         # 9.	Apa perintah untuk menampilkan field kode, nama, dan stock yang dipasok oleh CV. Segar yang stock barangnya kurang dari 10 dan data apa yang akan tertampil !
         select kode, nama, stock from barang20415 where pemasok = 'CV.Segar' and stock < 10;
         
         #10.	Apa perintah untuk menampilkan total stock barang dari masing-masing pemasok !
         SELECT pemasok, sum(stock) FROM barang20415 group by pemasok;
         
         
