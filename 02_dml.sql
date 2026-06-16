USE perpustakaan;

-- ANGGOTA
INSERT INTO Anggota
(id_anggota,nama_anggota,alamat,no_hp,email)
VALUES
('ANG001','Budi Santoso','Jl. Merdeka 1, Jakarta Pusat, DKI Jakarta','081234567890','budi@gmail.com'),
('ANG002','Siti Rahayu','Jl. Sudirman 5, Kota Bandung, Jawa Barat','081234567891','siti@gmail.com'),
('ANG003','Eko Prasetyo','Jl. Gatot Subroto 12, Surabaya, Jawa Timur','081234567892','eko@gmail.com'),
('ANG004','Dewi Kusuma','Jl. Ahmad Yani 7, Yogyakarta, DI Yogyakarta','081234567893','dewi@gmail.com'),
('ANG005','Fajar Nugroho','Jl. Diponegoro 3, Semarang, Jawa Tengah','081234567894','fajar@gmail.com'),
('ANG006','Galih Wibowo','Jl. Pemuda 9, Malang, Jawa Timur','081234567895','galih@gmail.com'),
('ANG007','Hana Permata','Jl. Sudirman 14, Bekasi, Jawa Barat','081234567896','hana@gmail.com'),
('ANG008','Irwan Halim','Jl. Kenari 6, Depok, Jawa Barat','081234567897','irwan@gmail.com'),
('ANG009','Julia Hartini','Jl. Mawar 2, Tangerang, Banten','081234567898','julia@gmail.com'),
('ANG010','Krisna Aditya','Jl. Melati 8, Bogor, Jawa Barat','081234567899','krisna@gmail.com'),
('ANG011','Laras Indah','Jl. Pala 4, Surakarta, Jawa Tengah','081234567800','laras@gmail.com'),
('ANG012','Malik Fauzan','Jl. Dahlia 11, Medan, Sumatera Utara','081234567801','malik@gmail.com'),
('ANG013','Nadia Sari','Jl. Cempaka 3, Palembang, Sumatera Selatan','081234567802','nadia@gmail.com'),
('ANG014','Oscar Pratama','Jl. Anggrek 7, Makassar, Sulawesi Selatan','081234567803','oscar@gmail.com'),
('ANG015','Putri Anjani','Jl. Tulip 2, Banjarmasin, Kalimantan Selatan','081234567804','putri@gmail.com'),
('ANG016','Raka Surya','Jl. Kemuning 5, Balikpapan, Kalimantan Timur','081234567805','raka@gmail.com'),
('ANG017','Sari Utami','Jl. Flamboyan 1, Samarinda, Kalimantan Timur','081234567806','sari@gmail.com'),
('ANG018','Taufik Hidayat','Jl. Nusa Indah 8, Pontianak, Kalimantan Barat','081234567807','taufik@gmail.com');

-- PETUGAS
INSERT INTO Petugas
(id_petugas,nama_petugas,jabatan_petugas)
VALUES
('PTG001','Dewi Lestari','Pustakawan'),
('PTG002','Rudi Hartono','Admin'),
('PTG003','Sari Puspita','Pustakawan');

-- KATEGORI
INSERT INTO Kategori(id_kategori,nama_kategori)
VALUES
('KT001','Fiksi'),
('KT002','Fiksi'),
('KT003','Non-Fiksi'),
('KT004','Non-Fiksi'),
('KT005','Non-Fiksi'),
('KT006','Fiksi'),
('KT007','Non-Fiksi'),
('KT008','Fiksi'),
('KT009','Non-Fiksi'),
('KT010','Non-Fiksi');

-- PENERBIT
INSERT INTO Penerbit
(id_penerbit,nama_penerbit,kota_penerbit)
VALUES
('PNB001','Bentang Pustaka','Yogyakarta'),
('PNB002','Hasta Mitra','Jakarta'),
('PNB003','Gramedia Pustaka','Jakarta'),
('PNB004','HarperCollins Indonesia','Jakarta'),
('PNB005','Plata Publishing','Scottsdale'),
('PNB006','Bloomsbury Publishing','London'),
('PNB007','Pastel Bookks','Bandung'),
('PNB008','Kompas Gramedia','Jakarta'),
('PNB009','Mizan Pustaka','Bandung'),
('PNB010','Crown Business','New York'),
('PNB011','Republika Penerbit','Jakarta'),
('PNB012','Sound Wisdom','Mechanicsburg'),
('PNB013','Random House','New York'),
('PNB014','Canogate Books','Edinburgh');

