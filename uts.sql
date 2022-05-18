#1. Tuliskan perintah untuk membuat database dengan nama TOKOXXXXX (dimana XXXXX adalah 5 digit nim terakhir Anda) !
Perintah
mysql -u root
# membuat database
create database toko20415;

#2.	Tuliskan perintah untuk membuat tabel (nama tabel : BarangXXXXX, dimana XXXX adalah 5 digit nim terakhir Anda) sesuai dengan tampilan berikut :

CREATE TABLE barang20415 (
    kode CHAR(7) PRIMARY KEY UNIQUE NOT NULL,
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
  #gunakan ini
         INSERT INTO barang20415 (kode, nama, stock, satuan, harga, tgl_kadalua, pemasok) VALUES ('11111', 'Mixer Yamaha A12X', '20', 'buah', '550000', '2025-01-01', 'PT.Mulia');
         INSERT INTO barang20415 (kode, nama, stock, satuan, harga, tgl_kadalua, pemasok) VALUES ('22222', 'Lampu LED 4W', '50', 'buah', '5000', '2024-05-05', 'PT.Maju');
         INSERT INTO barang20415 (kode, nama, stock, satuan, harga, tgl_kadalua, pemasok) VALUES ('33333', 'Pensil HBC', '100', 'buah', '1000', '2023-04-08', 'CV.Jaya');
         INSERT INTO barang20415 (kode, nama, stock, satuan, harga, tgl_kadalua, pemasok) VALUES ('44444', 'Buku Swan50', '200', 'buah', '5500', '2024-04-08', 'CV.Jaya');
         INSERT INTO barang20415 (kode, nama, stock, satuan, harga, tgl_kadalua, pemasok) VALUES ('55555', 'Sprite 1,5 L', '30', 'botol', '10000', '2021-12-12', 'CV.Segar');
         INSERT INTO barang20415 (kode, nama, stock, satuan, harga, tgl_kadalua, pemasok) VALUES ('66666', 'Aqua 1,5 L', '2', 'botol', '6000', '2020-12-20', 'CV.Segar');
         INSERT INTO barang20415 (kode, nama, stock, satuan, harga, tgl_kadalua, pemasok) VALUES ('77777', 'Gula XYZ 1kg', '1', 'karung', '12500', '2020-10-15', 'PT.Hong Kuan');
         INSERT INTO barang20415 (kode, nama, stock, satuan, harga, tgl_kadalua, pemasok) VALUES ('88888', 'Kopi 200gr', '5', 'bungkus', '5500', '2020-01-25', 'PT.Hong Kuan');
         INSERT INTO barang20415 (kode, nama, stock, satuan, harga, tgl_kadalua, pemasok) VALUES ('99999', 'Songkok Turki', '50', 'buah', '55000', '2025-01-20', 'CV.Murni');
         
