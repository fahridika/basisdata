Create Table film (
kode_film Char(5) Primary Key Not Null,
judul Char(30) Not Null,
tahun Char(4) Not Null);
SELECT judul_buku, isbn, nama_pengarang, nama_penerbit, harga_buku, stock
FROM tbuku_fahri s
INNER JOIN tpenerbit a on s.id_tpenerbit = a.id_penerbit
INNER JOIN tpengarang b on s.id_tpengarang = b.id_pengarang
;
