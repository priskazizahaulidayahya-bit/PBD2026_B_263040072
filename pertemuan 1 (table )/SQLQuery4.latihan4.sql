-- 1. Menambahkan Primary Key ke tabel Produk (ubah kolom jadi NOT NULL dulu)
ALTER TABLE Produk
ALTER COLUMN ProdukID INT NOT NULL;
GO



-- 2. Menambahkan kolom NoTelepon ke tabel Pelanggan
ALTER TABLE Pelanggan
ADD NoTelepon VARCHAR(20) NULL;
GO

-- 3. Mengubah kolom Harga di Produk agar wajib diisi (NOT NULL)
ALTER TABLE Produk
ALTER COLUMN Harga DECIMAL(10, 2) NOT NULL;
GO

EXEC sp_help 'Pelanggan';