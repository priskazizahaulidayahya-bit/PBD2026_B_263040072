-- 1. Buat tabel Pelanggan terlebih dahulu (Tabel Induk)
CREATE TABLE Pelanggan (
    PelangganID INT IDENTITY(1,1) PRIMARY KEY,
    NamaDepan VARCHAR(50) NOT NULL,
    NamaBelakang VARCHAR(50) NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    TanggalDaftar DATE DEFAULT GETDATE()
);
GO

-- 2. Setelah tabel Pelanggan berhasil dibuat, baru buat tabel PesananHeader (Tabel Anak)
CREATE TABLE PesananHeader (
    PesananID INT IDENTITY(1,1) PRIMARY KEY,
    TanggalPesanan DATETIME2 NOT NULL,
    PelangganID INT NOT NULL,
    StatusPesanan VARCHAR(10) NOT NULL,
    
    -- Mendefinisikan constraint FOREIGN KEY yang merujuk ke tabel Pelanggan
    CONSTRAINT FK_Pesanan_Pelanggan
    FOREIGN KEY (PelangganID)
    REFERENCES Pelanggan (PelangganID),
    
    -- Mendefinisikan constraint CHECK
    CONSTRAINT CHK_StatusPesanan
    CHECK (StatusPesanan IN ('Baru', 'Proses', 'Selesai'))
);
GO
