CREATE DATABASE QLBANHANG_TUNG4
USE QLBANHANG_TUNG4;
CREATE TABLE DANHMUCSP (
    IDDANHMUC INT PRIMARY KEY,
    TENDANHMUC VARCHAR(255) NOT NULL
);

CREATE TABLE SANPHAM (
    SPID INT PRIMARY KEY,
    TENSP VARCHAR(255) NOT NULL,
    MOTASP TEXT,
    GIA DECIMAL(10, 2),
    IDDANHMUC INT,
    ANHURL VARCHAR(255),
    FOREIGN KEY (IDDANHMUC) REFERENCES DANHMUCSP(IDDANHMUC)
);

CREATE TABLE NGUOIDUNG (
    IDNGUOIDUNG INT PRIMARY KEY,
    HO VARCHAR(255),
    TEN VARCHAR(255),
    Email VARCHAR(255) NOT NULL,
    MATKHAU VARCHAR(255) NOT NULL
);

CREATE TABLE DONHANG (
    IDDONHANG INT PRIMARY KEY,
    IDNGUOIDUNG INT,
    NGAYDATHANG DATE,
    TOTALMN DECIMAL(10, 2),
    TRTHDONHANG VARCHAR(50),
    FOREIGN KEY (IDNGUOIDUNG) REFERENCES NGUOIDUNG(IDNGUOIDUNG)
);

CREATE TABLE CHITIETDONHANG (
    IDCHITIETDONHANG INT PRIMARY KEY,
    IDDONHANG INT,
    SPID INT,
    SOLUONG INT,
    GIA DECIMAL(10, 2),
    FOREIGN KEY (IDDONHANG) REFERENCES DONHANG(IDDONHANG),
    FOREIGN KEY (SPID) REFERENCES SANPHAM(SPID)
);


SELECT @@SERVERNAME AS 'Server Name', CURRENT_USER AS 'Username';

sp_dropserver 'DESKTOP-J8LPQTN'  
go  
sp_addserver 'sqltung','local'  
go