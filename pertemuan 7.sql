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