-- PENULIS
INSERT INTO Penulis
(id_penulis,nama_penulis,kebangsaan_penulis)
VALUES
('PNL001','Andrea Hirata','Indonesia'),
('PNL002','Pramoedya Ananta Toer','Indonesia'),
('PNL003','James Clear','Amerika Serikat'),
('PNL004','Yuval Noah Harari','Israel'),
('PNL005','Paulo Coelho','Brasil'),
('PNL006','Ahmad Fuadi','Indonesia'),
('PNL007','Robert T. Kiyosaki','Amerika Serikat'),
('PNL008','J.K.Rowling','Inggris'),
('PNL009','Pidi Baiq','Indonesia'),
('PNL010','Dee Lestari','Indonesia'),
('PNL011','Henry Manampiring','Indonesia'),
('PNL012','Karen Armstrong','Inggris'),
('PNL013','Peter Thiel','Amerika Serikat'),
('PNL014','Tere Liye','Indonesia'),
('PNL015','Napoleon Hill','Amerika Serikat'),
('PNL016','Eka Kurniawan','Indonesia'),
('PNL017','Charles Duhigg','Amerika Serikat'),
('PNL018','Matt Haig','Inggris');

-- RAK
INSERT INTO Rak
(id_rak,lokasi_rak,kapasitas_rak)
VALUES
('RK001','Lantai 1 – Rak A1','50'),
('RK002','Lantai 1 – Rak B1','40'),
('RK003','Lantai 2 – Rak C2','45'),
('RK004','Lantai 2 – Rak D1','35'),
('RK005','Lantai 3 – Rak E1','30');

-- BUKU
INSERT INTO Buku
(id_buku, judul_buku, isbn, tahun_terbit, id_penerbit, id_rak)
VALUES
('BK001', 'Laskar Pelangi', '978-979-461-514-6', 2005, 'PNB001', 'RK001'),
('BK002', 'Bumi Manusia', '978-979-428-069-8', 1980, 'PNB002', 'RK002'),
('BK003', 'Atomic Habits', '978-602-06-3548-7', 2018, 'PNB003', 'RK003'),
('BK004', 'Sapiens', '978-602-424-278-7', 2011, 'PNB003', 'RK003'),
('BK005', 'The Alchemist', '978-979-22-5879-7', 1988, 'PNB004', 'RK001'),
('BK006', 'Negeri 5 Menara', '978-979-22-5026-5', 2009, 'PNB003', 'RK001'),
('BK007', 'Rich Dad Poor Dad', '978-1-5247-6344-7', 1997, 'PNB005', 'RK004'),
('BK008', 'Harry Potter & Batu Bertuah', '978-979-22-3691-7', 1997, 'PNB006', 'RK001'),
('BK009', 'Dilan 1990', '978-602-8508-38-4', 2014, 'PNB007', 'RK002'),
('BK010', 'Perahu Kertas', '978-979-22-4931-3', 2009, 'PNB001', 'RK001'),
('BK011', 'Filosofi Teras', '978-979-709-976-1', 2018, 'PNB008', 'RK003'),
('BK012', 'Sejarah Tuhan', '978-979-799-522-9', 1993, 'PNB009', 'RK004'),
('BK013', 'Zero to One', '978-0-8041-3929-8', 2014, 'PNB010', 'RK004'),
('BK014', 'Pulang', '978-602-8581-94-4', 2015, 'PNB011', 'RK002'),
('BK015', 'Think and Grow Rich', '978-1-60459-273-7', 1937, 'PNB012', 'RK005'),
('BK016', 'Cantik Itu Luka', '978-979-22-6141-4', 2002, 'PNB003', 'RK001'),
('BK017', 'The Power of Habit', '978-0-8129-8160-3', 2012, 'PNB013', 'RK005'),
('BK018', 'The Midnight Library', '978-0-525-55947-4', 2020, 'PNB014', 'RK001');

