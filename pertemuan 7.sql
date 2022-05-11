use mahasiswa;
#1.	sebelum melakukan ke lima printah tersebut, anda sudah memiliki atau membuat sebuah 
#table yang berisi data mahasiswa berupa nim, nama, jurusan, progdi dan sumbangan uang kuliah.

CREATE TABLE mhspolines (
    nim CHAR(7) PRIMARY KEY UNIQUE NOT NULL,
    nama CHAR(20) NOT NULL,
    jurusan CHAR(15) NOT NULL,
    progdi CHAR(15),
    sum_ukt INT(9) DEFAULT '7000000'
    );
#data MAHASISWA
INSERT INTO mhspolines (nim , nama , jurusan, progdi, sum_ukt)
    VALUES
        ('3342041', 'Ahmad', 'elektro', 'a1', '6000000'),
        ('3342042', 'Logika', 'elektro', 'a2', '6500000'),
        ('3342043', 'Basic', 'elektro', 'a3', '5000000'),
        ('3342044', 'Data', 'akuntasi', 'b1', '7000000'),
        ('3342045', 'Pascal', 'akuntasi', 'b2', '8000000'),
        ('3342046', 'Dasar', 'akuntasi', 'b3', '5500000'),
        ('3342047', 'Karier', 'sipil', 'c1', '7000000'),
        ('3342048', 'Akhirun', 'sipil', 'c2', '7500000');

# 1. menampilkan data jurusan elektro
SELECT * FROM mhspolines WHERE jurusan='elektro';

#2.	Hitung jumlah mahasiswa Teknik Elektro?
SELECT count(jurusan) FROM mhspolines WHERE jurusan='elektro';
#3. a. Ada berapa Jurusan di Polines dan berapa jumlah mahasiswanya per jurusan?
Ada berapa Jurusan di Polines
SELECT count(distinct jurusan) as jumlah_jurusan from mhspolines;
berapa jumlah mahasiswanya per jurusan
SELECT jurusan, count(*) FROM mhspolines group by jurusan;
#4.	Ada berapa Progdi di jurusan teknik elektro dan berapa jumlah mahasiswanya per Progdi?
Ada berapa Progdi di jurusan teknik elektro
SELECT count(distinct progdi) as jumlah_jurusan_elektro from mhspolines where jurusan = 'elektro';
berapa jumlah mahasiswanya per Progdi
SELECT progdi, count(*) as jumlah_mahasiswa FROM mhspolines group by progdi;
#5.	Berikan Diskon/potongan Sumbangan uang kuliah (A=10%,B=20%,C=30%)
SELECT nama, sum_ukt, CASE
    WHEN jurusan = 'elektro' then sum_ukt-(sum_ukt*10/100) 
    WHEN jurusan = 'akuntasi' then sum_ukt-(sum_ukt*20/100) 
    WHEN jurusan = 'sipil' then sum_ukt-(sum_ukt*30/100) 
    END as sumbangan
    from mhspolines;
