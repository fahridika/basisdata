us
CREATE TABLE mkuliah (
    kode_kul CHAR(7) PRIMARY KEY UNIQUE NOT NULL,
    nama_kul CHAR(20) NOT NULL,
    sks DECIMAL(2) NOT NULL,
    smt_tawar CHAR(1),
    klp_kul CHAR(1) DEFAULT '1',
    progdi CHAR(1)