-- BUKU PENULIS
INSERT INTO Buku_Penulis
(id_buku, id_penulis)
VALUES
('BK001', 'PNL001'),
('BK002', 'PNL002'),
('BK003', 'PNL003'),
('BK004', 'PNL004'),
('BK005', 'PNL005'),
('BK006', 'PNL006'),
('BK007', 'PNL007'),
('BK008', 'PNL008'),
('BK009', 'PNL009'),
('BK010', 'PNL010'),
('BK011', 'PNL011'),
('BK012', 'PNL012'),
('BK013', 'PNL013'),
('BK014', 'PNL014'),
('BK015', 'PNL015'),
('BK016', 'PNL016'),
('BK017', 'PNL017'),
('BK018', 'PNL018');

-- EKSEMPLAR
INSERT INTO Eksemplar_Buku
(id_eksemplar, id_buku, kondisi_buku)
VALUES
('EKS001', 'BK001', 'Baik'),
('EKS002', 'BK002', 'Baik'),
('EKS003', 'BK003', 'Baik'),
('EKS004', 'BK004', 'Baik'),
('EKS005', 'BK005', 'Baik'),
('EKS006', 'BK001', 'Baik'),
('EKS007', 'BK006', 'Baik'),
('EKS008', 'BK007', 'Rusak'),
('EKS009', 'BK008', 'Baik'),
('EKS010', 'BK009', 'Baik'),
('EKS011', 'BK010', 'Baik'),
('EKS012', 'BK011', 'Baik'),
('EKS013', 'BK012', 'Baik'),
('EKS014', 'BK013', 'Baik'),
('EKS015', 'BK002', 'Baik'),
('EKS016', 'BK014', 'Baik'),
('EKS017', 'BK015', 'Baik'),
('EKS018', 'BK016', 'Baik'),
('EKS019', 'BK017', 'Baik'),
('EKS020', 'BK018', 'Hilang');

-- PEMINJAMAN
INSERT INTO Peminjaman
(id_peminjaman,tanggal_pinjam,tanggal_jatuh_tempo,status_peminjaman,id_anggota, id_petugas)
VALUES
('PJ001' , '2024-01-05 00:00:00' ,'2024-01-19 00:00:00','Tepat Waktu','ANG001', 'PTG001'),
('PJ002', '2024-01-07 00:00:00', '2024-01-21 00:00:00', 'Terlambat', 'ANG002', 'PTG001'),
('PJ003', '2024-01-10 00:00:00', '2024-01-24 00:00:00', 'Tepat Waktu', 'ANG003', 'PTG002'),
('PJ004', '2024-01-12 00:00:00', '2024-01-26 00:00:00', 'Terlambat', 'ANG004', 'PTG002'),
('PJ005', '2024-01-15 00:00:00', '2024-01-29 00:00:00', 'Tepat Waktu', 'ANG005', 'PTG003'),
('PJ006', '2024-01-18 00:00:00', '2024-02-01 00:00:00', 'Terlambat', 'ANG006', 'PTG001'),
('PJ007', '2024-01-20 00:00:00', '2024-02-03 00:00:00', 'Tepat Waktu', 'ANG007', 'PTG002'),
('PJ008', '2024-01-22 00:00:00', '2024-02-05 00:00:00', 'Terlambat', 'ANG008', 'PTG003'),
('PJ009', '2024-01-25 00:00:00', '2024-02-08 00:00:00', 'Tepat Waktu', 'ANG009', 'PTG001'),
('PJ010', '2024-01-28 00:00:00', '2024-02-11 00:00:00', 'Terlambat', 'ANG010', 'PTG002'),
('PJ011', '2024-02-01 00:00:00', '2024-02-15 00:00:00', 'Tepat Waktu', 'ANG001', 'PTG003'),
('PJ012', '2024-02-03 00:00:00', '2024-02-17 00:00:00', 'Terlambat', 'ANG011', 'PTG001'),
('PJ013', '2024-02-05 00:00:00', '2024-02-19 00:00:00', 'Tepat Waktu', 'ANG012', 'PTG002'),
('PJ014', '2024-02-08 00:00:00', '2024-02-22 00:00:00', 'Terlambat', 'ANG013', 'PTG003'),
('PJ015', '2024-02-10 00:00:00', '2024-02-24 00:00:00', 'Tepat Waktu', 'ANG014', 'PTG001'),
('PJ016', '2024-02-12 00:00:00', '2024-02-26 00:00:00', 'Terlambat', 'ANG015', 'PTG002'),
('PJ017', '2024-02-15 00:00:00', '2024-03-01 00:00:00', 'Tepat Waktu', 'ANG002', 'PTG003'),
('PJ018', '2024-02-18 00:00:00', '2024-03-04 00:00:00', 'Terlambat', 'ANG016', 'PTG001'),
('PJ019', '2024-02-20 00:00:00', '2024-03-06 00:00:00', 'Tepat Waktu', 'ANG017', 'PTG002'),
('PJ020', '2024-02-22 00:00:00', '2024-03-08 00:00:00', 'Terlambat', 'ANG018', 'PTG003');

