Create Table film (
kode_film Char(5) Primary Key Not Null,
judul Char(30) Not Null,
tahun Char(4) Not Null);
SELECT judul_buku, isbn, nama_pengarang, nama_penerbit, harga_buku, stock
FROM tbuku_fahri s
INNER JOIN tpenerbit a on s.id_tpenerbit = a.id_penerbit
INNER JOIN tpengarang b on s.id_tpengarang = b.id_pengarang
;

7
SELECT judul_buku, isbn, nama_pengarang, nama_penerbit, harga_buku, stock
FROM tbuku_fahri s
INNER JOIN tpenerbit a on s.id_tpenerbit = a.id_penerbit
INNER JOIN tpengarang b on s.id_tpengarang = b.id_pengarang
;
8

SELECT judul_buku, isbn, nama_pengarang, nama_penerbit, harga_buku,stock
FROM tpenerbit
JOIN tbuku_fahri 
ON tpenerbit.id_penerbit = tbuku_fahri.id_tpenerbit
JOIN tpengarang
ON tbuku_fahri.id_tpengarang = tpengarang.id_pengarang
WHERE tbuku_fahri.harga_buku BETWEEN '70' AND '100'
ORDER BY(tbuku_fahri.judul_buku) ASC;

9
SELECT judul_buku, isbn, nama_pengarang, nama_penerbit, harga_buku, stock
FROM tpenerbit
JOIN tbuku_fahri 
ON tpenerbit.id_penerbit = tbuku_fahri.id_tpenerbit
JOIN tpengarang
ON tbuku_fahri.id_tpengarang = tpengarang.id_pengarang
WHERE tpenerbit.nama_penerbit = 'LENTERA ILMU' AND tbuku_fahri.harga_buku < '100'
ORDER BY(tbuku_fahri.judul_buku) DESC;


