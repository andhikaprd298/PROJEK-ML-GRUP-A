CREATE DATABASE perpustakaan;
USE perpustakaan;
CREATE TABLE Anggota (
id_anggota VARCHAR(10) PRIMARY KEY,
nama_anggota VARCHAR(100) NOT NULL,
alamat TEXT NOT NULL,
no_hp VARCHAR(15) NOT NULL,
email VARCHAR(100) UNIQUE
);
CREATE TABLE Petugas (
id_petugas VARCHAR(10) PRIMARY KEY,
nama_petugas VARCHAR(100) NOT NULL,
jabatan_petugas ENUM('Admin','Pustakawan') NOT NULL
);
CREATE TABLE Kategori (
id_kategori VARCHAR(10) PRIMARY KEY,
nama_kategori VARCHAR(100) NOT NULL
);
CREATE TABLE Penerbit (
id_penerbit VARCHAR(10) PRIMARY KEY,
nama_penerbit VARCHAR(100) NOT NULL,
kota_penerbit VARCHAR(100) NOT NULL
);
CREATE TABLE Penulis (
id_penulis VARCHAR(10) PRIMARY KEY,
nama_penulis VARCHAR(100) NOT NULL,
kebangsaan_penulis VARCHAR(100)
);
CREATE TABLE Rak (
id_rak VARCHAR(10) PRIMARY KEY,
lokasi_rak VARCHAR(20) NOT NULL,
kapasitas_rak VARCHAR(100) NOT NULL
);
CREATE TABLE Buku (
id_buku VARCHAR(10) PRIMARY KEY,
isbn VARCHAR(20) UNIQUE NOT NULL,
judul_buku VARCHAR(150) NOT NULL,
tahun_terbit YEAR NOT NULL,
id_penerbit VARCHAR(10) NOT NULL,
id_rak VARCHAR(10) NOT NULL,

FOREIGN KEY (id_penerbit)
    REFERENCES Penerbit(id_penerbit),

FOREIGN KEY (id_rak)
    REFERENCES Rak(id_rak)

);
CREATE TABLE Buku_Penulis (
id_buku VARCHAR(10) NOT NULL,
id_penulis VARCHAR(10) NOT NULL,

PRIMARY KEY (id_buku,id_penulis),

FOREIGN KEY (id_buku)
    REFERENCES Buku(id_buku),

FOREIGN KEY (id_penulis)
    REFERENCES Penulis(id_penulis)

);
CREATE TABLE Eksemplar_Buku (
id_eksemplar VARCHAR(10) PRIMARY KEY,
id_buku VARCHAR(10) NOT NULL,
kondisi_buku ENUM('Baik','Rusak','Hilang') NOT NULL,

FOREIGN KEY (id_buku)
    REFERENCES Buku(id_buku)

);
CREATE TABLE Peminjaman (
id_peminjaman VARCHAR(10) PRIMARY KEY,
id_anggota VARCHAR(10) NOT NULL,
id_petugas VARCHAR(10) NOT NULL,
tanggal_pinjam DATE NOT NULL,
tanggal_jatuh_tempo DATE NOT NULL,
status_peminjaman ENUM(
'Tepat Waktu',
'Terlambat'
) NOT NULL,

FOREIGN KEY (id_anggota)
    REFERENCES Anggota(id_anggota),

FOREIGN KEY (id_petugas)
    REFERENCES Petugas(id_petugas)

);
CREATE TABLE Detail_Peminjaman (
id_detail_peminjaman VARCHAR(10) PRIMARY KEY,
id_peminjaman VARCHAR(10) NOT NULL,
id_eksemplar VARCHAR(10) NOT NULL,
tanggal_kembali_rencana DATE NOT NULL,

FOREIGN KEY (id_peminjaman)
    REFERENCES Peminjaman(id_peminjaman),

FOREIGN KEY (id_eksemplar)
    REFERENCES Eksemplar_Buku(id_eksemplar)

);
CREATE TABLE Pengembalian (
id_pengembalian VARCHAR(10) PRIMARY KEY,
id_detail_peminjaman VARCHAR(10) UNIQUE NOT NULL,
tanggal_kembali_aktual DATE NOT NULL,

FOREIGN KEY (id_detail_peminjaman)
    REFERENCES Detail_Peminjaman(id_detail_peminjaman)
);
CREATE TABLE Denda (
id_denda VARCHAR(10) PRIMARY KEY,
id_pengembalian VARCHAR(10) UNIQUE NOT NULL,
jenis_denda ENUM(
'Keterlambatan',
'Tidak Ada'
) NOT NULL,
total_denda_rp DECIMAL(10,2) NOT NULL,

FOREIGN KEY (id_pengembalian)
    REFERENCES Pengembalian(id_pengembalian)

);
CREATE TABLE Pembayaran_Denda (
id_bayar_denda VARCHAR(10) PRIMARY KEY,
id_denda VARCHAR(10) NOT NULL,
tgl_bayar DATE NOT NULL,

FOREIGN KEY (id_denda)
    REFERENCES Denda(id_denda)
);
CREATE TABLE Reservasi (
id_reservasi VARCHAR(10) PRIMARY KEY,
id_anggota VARCHAR(10) NOT NULL,
id_buku VARCHAR(10) NOT NULL,
tgl_reservasi DATE NOT NULL,
status_reservasi ENUM(
'Menunggu',
'Terpenuhi',
'Dikonfirmasi',
'Dibatalkan'
) NOT NULL,
kode_reservasi ENUM(
'online',
'offline'
) NOT NULL,

FOREIGN KEY (id_anggota)
    REFERENCES Anggota(id_anggota),

FOREIGN KEY (id_buku)
    REFERENCES Buku(id_buku)
);