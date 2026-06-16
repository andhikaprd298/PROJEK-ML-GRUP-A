CREATE VIEW vw_riwayat_peminjaman AS
SELECT
a.nama_anggota,
b.judul_buku,
p.tanggal_pinjam,
p.tanggal_jatuh_tempo
FROM Anggota a
JOIN Peminjaman p
ON a.id_anggota=p.id_anggota
JOIN Detail_Peminjaman dp
ON p.id_peminjaman=dp.id_peminjaman
JOIN Eksemplar_Buku eb
ON dp.id_eksemplar=eb.id_eksemplar
JOIN Buku b
ON eb.id_buku=b.id_buku;

CREATE VIEW vw_denda_belum_lunas AS
SELECT *
FROM Denda
WHERE jenis_denda='Keterlambatan';