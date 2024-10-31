-- Müþteriler Tablosu
CREATE TABLE Musteriler (
    musteri_id INT PRIMARY KEY IDENTITY(1,1),
    musteri_adi VARCHAR(100) NOT NULL,
    musteri_telefon_no VARCHAR(15)
);

CREATE TABLE Calisanlar (
    calisan_id INT PRIMARY KEY IDENTITY(1,1),
    calisan_adi VARCHAR(100) NOT NULL,
    calisan_tel VARCHAR(15),
    calisan_maas DECIMAL(8, 2),
    komisyon DECIMAL(8, 2)
);

-- Siparisler Tablosu
CREATE TABLE Siparisler (
    siparis_id INT PRIMARY KEY IDENTITY(1,1),
    musteri_id INT,
    calisan_id INT,
    toplam_fiyat DECIMAL(8, 2),
    FOREIGN KEY (musteri_id) REFERENCES Musteriler(musteri_id),
    FOREIGN KEY (calisan_id) REFERENCES Calisanlar(calisan_id)
);


-- Kategori Tablosu
CREATE TABLE Kategori (
    kategori_id INT PRIMARY KEY IDENTITY(1,1),
    kategori_adi VARCHAR(100) NOT NULL
);


-- Urunler Tablosu
CREATE TABLE Urunler (
    urun_id INT PRIMARY KEY IDENTITY(1,1),
    urun_adi VARCHAR(100) NOT NULL,
    urun_stok INT,
    urun_fiyat DECIMAL(8, 2),
    kategori_id INT,
    FOREIGN KEY (kategori_id) REFERENCES Kategori(kategori_id)
);

-- Siparis Detayi Tablosu
CREATE TABLE SiparisDetayi (
    siparis_detay_id INT PRIMARY KEY IDENTITY(1,1),
    siparis_id INT,
    urun_id INT,
    urun_sayisi INT,
    birim_fiyat DECIMAL(8, 2),
    FOREIGN KEY (siparis_id) REFERENCES Siparisler(siparis_id),
    FOREIGN KEY (urun_id) REFERENCES Urunler(urun_id)
);

-- Calisanlar Tablosu


-- Calisan Performansi Tablosu
CREATE TABLE CalisanPerformansi (
    performans_id INT PRIMARY KEY IDENTITY(1,1),
    calisan_id INT,
    siparis_id INT,
    komisyon_tutar DECIMAL(8, 2),
    FOREIGN KEY (calisan_id) REFERENCES Calisanlar(calisan_id),
    FOREIGN KEY (siparis_id) REFERENCES Siparisler(siparis_id)
);



-- Alt Kategori Tablosu
CREATE TABLE AltKategori (
    alt_kategori_id INT PRIMARY KEY IDENTITY(1,1),
    kategori_id INT,
    alt_kategori_adi VARCHAR(100),
    FOREIGN KEY (kategori_id) REFERENCES Kategori(kategori_id)
);

-- Tedarikciler Tablosu
CREATE TABLE Tedarikciler (
    tedarikci_id INT PRIMARY KEY IDENTITY(1,1),
    tedarikci_adi VARCHAR(100) NOT NULL,
    adres VARCHAR(255),
    iletisim_no VARCHAR(15)
);


-- Urun-Tedarikci Tablosu
CREATE TABLE UrunTedarikci (
    urun_tedarikci_id INT PRIMARY KEY IDENTITY(1,1),
    urun_id INT,
    tedarikci_id INT,
    FOREIGN KEY (urun_id) REFERENCES Urunler(urun_id),
    FOREIGN KEY (tedarikci_id) REFERENCES Tedarikciler(tedarikci_id)
);


-- Kargo Tablosu
CREATE TABLE Kargo (
    kargo_id INT PRIMARY KEY IDENTITY(1,1),
    siparis_id INT,
    kargo_durumu VARCHAR(50),
    kargo_tarih DATE,
    FOREIGN KEY (siparis_id) REFERENCES Siparisler(siparis_id)
);
