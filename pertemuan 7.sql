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
        ('33420401', 'Ahmad', 'elektro', '1', '1', '1'),
        ('33420402', 'Logika', 'elektro', '1', '2', '1'),
        ('33420403', 'Basic', 'elektro', '1', '2', '1'),
        ('33420404', ' Data', 'akuntasi', '2', '2', '1'),
        ('33420405', 'Pascal', 'akuntasi', '2', '2', '1'),
        ('33420406', 'Dasar', 'akuntasi', '2', '1', '1'),
        ('33420407', 'Karier', 'sipil', '5', '3', '1'),
        ('33420408', 'Akhirun', 'sipil', '6', '3', '1');
