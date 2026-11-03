INSERT INTO Pelanggan (NamaDepan, NamaBelakang, Email, NoTelepon)
VALUES
('Priska','yahya', 'priskayahya@gmail.com', '082126277780'),
('titut','menangis', 'titut@gmail.com', '081234567892');

SELECT * FROM Pelanggan


UPDATE Pelanggan
SET Email='priska@gmail.com'
WHERE PelangganID=1;


DELETE FROM Pelanggan
WHERE PelangganID=2;

PRINT 'data pelanggan setelah tidak sengaja terhapus'
SELECT PelangganID, NamaDepan,Namabelakang, Email, NoTelepon FROM Pelanggan; 

ROLLBACK TRANSACTION;
SELECT PelangganID