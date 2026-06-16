DELIMITER //

CREATE FUNCTION jumlah_peminjaman(
p_id_anggota VARCHAR(10)
)
RETURNS INT
DETERMINISTIC

BEGIN

DECLARE jumlah INT;

SELECT COUNT(*)
INTO jumlah
FROM Peminjaman
WHERE id_anggota = p_id_anggota;

RETURN jumlah;

END //

DELIMITER ;

SELECT
id_anggota,
nama_anggota,
jumlah_peminjaman(id_anggota) AS total_pinjam
FROM Anggota;