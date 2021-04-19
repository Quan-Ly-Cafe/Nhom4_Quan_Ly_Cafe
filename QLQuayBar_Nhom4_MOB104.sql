use master
drop database QLQuayBar_Nhom4_MOB104
go
create database QLQuayBar_Nhom4_MOB104
go
use QLQuayBar_Nhom4_MOB104
go

if OBJECT_ID('CTdoanhThu') is not null
drop table CTdoanhThu
go

if OBJECT_ID('HoaDon') is not null
drop table HoaDon
go

if OBJECT_ID('SanPham') is not null
drop table SanPham
go

if OBJECT_ID('NhanVien') is not null
drop table NhanVien
go

if OBJECT_ID('DangNhap') is not null
drop table DangNhap
go

Create table NhanVien(
	maNhanVien int identity,
	hoTen nvarchar(30) not null,
	GioiTinh nvarchar(5) not null,
	tuoi int,
	DiaChi nvarchar(50),
	chucVu nvarchar(15) not null,
	constraint PK_NhanVien primary key(maNhanVien),
)
insert into NhanVien values (N'Nguyễn Thành Nam', N'Nam', '19', N'Hà Nội', N'Quản Lý');
insert into NhanVien values (N'Đặng Thanh Phong', N'Nam', '20', N'Bắc Giang', N'Nhân Viên');
insert into NhanVien values (N'Ngô Văn Hải', N'Nam', '21', N'Hà Nội', N'Nhân Viên');
insert into NhanVien values (N'Nguyễn Minh Bách', N'Nam', '25', N'Phú Thọ', N'Nhân Viên');
go

create table DangNhap(
	maNhanVien int,
	TaiKhoan nvarchar(30) not null,
	MatKhau nvarchar(30) not null,
	chucVu nvarchar(15) not null,
	constraint PK_DangNhap primary key(TaiKhoan),
	constraint FK_DangNhap_NhanVien foreign key (maNhanVien) references NhanVien(maNhanVien)
)

insert into DangNhap values (1, N'namnt', N'123', N'Quản Lý');
insert into DangNhap values (2, N'phongdt', N'123', N'Nhân Viên');
insert into DangNhap values (3, N'hainv', N'123', N'Nhân Viên');
insert into DangNhap values (4, N'bachnm', N'123', N'Nhân Viên');
go

Create table SanPham(
	maSanPham nvarchar(10) not null,
	tenSanPham nvarchar(30) not null,
	tenTLoai nvarchar(20),
	gia money,
	constraint PK_SanPham primary key(maSanPham)
)

go

Create table HoaDon(
	maNhanVien  int,
	maHoaDon nvarchar(10) not null,
	maSanPham nvarchar(10) ,
	tenSanPham nvarchar(100) not null,
	gia int,
	soLuong int,
	tongTien int,
	ngXuatHD nvarchar(10)
	constraint PK_HoaDon primary key(maHoaDon),
	constraint FK_HoaDon_NhanVien foreign key (maNhanVien) references NhanVien(maNhanVien),
	constraint FK_HoaDon_SanPham foreign key (maSanPham) references SanPham(maSanPham)
)
go
create table CTdoanhThu(
	maNhanVien int,
	maHoaDon nvarchar(10) not null,
	soLuong int,
	tongTien int,
	ngXuatHD nvarchar(10),	
	constraint PK_CTdoanhThu primary key(maHoaDon),
	constraint FK_CTdoanhThu_HoaDon foreign key (maHoaDon) references HoaDon(maHoaDon)
)

--Thêm dữ liệu cho bảng

select * from DangNhap;
select * from NhanVien;
select * from SanPham;
select * from HoaDon;
select * from CTdoanhThu;

delete from CTdoanhThu
delete from HoaDon

select * from NhanVien inner join DangNhap on NhanVien.maNhanVien  = DangNhap.maNhanVien