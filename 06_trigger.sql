DELIMITER //

CREATE TRIGGER trg_update_status_pinjam
AFTER INSERT ON Detail_Peminjaman
FOR EACH ROW
BEGIN

UPDATE Eksemplar_Buku
SET status_eksemplar='Dipinjam'
WHERE id_eksemplar=NEW.id_eksemplar;

END //

DELIMITER ;