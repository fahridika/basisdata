Create database s1ar;

use s1ar;

CREATE TABLE user(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
npk CHAR (6) UNIQUE ,
email CHAR (20) UNIQUE,
PASSWORD CHAR(12) NOT NULL);

CREATE TABLE user_detail(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,
nama CHAR(32),
email CHAR(30) NOT NULL UNIQUE,
npk CHAR(6) UNIQUE,
no_hp INT(14),
tmp_lahir CHAR(20),
tgl_lahir DATE,
departemen CHAR(4),
gol CHAR(3),
sta_kerja CHAR(4),
sta_nikah CHAR(2),
sta_pajak CHAR(4),
no_bpjs_tk CHAR(20),
no_bpjs_kes CHAR(20),
no_dpa CHAR(20),
no_npwp CHAR (20),
no_ktp CHAR (16),
alamat_dom TEXT,
alamat_ktp TEXT,
nama_istri CHAR (25),
jml_anak INT,
nama_anak1 CHAR (25),
nama_anak2 CHAR (25),
nama_anak3 CHAR (25));

CREATE TABLE cuti(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
user_id INT,
status_cuti CHAR(10),
approval_1 CHAR(30),
aprroval_2 CHAR(30),
tgl_join_kar DATE,
tgl_awal_cuti DATE,
tgl_akhir_cuti DATE,
hak_cuti_t INT(2),
hak_cuti_i INT(2),
tlh_ambil_cuti INT(2),
saldo_cuti INT(2),
keterangan TEXT);


