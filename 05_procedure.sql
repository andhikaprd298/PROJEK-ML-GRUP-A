DELIMITER //

CREATE PROCEDURE bayar_denda(
IN p_id_bayar_denda VARCHAR(10),
IN p_id_denda VARCHAR(10),
IN p_tgl_bayar DATE
)

BEGIN

INSERT INTO Pembayaran_Denda
(
id_bayar_denda,
id_denda,
tgl_bayar
)

VALUES
(
p_id_bayar_denda,
p_id_denda,
p_tgl_bayar
);

UPDATE Denda
SET jenis_denda='Tidak Ada',
total_denda_rp=0
WHERE id_denda=p_id_denda;

END //

DELIMITER ;

CALL bayar_denda(
'BP021',
'DN001',
CURDATE()
);