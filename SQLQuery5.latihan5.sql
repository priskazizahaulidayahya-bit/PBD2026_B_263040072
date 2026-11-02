-- 1. Buat tabel detail
CREATE TABLE PesananDetail (
    PesananDetailID INT IDENTITY(1,1) PRIMARY KEY,
    PesananID INT NOT NULL,
    ProdukID INT NOT NULL,
    Jumlah INT NOT NULL,
    CONSTRAINT FK_Detail_Header
    FOREIGN KEY (PesananID) REFERENCES PesananHeader(PesananID),
    CONSTRAINT FK_Detail_Produk
    FOREIGN KEY (ProdukID) REFERENCES Produk (ProdukID)
);
GO

-- 2. Coba hapus tabel Pelanggan (Akan Gagal karena ada Foreign Key)
PRINT 'Mencoba menghapus Pelanggan... (Harusnya Gagal)';
DROP TABLE Pelanggan;
GO

-- 3. Coba hapus tabel PesananHeader (Akan Gagal karena dirujuk PesananDetail)
PRINT 'Mencoba menghapus PesananHeader... (Harusnya Gagal)';
DROP TABLE PesananHeader;
GO

-- 4. Hapus tabel secara berurutan (dari anak ke induk)
PRINT 'Menghapus PesananDetail (tabel anak) terlebih dahulu...';
DROP TABLE PesananDetail;
GO

PRINT 'Menghapus PesananHeader (tabel induk dari detail)...';
DROP TABLE PesananHeader;
GO

PRINT 'Menghapus Pelanggan (tabel induk dari header)...';
DROP TABLE Pelanggan;
GO

PRINT 'Semua tabel pesanan dan pelanggan berhasil dihapus.';