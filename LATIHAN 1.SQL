 USE TokoRetailDB;
go

CREATE TABLE kategoriproduk (
    kategoriID INT IDENTITY (1,1) PRIMARY KEY,
    NamaKategori VARCHAR(100) NOT NULL UNIQUE
);
GO   

CREATE TABLE produk 
    produkID INT IDENTITY (1001,1) PRIMARY KEY,
    SKU VARCHAR (20) NOT NULL UNIQUE,
    Namaproduk VARCHAR(150) NOT NULL,
    Harga Decimal(10,2) NOT NULL
    Stok INT NOT NULL,
    KaregoriID INT NULL,









    




    