-- DETAIL PEMINJAMAN
INSERT INTO Detail_Peminjaman
(id_detail_peminjaman,id_peminjaman,id_eksemplar,tanggal_kembali_rencana)
VALUES
('DP001', 'PJ001','EKS001', '2024-01-19 00:00:00'),
('DP002', 'PJ002', 'EKS002', '2024-01-21 00:00:00'),
('DP003', 'PJ003',	'EKS003', '2024-01-24 00:00:00'),
('DP004',	'PJ004', 'EKS004',	'2024-01-26 00:00:00'),
('DP005',	'PJ005',	'EKS005',	'2024-01-29 00:00:00'),
('DP006', 'PJ006',	'EKS006',	'2024-02-01 00:00:00'),
('DP007',	'PJ007',	'EKS007','2024-02-03 00:00:00'),
('DP008',	'PJ008',	'EKS008',	'2024-02-05 00:00:00'),
('DP009',	'PJ009',	'EKS009',	'2024-02-08 00:00:00'),
('DP010',	'PJ010',	'EKS010',	'2024-02-11 00:00:00'),
('DP011',	'PJ011',	'EKS011',	'2024-02-15 00:00:00'),
('DP012',	'PJ012',	'EKS012',	'2024-02-17 00:00:00'),
('DP013',	'PJ013',	'EKS013',	'2024-02-19 00:00:00'),
('DP014',	'PJ014',	'EKS014',	'2024-02-22 00:00:00'),
('DP015',	'PJ015',	'EKS015',	'2024-02-24 00:00:00'),
('DP016',	'PJ016',	'EKS016',	'2024-02-26 00:00:00'),
('DP017',	'PJ017',	'EKS017',	'2024-03-01 00:00:00'),
('DP018',	'PJ018',	'EKS018',	'2024-03-04 00:00:00'),
('DP019',	'PJ019',	'EKS019',	'2024-03-06 00:00:00'),
('DP020',	'PJ020',	'EKS020',	'2024-03-08 00:00:00');

-- PENGEMBALIAN
INSERT INTO Pengembalian
(id_pengembalian,id_detail_peminjaman,tanggal_kembali_aktual)
VALUES
('PKB001',	'DP001',	'2024-01-18 00:00:00'),
('PKB002',	'DP002',	'2024-01-25 00:00:00'),
('PKB003',	'DP003',	'2024-01-24 00:00:00'),
('PKB004',	'DP004',	'2024-02-01 00:00:00'),
('PKB005',	'DP005',	'2024-01-29 00:00:00'),
('PKB006',	'DP006',	'2024-02-05 00:00:00'),
('PKB007',	'DP007',    '2024-02-03 00:00:00'),
('PKB008',	'DP008',	'2024-02-10 00:00:00'),
('PKB009',	'DP009',	'2024-02-08 00:00:00'),
('PKB010',	'DP010',	'2024-02-18 00:00:00'),
('PKB011',	'DP011',	'2024-02-14 00:00:00'),
('PKB012',	'DP012',	'2024-02-20 00:00:00'),
('PKB013',	'DP013',	'2024-02-19 00:00:00'),
('PKB014',	'DP014',	'2024-02-28 00:00:00'),
('PKB015',	'DP015',	'2024-02-24 00:00:00'),
('PKB016',	'DP016',	'2024-03-02 00:00:00'),
('PKB017',	'DP017',	'2024-03-01 00:00:00'),
('PKB018',	'DP018',	'2024-03-09 00:00:00'),
('PKB019',	'DP019',	'2024-03-06 00:00:00'),
('PKB020',	'DP020',	'2024-03-15 00:00:00');

