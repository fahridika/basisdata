use mahasiswa;
#1.	sebelum melakukan ke lima printah tersebut, anda sudah memiliki atau membuat sebuah 
#table yang berisi data mahasiswa berupa nim, nama, jurusan, progdi dan sumbangan uang kuliah.

CREATE TABLE mkuliah (
    nim CHAR(7) PRIMARY KEY UNIQUE NOT NULL,
    nama CHAR(20) NOT NULL,
    jurusan (2) NOT NULL,
    progdi CHAR(1),
    sum_ukt CHAR(9) DEFAULT '1'
    );
