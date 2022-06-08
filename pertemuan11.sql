SELECT judul_buku, isbn, nama_pengarang, nama_penerbit, harga_buku, stok
FROM tbuku_fahri s
INNER JOIN tpenerbit a on s.id_tpenerbit = a.id_penerbit
INNER JOIN tpengarang b on s.id_tpengarang = a.id_pengarang
;