-- DENDA
INSERT INTO Denda
(id_denda,id_pengembalian,jenis_denda,total_denda_rp) 
VALUES
('DN001','PKB001','Tidak Ada',0),
('DN002','PKB002','Keterlambatan',15000),
('DN003','PKB003','Tidak Ada',0),
('DN004','PKB004','Keterlambatan',25000),
('DN005','PKB005','Tidak Ada',0),
('DN006','PKB006','Keterlambatan',10000),
('DN007','PKB007','Tidak Ada',0),
('DN008','PKB008','Keterlambatan',20000),
('DN009','PKB009','Tidak Ada',0),
('DN010','PKB010','Keterlambatan',35000),
('DN011','PKB011','Tidak Ada',0),
('DN012','PKB012','Keterlambatan',15000),
('DN013','PKB013','Tidak Ada',0),
('DN014','PKB014','Keterlambatan',30000),
('DN015','PKB015','Tidak Ada',0),
('DN016','PKB016','Keterlambatan',20000),
('DN017','PKB017','Tidak Ada',0),
('DN018','PKB018','Keterlambatan',25000),
('DN019','PKB019','Tidak Ada',0),
('DN020','PKB020','Keterlambatan',35000);

-- PEMBAYARAN DENDA
INSERT INTO Pembayaran_Denda
(id_bayar_denda,id_denda,tgl_bayar)
VALUES
('BP001','DN001','2024-01-18'),
('BP002','DN002','2024-01-26'),
('BP003','DN003','2024-01-24'),
('BP004','DN004','2024-02-02'),
('BP005','DN005','2024-01-29'),
('BP006','DN006','2024-02-06'),
('BP007','DN007','2024-02-03'),
('BP008','DN008','2024-02-11'),
('BP009','DN009','2024-02-08'),
('BP010','DN010','2024-02-19'),
('BP011','DN011','2024-02-14'),
('BP012','DN012','2024-02-21'),
('BP013','DN013','2024-02-19'),
('BP014','DN014','2024-03-01'),
('BP015','DN015','2024-02-24'),
('BP016','DN016','2024-03-03'),
('BP017','DN017','2024-03-01'),
('BP018','DN018','2024-03-10'),
('BP019','DN019','2024-03-06'),
('BP020','DN020','2024-03-16');

-- RESERVASI
INSERT INTO Reservasi
(id_reservasi,id_anggota,id_buku,tgl_reservasi,status_reservasi,kode_reservasi)
VALUES
('RV001','ANG001','BK001','2024-01-03','Terpenuhi','Online'),
('RV002','ANG002','BK002','2024-01-05','Dikonfirmasi','Online'),
('RV003','ANG003','BK003','2024-01-07','Menunggu','Offline'),
('RV004','ANG004','BK004','2024-01-10','Terpenuhi','Online'),
('RV005','ANG005','BK005','2024-01-14','Dibatalkan','Offline'),
('RV006','ANG006','BK001','2024-01-15','Dikonfirmasi','Online'),
('RV007','ANG007','BK006','2024-01-18','Menunggu','Offline'),
('RV008','ANG008','BK007','2024-01-19','Terpenuhi','Offline'),
('RV009','ANG009','BK008','2024-01-20','Menunggu','Online'),
('RV010','ANG010','BK009','2024-01-22','Dibatalkan','Online'),
('RV011','ANG001','BK010','2024-01-24','Dikonfirmasi','Offline'),
('RV012','ANG011','BK011','2024-01-27','Terpenuhi','Online'),
('RV013','ANG012','BK012','2024-02-03','Dikonfirmasi','Online'),
('RV014','ANG013','BK013','2024-02-05','Menunggu','Offline'),
('RV015','ANG014','BK002','2024-02-08','Dibatalkan','Online'),
('RV016','ANG015','BK014','2024-02-11','Dikonfirmasi','Offline'),
('RV017','ANG002','BK015','2024-02-13','Menunggu','Online'),
('RV018','ANG016','BK016','2024-02-15','Terpenuhi','Online'),
('RV019','ANG017','BK017','2024-02-18','Dikonfirmasi','Offline'),
('RV020','ANG018','BK018','2024-02-20','Terpenuhi','Online');