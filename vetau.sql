USE [vetau]
GO
ALTER TABLE [dbo].[ve] DROP CONSTRAINT [FK_Ve_Tuyen]
GO
ALTER TABLE [dbo].[ve] DROP CONSTRAINT [FK_Ve_Tau]
GO
ALTER TABLE [dbo].[ve] DROP CONSTRAINT [FK_Ve_Slot]
GO
ALTER TABLE [dbo].[ve] DROP CONSTRAINT [FK_Ve_KhachHang]
GO
ALTER TABLE [dbo].[tuyen] DROP CONSTRAINT [FK_Tuyen_GaDi]
GO
ALTER TABLE [dbo].[tuyen] DROP CONSTRAINT [FK_Tuyen_GaDen]
GO
ALTER TABLE [dbo].[toatau] DROP CONSTRAINT [FK_ToaTau_Tau]
GO
ALTER TABLE [dbo].[tiepnhanyeucaudoive] DROP CONSTRAINT [FK_TiepNhanYeuCauDoiVe_NhanVien]
GO
ALTER TABLE [dbo].[tiepnhanyeucaudoive] DROP CONSTRAINT [FK_TiepNhanYeuCauDoiVe_KhachHang]
GO
ALTER TABLE [dbo].[slot] DROP CONSTRAINT [FK_Slot_Khoang]
GO
ALTER TABLE [dbo].[lichsutrave] DROP CONSTRAINT [FK_LichSuTraVe_Ve]
GO
ALTER TABLE [dbo].[lichsutrave] DROP CONSTRAINT [FK_LichSuTraVe_NhanVien]
GO
ALTER TABLE [dbo].[lichsutrave] DROP CONSTRAINT [FK_LichSuTraVe_KhachHang]
GO
ALTER TABLE [dbo].[khoang] DROP CONSTRAINT [FK_Khoang_ToaTau]
GO
ALTER TABLE [dbo].[khoang] DROP CONSTRAINT [FK_Khoang_LoaiKhoang]
GO
ALTER TABLE [dbo].[hoadon] DROP CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[hoadon] DROP CONSTRAINT [FK_HoaDon_KhuyenMai]
GO
ALTER TABLE [dbo].[hoadon] DROP CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[chuyen] DROP CONSTRAINT [FK_Chuyen_Tuyen]
GO
ALTER TABLE [dbo].[chuyen] DROP CONSTRAINT [FK_Chuyen_Tau]
GO
ALTER TABLE [dbo].[chitiethoadon] DROP CONSTRAINT [FK_ChiTietHoaDon_Ve]
GO
ALTER TABLE [dbo].[chitiethoadon] DROP CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ve] DROP CONSTRAINT [DF__ve__TinhTrangVe__0880433F]
GO
ALTER TABLE [dbo].[tiepnhanyeucaudoive] DROP CONSTRAINT [DF__tiepnhany__GhiCh__03BB8E22]
GO
ALTER TABLE [dbo].[tiepnhanyeucaudoive] DROP CONSTRAINT [DF__tiepnhany__ThoiG__02C769E9]
GO
ALTER TABLE [dbo].[lichsutrave] DROP CONSTRAINT [DF__lichsutra__ThoiG__13BCEBC1]
GO
ALTER TABLE [dbo].[khuyenmai] DROP CONSTRAINT [DF__khuyenmai__GhiCh__7A3223E8]
GO
ALTER TABLE [dbo].[khuyenmai] DROP CONSTRAINT [DF__khuyenmai__PhanT__793DFFAF]
GO
ALTER TABLE [dbo].[khachhang] DROP CONSTRAINT [DF__khachhang__thoiG__67DE6983]
GO
ALTER TABLE [dbo].[hoadon] DROP CONSTRAINT [DF__hoadon__MaKhuyen__74794A92]
GO
ALTER TABLE [dbo].[hoadon] DROP CONSTRAINT [DF__hoadon__GhiChu__73852659]
GO
ALTER TABLE [dbo].[hoadon] DROP CONSTRAINT [DF__hoadon__ThoiGian__72910220]
GO
ALTER TABLE [dbo].[chitiethoadon] DROP CONSTRAINT [DF__chitietho__SoLuo__6FB49575]
GO
/****** Object:  Index [IX_ToaTau_MaTau]    Script Date: 5/27/2025 8:09:44 PM ******/
DROP INDEX [IX_ToaTau_MaTau] ON [dbo].[toatau]
GO
/****** Object:  Index [IX_TiepNhanYeuCau_MaNhanVien]    Script Date: 5/27/2025 8:09:44 PM ******/
DROP INDEX [IX_TiepNhanYeuCau_MaNhanVien] ON [dbo].[tiepnhanyeucaudoive]
GO
/****** Object:  Index [IX_TiepNhanYeuCau_MaKhachHang]    Script Date: 5/27/2025 8:09:44 PM ******/
DROP INDEX [IX_TiepNhanYeuCau_MaKhachHang] ON [dbo].[tiepnhanyeucaudoive]
GO
/****** Object:  Index [IX_Khoang_MaToa]    Script Date: 5/27/2025 8:09:44 PM ******/
DROP INDEX [IX_Khoang_MaToa] ON [dbo].[khoang]
GO
/****** Object:  Index [IX_HoaDon_MaNhanVien]    Script Date: 5/27/2025 8:09:44 PM ******/
DROP INDEX [IX_HoaDon_MaNhanVien] ON [dbo].[hoadon]
GO
/****** Object:  Index [IX_HoaDon_MaKhuyenMai]    Script Date: 5/27/2025 8:09:44 PM ******/
DROP INDEX [IX_HoaDon_MaKhuyenMai] ON [dbo].[hoadon]
GO
/****** Object:  Index [IX_HoaDon_MaKhachHang]    Script Date: 5/27/2025 8:09:44 PM ******/
DROP INDEX [IX_HoaDon_MaKhachHang] ON [dbo].[hoadon]
GO
/****** Object:  Index [IX_Chuyen_MaTuyen]    Script Date: 5/27/2025 8:09:44 PM ******/
DROP INDEX [IX_Chuyen_MaTuyen] ON [dbo].[chuyen]
GO
/****** Object:  Index [IX_Chuyen_MaTau]    Script Date: 5/27/2025 8:09:44 PM ******/
DROP INDEX [IX_Chuyen_MaTau] ON [dbo].[chuyen]
GO
/****** Object:  Table [dbo].[ve]    Script Date: 5/27/2025 8:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ve]') AND type in (N'U'))
DROP TABLE [dbo].[ve]
GO
/****** Object:  Table [dbo].[tuyen]    Script Date: 5/27/2025 8:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tuyen]') AND type in (N'U'))
DROP TABLE [dbo].[tuyen]
GO
/****** Object:  Table [dbo].[toatau]    Script Date: 5/27/2025 8:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[toatau]') AND type in (N'U'))
DROP TABLE [dbo].[toatau]
GO
/****** Object:  Table [dbo].[tiepnhanyeucaudoive]    Script Date: 5/27/2025 8:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tiepnhanyeucaudoive]') AND type in (N'U'))
DROP TABLE [dbo].[tiepnhanyeucaudoive]
GO
/****** Object:  Table [dbo].[tau]    Script Date: 5/27/2025 8:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tau]') AND type in (N'U'))
DROP TABLE [dbo].[tau]
GO
/****** Object:  Table [dbo].[slot]    Script Date: 5/27/2025 8:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[slot]') AND type in (N'U'))
DROP TABLE [dbo].[slot]
GO
/****** Object:  Table [dbo].[nhanvien]    Script Date: 5/27/2025 8:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nhanvien]') AND type in (N'U'))
DROP TABLE [dbo].[nhanvien]
GO
/****** Object:  Table [dbo].[loaikhoang]    Script Date: 5/27/2025 8:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[loaikhoang]') AND type in (N'U'))
DROP TABLE [dbo].[loaikhoang]
GO
/****** Object:  Table [dbo].[lichsutrave]    Script Date: 5/27/2025 8:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lichsutrave]') AND type in (N'U'))
DROP TABLE [dbo].[lichsutrave]
GO
/****** Object:  Table [dbo].[khuyenmai]    Script Date: 5/27/2025 8:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[khuyenmai]') AND type in (N'U'))
DROP TABLE [dbo].[khuyenmai]
GO
/****** Object:  Table [dbo].[khoang]    Script Date: 5/27/2025 8:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[khoang]') AND type in (N'U'))
DROP TABLE [dbo].[khoang]
GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 5/27/2025 8:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[khachhang]') AND type in (N'U'))
DROP TABLE [dbo].[khachhang]
GO
/****** Object:  Table [dbo].[hoadon]    Script Date: 5/27/2025 8:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hoadon]') AND type in (N'U'))
DROP TABLE [dbo].[hoadon]
GO
/****** Object:  Table [dbo].[ga]    Script Date: 5/27/2025 8:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ga]') AND type in (N'U'))
DROP TABLE [dbo].[ga]
GO
/****** Object:  Table [dbo].[chuyen]    Script Date: 5/27/2025 8:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[chuyen]') AND type in (N'U'))
DROP TABLE [dbo].[chuyen]
GO
/****** Object:  Table [dbo].[chitiethoadon]    Script Date: 5/27/2025 8:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[chitiethoadon]') AND type in (N'U'))
DROP TABLE [dbo].[chitiethoadon]
GO
USE [master]
GO
/****** Object:  Database [vetau]    Script Date: 5/27/2025 8:09:44 PM ******/
DROP DATABASE [vetau]
GO
/****** Object:  Database [vetau]    Script Date: 5/27/2025 8:09:44 PM ******/
CREATE DATABASE [vetau]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'vetau', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\vetau.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'vetau_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\vetau_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [vetau] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [vetau].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [vetau] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [vetau] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [vetau] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [vetau] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [vetau] SET ARITHABORT OFF 
GO
ALTER DATABASE [vetau] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [vetau] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [vetau] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [vetau] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [vetau] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [vetau] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [vetau] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [vetau] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [vetau] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [vetau] SET  DISABLE_BROKER 
GO
ALTER DATABASE [vetau] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [vetau] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [vetau] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [vetau] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [vetau] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [vetau] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [vetau] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [vetau] SET RECOVERY FULL 
GO
ALTER DATABASE [vetau] SET  MULTI_USER 
GO
ALTER DATABASE [vetau] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [vetau] SET DB_CHAINING OFF 
GO
ALTER DATABASE [vetau] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [vetau] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [vetau] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [vetau] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [vetau] SET QUERY_STORE = OFF
GO
USE [vetau]
GO
/****** Object:  Table [dbo].[chitiethoadon]    Script Date: 5/27/2025 8:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitiethoadon](
	[DonGia] [float] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[MaHoaDon] [varchar](25) NOT NULL,
	[MaVe] [varchar](25) NOT NULL,
	[MaChiTietHoaDon] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chuyen]    Script Date: 5/27/2025 8:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chuyen](
	[MaChuyen] [varchar](25) NOT NULL,
	[ThoiGianKhoiHanh] [datetime2](0) NOT NULL,
	[ThoiGianDen] [datetime2](0) NOT NULL,
	[MaTuyen] [varchar](25) NOT NULL,
	[MaTau] [varchar](25) NOT NULL,
 CONSTRAINT [PK_Chuyen] PRIMARY KEY CLUSTERED 
(
	[MaChuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ga]    Script Date: 5/27/2025 8:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ga](
	[MaGa] [nvarchar](10) NOT NULL,
	[TenGa] [nvarchar](100) NOT NULL,
	[VungMien] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoadon]    Script Date: 5/27/2025 8:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoadon](
	[MaHoaDon] [varchar](25) NOT NULL,
	[ThoiGianTaoHoaDon] [datetime2](0) NOT NULL,
	[GhiChu] [varchar](255) NULL,
	[VAT] [float] NOT NULL,
	[MaKhachHang] [int] NOT NULL,
	[MaNhanVien] [int] NOT NULL,
	[MaKhuyenMai] [varchar](50) NULL,
	[tongTien] [float] NULL,
	[tamTinh] [float] NULL,
	[tongTienGiam] [float] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 5/27/2025 8:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachhang](
	[MaKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[hoTen] [nvarchar](100) NULL,
	[soDienThoai] [varchar](20) NULL,
	[thoiGianDangKy] [datetime] NULL,
	[laKhachHangThanThiet] [bit] NULL,
	[CMND] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khoang]    Script Date: 5/27/2025 8:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khoang](
	[MaKhoang] [varchar](25) NOT NULL,
	[TenKhoang] [varchar](50) NOT NULL,
	[MaToa] [varchar](25) NOT NULL,
	[maLoaiKhoang] [nvarchar](10) NULL,
 CONSTRAINT [PK_Khoang] PRIMARY KEY CLUSTERED 
(
	[MaKhoang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khuyenmai]    Script Date: 5/27/2025 8:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khuyenmai](
	[MaKhuyenMai] [varchar](50) NOT NULL,
	[PhanTramGiamGia] [float] NOT NULL,
	[GhiChu] [varchar](255) NULL,
	[ThoiGianBatDau] [datetime2](0) NOT NULL,
	[ThoiGianKetThuc] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[MaKhuyenMai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lichsutrave]    Script Date: 5/27/2025 8:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lichsutrave](
	[MaLichSuTraVe] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVienThucHien] [int] NULL,
	[MaKhachHang] [int] NULL,
	[PhiTraVe] [decimal](10, 2) NULL,
	[LoaiTraVe] [varchar](255) NULL,
	[ThoiGianTraVe] [datetime] NULL,
	[GhiChu] [varchar](255) NULL,
	[MaVe] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLichSuTraVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loaikhoang]    Script Date: 5/27/2025 8:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaikhoang](
	[maLoaiKhoang] [nvarchar](10) NOT NULL,
	[tenLoaiKhoang] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maLoaiKhoang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhanvien]    Script Date: 5/27/2025 8:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanvien](
	[MaNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[GioiTinh] [bit] NULL,
	[SoDienThoai] [nvarchar](20) NULL,
	[NgayDangKy] [date] NULL,
	[NgaySinh] [date] NULL,
	[TrangThai] [bit] NULL,
	[MatKhau] [nvarchar](255) NULL,
	[Email] [nvarchar](100) NULL,
	[VaiTro] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[slot]    Script Date: 5/27/2025 8:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[slot](
	[MaSlot] [varchar](50) NOT NULL,
	[SoSlot] [int] NOT NULL,
	[MaKhoang] [varchar](25) NOT NULL,
	[TinhTrang] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSlot] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tau]    Script Date: 5/27/2025 8:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tau](
	[MaTau] [varchar](25) NOT NULL,
	[TenTau] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tau] PRIMARY KEY CLUSTERED 
(
	[MaTau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tiepnhanyeucaudoive]    Script Date: 5/27/2025 8:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tiepnhanyeucaudoive](
	[MaYeuCau] [int] NOT NULL,
	[ThoiGianTiepNhan] [datetime2](0) NOT NULL,
	[ThoiGianYeuCauDoi] [datetime2](0) NOT NULL,
	[GhiChu] [varchar](255) NULL,
	[MaKhachHang] [int] NOT NULL,
	[MaNhanVien] [int] NOT NULL,
 CONSTRAINT [PK_TiepNhanYeuCau] PRIMARY KEY CLUSTERED 
(
	[MaYeuCau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[toatau]    Script Date: 5/27/2025 8:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[toatau](
	[MaToa] [varchar](25) NOT NULL,
	[TenToa] [varchar](50) NOT NULL,
	[MaTau] [varchar](25) NOT NULL,
 CONSTRAINT [PK_ToaTau] PRIMARY KEY CLUSTERED 
(
	[MaToa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tuyen]    Script Date: 5/27/2025 8:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tuyen](
	[MaTuyen] [varchar](25) NOT NULL,
	[NgayTaoTuyen] [date] NOT NULL,
	[thoiGianTaoTuyen] [datetime] NULL,
	[MaGaDi] [nvarchar](10) NULL,
	[MaGaDen] [nvarchar](10) NULL,
	[giaNiemYet] [float] NULL,
 CONSTRAINT [PK_Tuyen] PRIMARY KEY CLUSTERED 
(
	[MaTuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ve]    Script Date: 5/27/2025 8:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ve](
	[MaVe] [varchar](25) NOT NULL,
	[TinhTrangVe] [int] NOT NULL,
	[maKhachHang] [int] NULL,
	[maTuyen] [varchar](25) NULL,
	[maTau] [varchar](25) NULL,
	[hoTenNguoiDi] [nvarchar](100) NULL,
	[cccdNguoiDi] [nvarchar](20) NULL,
	[namSinhNguoiDi] [int] NULL,
	[maSlot] [varchar](50) NULL,
 CONSTRAINT [PK_Ve] PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[chitiethoadon] ON 

INSERT [dbo].[chitiethoadon] ([DonGia], [SoLuong], [MaHoaDon], [MaVe], [MaChiTietHoaDon]) VALUES (1200000, 1, N'HD-KH1004-2025-04-14', N'GA01-GA06-S001-2025-04-14', 4)
INSERT [dbo].[chitiethoadon] ([DonGia], [SoLuong], [MaHoaDon], [MaVe], [MaChiTietHoaDon]) VALUES (1200000, 1, N'HD-KH1010-2025-04-14', N'GA01-GA06-S005-2025-04-14', 8)
INSERT [dbo].[chitiethoadon] ([DonGia], [SoLuong], [MaHoaDon], [MaVe], [MaChiTietHoaDon]) VALUES (1200000, 1, N'HD-KH1010-2025-04-14', N'GA01-GA06-S006-2025-04-14', 9)
INSERT [dbo].[chitiethoadon] ([DonGia], [SoLuong], [MaHoaDon], [MaVe], [MaChiTietHoaDon]) VALUES (1200000, 1, N'HD-KH1010-2025-04-14', N'GA01-GA06-S007-2025-04-14', 10)
INSERT [dbo].[chitiethoadon] ([DonGia], [SoLuong], [MaHoaDon], [MaVe], [MaChiTietHoaDon]) VALUES (1200000, 1, N'HD-KH1011-2025-04-15', N'GA01-GA06-S002-2025-04-15', 11)
INSERT [dbo].[chitiethoadon] ([DonGia], [SoLuong], [MaHoaDon], [MaVe], [MaChiTietHoaDon]) VALUES (1200000, 1, N'HD-KH1013-2025-04-15', N'GA01-GA06-S009-2025-04-15', 12)
INSERT [dbo].[chitiethoadon] ([DonGia], [SoLuong], [MaHoaDon], [MaVe], [MaChiTietHoaDon]) VALUES (1200000, 1, N'HD-KH1015-2025-04-15', N'GA01-GA06-S010-2025-04-15', 13)
INSERT [dbo].[chitiethoadon] ([DonGia], [SoLuong], [MaHoaDon], [MaVe], [MaChiTietHoaDon]) VALUES (1200000, 1, N'HD-KH1004-2025-04-15', N'GA01-GA06-S008-2025-04-15', 14)
INSERT [dbo].[chitiethoadon] ([DonGia], [SoLuong], [MaHoaDon], [MaVe], [MaChiTietHoaDon]) VALUES (1200000, 1, N'HD-KH1004-2025-04-19', N'GA01-GA06-S033-2025-04-19', 15)
SET IDENTITY_INSERT [dbo].[chitiethoadon] OFF
GO
INSERT [dbo].[chuyen] ([MaChuyen], [ThoiGianKhoiHanh], [ThoiGianDen], [MaTuyen], [MaTau]) VALUES (N'C001', CAST(N'2025-04-28T08:00:00.0000000' AS DateTime2), CAST(N'2025-04-28T08:00:00.0000000' AS DateTime2), N'T001', N'T001')
INSERT [dbo].[chuyen] ([MaChuyen], [ThoiGianKhoiHanh], [ThoiGianDen], [MaTuyen], [MaTau]) VALUES (N'C002', CAST(N'2025-04-28T08:00:00.0000000' AS DateTime2), CAST(N'2025-04-28T08:00:00.0000000' AS DateTime2), N'T002', N'T003')
INSERT [dbo].[chuyen] ([MaChuyen], [ThoiGianKhoiHanh], [ThoiGianDen], [MaTuyen], [MaTau]) VALUES (N'C003', CAST(N'2025-04-28T08:00:00.0000000' AS DateTime2), CAST(N'2025-04-28T08:00:00.0000000' AS DateTime2), N'T003', N'T003')
INSERT [dbo].[chuyen] ([MaChuyen], [ThoiGianKhoiHanh], [ThoiGianDen], [MaTuyen], [MaTau]) VALUES (N'C004', CAST(N'2025-04-28T08:00:00.0000000' AS DateTime2), CAST(N'2025-04-28T08:00:00.0000000' AS DateTime2), N'T001', N'T002')
INSERT [dbo].[chuyen] ([MaChuyen], [ThoiGianKhoiHanh], [ThoiGianDen], [MaTuyen], [MaTau]) VALUES (N'C005', CAST(N'2025-04-15T06:45:00.0000000' AS DateTime2), CAST(N'2025-04-05T12:30:00.0000000' AS DateTime2), N'T002', N'T001')
INSERT [dbo].[chuyen] ([MaChuyen], [ThoiGianKhoiHanh], [ThoiGianDen], [MaTuyen], [MaTau]) VALUES (N'C006', CAST(N'2025-04-15T11:00:00.0000000' AS DateTime2), CAST(N'2025-04-06T17:30:00.0000000' AS DateTime2), N'T003', N'T003')
GO
INSERT [dbo].[ga] ([MaGa], [TenGa], [VungMien]) VALUES (N'GA01', N'Hà Nội', N'Bắc')
INSERT [dbo].[ga] ([MaGa], [TenGa], [VungMien]) VALUES (N'GA02', N'Hải Phòng', N'Bắc')
INSERT [dbo].[ga] ([MaGa], [TenGa], [VungMien]) VALUES (N'GA03', N'Vinh', N'Trung')
INSERT [dbo].[ga] ([MaGa], [TenGa], [VungMien]) VALUES (N'GA04', N'Đà Nẵng', N'Trung')
INSERT [dbo].[ga] ([MaGa], [TenGa], [VungMien]) VALUES (N'GA05', N'Nha Trang', N'Trung')
INSERT [dbo].[ga] ([MaGa], [TenGa], [VungMien]) VALUES (N'GA06', N'Sài Gòn', N'Nam')
INSERT [dbo].[ga] ([MaGa], [TenGa], [VungMien]) VALUES (N'GA07', N'Biên Hòa', N'Nam')
INSERT [dbo].[ga] ([MaGa], [TenGa], [VungMien]) VALUES (N'GA08', N'Cần Thơ', N'Nam')
GO
INSERT [dbo].[hoadon] ([MaHoaDon], [ThoiGianTaoHoaDon], [GhiChu], [VAT], [MaKhachHang], [MaNhanVien], [MaKhuyenMai], [tongTien], [tamTinh], [tongTienGiam]) VALUES (N'HD-KH1004-2025-04-14', CAST(N'2025-04-14T16:25:16.0000000' AS DateTime2), N'', 0.1, 1004, 1, NULL, 1320000, 1200000, 0)
INSERT [dbo].[hoadon] ([MaHoaDon], [ThoiGianTaoHoaDon], [GhiChu], [VAT], [MaKhachHang], [MaNhanVien], [MaKhuyenMai], [tongTien], [tamTinh], [tongTienGiam]) VALUES (N'HD-KH1004-2025-04-15', CAST(N'2025-04-15T14:31:23.0000000' AS DateTime2), N'', 0.1, 1004, 1, NULL, 1320000, 1200000, 0)
INSERT [dbo].[hoadon] ([MaHoaDon], [ThoiGianTaoHoaDon], [GhiChu], [VAT], [MaKhachHang], [MaNhanVien], [MaKhuyenMai], [tongTien], [tamTinh], [tongTienGiam]) VALUES (N'HD-KH1004-2025-04-19', CAST(N'2025-04-19T14:38:21.0000000' AS DateTime2), N'', 0.1, 1004, 1, NULL, 1320000, 1200000, 0)
INSERT [dbo].[hoadon] ([MaHoaDon], [ThoiGianTaoHoaDon], [GhiChu], [VAT], [MaKhachHang], [MaNhanVien], [MaKhuyenMai], [tongTien], [tamTinh], [tongTienGiam]) VALUES (N'HD-KH1010-2025-04-14', CAST(N'2025-04-14T21:39:57.0000000' AS DateTime2), N'', 0.1, 1010, 1, NULL, 3960000, 3600000, 0)
INSERT [dbo].[hoadon] ([MaHoaDon], [ThoiGianTaoHoaDon], [GhiChu], [VAT], [MaKhachHang], [MaNhanVien], [MaKhuyenMai], [tongTien], [tamTinh], [tongTienGiam]) VALUES (N'HD-KH1011-2025-04-15', CAST(N'2025-04-15T13:18:56.0000000' AS DateTime2), N'', 0.1, 1011, 1, NULL, 1320000, 1200000, 0)
INSERT [dbo].[hoadon] ([MaHoaDon], [ThoiGianTaoHoaDon], [GhiChu], [VAT], [MaKhachHang], [MaNhanVien], [MaKhuyenMai], [tongTien], [tamTinh], [tongTienGiam]) VALUES (N'HD-KH1013-2025-04-15', CAST(N'2025-04-15T13:40:54.0000000' AS DateTime2), N'', 0.1, 1013, 1, NULL, 1320000, 1200000, 0)
INSERT [dbo].[hoadon] ([MaHoaDon], [ThoiGianTaoHoaDon], [GhiChu], [VAT], [MaKhachHang], [MaNhanVien], [MaKhuyenMai], [tongTien], [tamTinh], [tongTienGiam]) VALUES (N'HD-KH1015-2025-04-15', CAST(N'2025-04-15T14:09:47.0000000' AS DateTime2), N'', 0.1, 1015, 1, NULL, 1320000, 1200000, 0)
GO
SET IDENTITY_INSERT [dbo].[khachhang] ON 

INSERT [dbo].[khachhang] ([MaKhachHang], [hoTen], [soDienThoai], [thoiGianDangKy], [laKhachHangThanThiet], [CMND]) VALUES (1, N'Hạo Nhót', N'0989898980', CAST(N'2025-03-24T10:22:26.000' AS DateTime), 0, N'2810098130')
INSERT [dbo].[khachhang] ([MaKhachHang], [hoTen], [soDienThoai], [thoiGianDangKy], [laKhachHangThanThiet], [CMND]) VALUES (2, N'Nguyễn Văn A', N'0912345678', CAST(N'2025-04-05T09:51:53.213' AS DateTime), 0, N'123456789')
INSERT [dbo].[khachhang] ([MaKhachHang], [hoTen], [soDienThoai], [thoiGianDangKy], [laKhachHangThanThiet], [CMND]) VALUES (3, N'Đa VÍt Nộp', N'0969696969', CAST(N'2025-04-05T16:52:32.050' AS DateTime), 0, N'987654321')
INSERT [dbo].[khachhang] ([MaKhachHang], [hoTen], [soDienThoai], [thoiGianDangKy], [laKhachHangThanThiet], [CMND]) VALUES (1002, N'nguyen van c', N'0987655672', CAST(N'2025-04-13T21:42:29.147' AS DateTime), 0, N'123454')
INSERT [dbo].[khachhang] ([MaKhachHang], [hoTen], [soDienThoai], [thoiGianDangKy], [laKhachHangThanThiet], [CMND]) VALUES (1004, N'le minh dang', N'0937598034', CAST(N'2025-04-13T22:19:51.010' AS DateTime), 0, N'1234334')
INSERT [dbo].[khachhang] ([MaKhachHang], [hoTen], [soDienThoai], [thoiGianDangKy], [laKhachHangThanThiet], [CMND]) VALUES (1005, N'tran van phong', N'0987654341', CAST(N'2025-04-14T20:39:58.430' AS DateTime), 0, N'1234456')
INSERT [dbo].[khachhang] ([MaKhachHang], [hoTen], [soDienThoai], [thoiGianDangKy], [laKhachHangThanThiet], [CMND]) VALUES (1006, N'nguyen van toan', N'0234567833', CAST(N'2025-04-14T20:47:34.897' AS DateTime), 0, N'123456')
INSERT [dbo].[khachhang] ([MaKhachHang], [hoTen], [soDienThoai], [thoiGianDangKy], [laKhachHangThanThiet], [CMND]) VALUES (1010, N'le van nhot', N'0938598066', CAST(N'2025-04-14T21:39:01.397' AS DateTime), 0, N'123444')
INSERT [dbo].[khachhang] ([MaKhachHang], [hoTen], [soDienThoai], [thoiGianDangKy], [laKhachHangThanThiet], [CMND]) VALUES (1011, N'le van c', N'0987545621', CAST(N'2025-04-15T13:18:33.093' AS DateTime), 0, N'1234567')
INSERT [dbo].[khachhang] ([MaKhachHang], [hoTen], [soDienThoai], [thoiGianDangKy], [laKhachHangThanThiet], [CMND]) VALUES (1013, N'le van n', N'0975434111', CAST(N'2025-04-15T13:40:34.037' AS DateTime), 0, N'12345675')
INSERT [dbo].[khachhang] ([MaKhachHang], [hoTen], [soDienThoai], [thoiGianDangKy], [laKhachHangThanThiet], [CMND]) VALUES (1015, N'le', N'0987656321', CAST(N'2025-04-15T14:09:03.577' AS DateTime), 0, N'1234445')
SET IDENTITY_INSERT [dbo].[khachhang] OFF
GO
INSERT [dbo].[khoang] ([MaKhoang], [TenKhoang], [MaToa], [maLoaiKhoang]) VALUES (N'K001-01', N'Khoang 1', N'T001-01', N'ghe-ngoi')
INSERT [dbo].[khoang] ([MaKhoang], [TenKhoang], [MaToa], [maLoaiKhoang]) VALUES (N'K001-02', N'Khoang 1', N'T001-02', N'ghe-ngoi')
INSERT [dbo].[khoang] ([MaKhoang], [TenKhoang], [MaToa], [maLoaiKhoang]) VALUES (N'K001-03', N'Khoang 3', N'T001-01', N'ghe-ngoi')
INSERT [dbo].[khoang] ([MaKhoang], [TenKhoang], [MaToa], [maLoaiKhoang]) VALUES (N'K002-01', N'Khoang 1', N'T001-02', N'giuong-6')
INSERT [dbo].[khoang] ([MaKhoang], [TenKhoang], [MaToa], [maLoaiKhoang]) VALUES (N'K002-02', N'Khoang 2', N'T001-02', N'giuong-6')
INSERT [dbo].[khoang] ([MaKhoang], [TenKhoang], [MaToa], [maLoaiKhoang]) VALUES (N'K003-01', N'Khoang 1', N'T002-01', N'ghe-ngoi')
INSERT [dbo].[khoang] ([MaKhoang], [TenKhoang], [MaToa], [maLoaiKhoang]) VALUES (N'K003-02', N'Khoang 2', N'T002-02', N'ghe-ngoi')
INSERT [dbo].[khoang] ([MaKhoang], [TenKhoang], [MaToa], [maLoaiKhoang]) VALUES (N'K003-03', N'Khoang 3', N'T002-01', N'giuong-6')
INSERT [dbo].[khoang] ([MaKhoang], [TenKhoang], [MaToa], [maLoaiKhoang]) VALUES (N'K004-01', N'Khoang 1', N'T003-01', N'ghe-ngoi')
INSERT [dbo].[khoang] ([MaKhoang], [TenKhoang], [MaToa], [maLoaiKhoang]) VALUES (N'K004-02', N'Khoang 2', N'T003-02', N'ghe-ngoi')
GO
INSERT [dbo].[khuyenmai] ([MaKhuyenMai], [PhanTramGiamGia], [GhiChu], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'1rUkiL1nie', 2, N'', CAST(N'2025-04-14T00:00:00.0000000' AS DateTime2), CAST(N'2025-04-14T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[khuyenmai] ([MaKhuyenMai], [PhanTramGiamGia], [GhiChu], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'f8jri1AAv4', 30, N'Không', CAST(N'2025-04-13T00:00:00.0000000' AS DateTime2), CAST(N'2025-04-30T00:00:00.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[lichsutrave] ON 

INSERT [dbo].[lichsutrave] ([MaLichSuTraVe], [MaNhanVienThucHien], [MaKhachHang], [PhiTraVe], [LoaiTraVe], [ThoiGianTraVe], [GhiChu], [MaVe]) VALUES (1, 1, 3, CAST(20000.00 AS Decimal(10, 2)), N'tra-truoc-24h-phi-20k', CAST(N'2025-04-13T10:52:08.967' AS DateTime), NULL, N'GA01-GA06-S001-2025-04-05')
INSERT [dbo].[lichsutrave] ([MaLichSuTraVe], [MaNhanVienThucHien], [MaKhachHang], [PhiTraVe], [LoaiTraVe], [ThoiGianTraVe], [GhiChu], [MaVe]) VALUES (2, 1, 1002, CAST(20000.00 AS Decimal(10, 2)), N'tra-truoc-24h-phi-20k', CAST(N'2025-04-13T21:43:37.950' AS DateTime), NULL, N'GA01-GA06-S002-2025-04-13')
INSERT [dbo].[lichsutrave] ([MaLichSuTraVe], [MaNhanVienThucHien], [MaKhachHang], [PhiTraVe], [LoaiTraVe], [ThoiGianTraVe], [GhiChu], [MaVe]) VALUES (3, 1, 1005, CAST(20000.00 AS Decimal(10, 2)), N'tra-truoc-24h-phi-20k', CAST(N'2025-04-14T21:11:23.717' AS DateTime), NULL, N'GA01-GA06-S002-2025-04-14')
INSERT [dbo].[lichsutrave] ([MaLichSuTraVe], [MaNhanVienThucHien], [MaKhachHang], [PhiTraVe], [LoaiTraVe], [ThoiGianTraVe], [GhiChu], [MaVe]) VALUES (4, 1, 1011, CAST(240000.00 AS Decimal(10, 2)), N'tra-tu-4-24h-phi-20k', CAST(N'2025-04-15T13:19:59.840' AS DateTime), NULL, N'GA01-GA06-S002-2025-04-15')
SET IDENTITY_INSERT [dbo].[lichsutrave] OFF
GO
INSERT [dbo].[loaikhoang] ([maLoaiKhoang], [tenLoaiKhoang]) VALUES (N'ghe-ngoi', N'Ghế Ngồi')
INSERT [dbo].[loaikhoang] ([maLoaiKhoang], [tenLoaiKhoang]) VALUES (N'giuong-4', N'Giường nằm khoang 4')
INSERT [dbo].[loaikhoang] ([maLoaiKhoang], [tenLoaiKhoang]) VALUES (N'giuong-6', N'Giường nằm khoang 6')
GO
SET IDENTITY_INSERT [dbo].[nhanvien] ON 

INSERT [dbo].[nhanvien] ([MaNhanVien], [HoTen], [GioiTinh], [SoDienThoai], [NgayDangKy], [NgaySinh], [TrangThai], [MatKhau], [Email], [VaiTro]) VALUES (1, N'Nguyễn Quốc Trị', 1, N'0969696969', CAST(N'2025-03-24' AS Date), CAST(N'1995-03-09' AS Date), 1, N'123456', N'email@gmail.com', N'Nhân viên bán vé')
INSERT [dbo].[nhanvien] ([MaNhanVien], [HoTen], [GioiTinh], [SoDienThoai], [NgayDangKy], [NgaySinh], [TrangThai], [MatKhau], [Email], [VaiTro]) VALUES (2, N'Lê Minh Đăng', 1, N'0987654321', CAST(N'2025-03-24' AS Date), CAST(N'1899-12-25' AS Date), 1, N'123456', N'com@gmail.com', N'Quản lí')
SET IDENTITY_INSERT [dbo].[nhanvien] OFF
GO
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S001', 1, N'K001-01', 0)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S002', 2, N'K001-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S003', 3, N'K001-01', 0)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S004', 4, N'K001-01', 0)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S005', 5, N'K001-01', 0)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S006', 6, N'K001-01', 0)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S007', 7, N'K001-01', 0)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S008', 8, N'K001-01', 0)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S009', 9, N'K001-01', 0)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S010', 10, N'K001-01', 0)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S011', 11, N'K001-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S012', 12, N'K001-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S013', 13, N'K001-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S014', 14, N'K001-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S015', 15, N'K001-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S016', 16, N'K001-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S017', 17, N'K001-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S018', 18, N'K001-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S019', 19, N'K001-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S020', 20, N'K001-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S021', 21, N'K001-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S022', 22, N'K001-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S023', 23, N'K001-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S024', 24, N'K001-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S025', 25, N'K001-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S026', 26, N'K001-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S027', 27, N'K001-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S028', 28, N'K001-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S029', 29, N'K001-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S030', 30, N'K001-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S031', 31, N'K001-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S032', 32, N'K001-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S033', 33, N'K002-01', 0)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S034', 34, N'K002-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S035', 35, N'K002-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S036', 36, N'K002-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S037', 37, N'K002-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S038', 38, N'K002-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S039', 39, N'K002-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S040', 40, N'K002-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S041', 41, N'K002-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S042', 42, N'K002-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S043', 43, N'K002-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S044', 44, N'K002-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S045', 45, N'K002-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S046', 46, N'K002-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S047', 47, N'K002-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S048', 48, N'K002-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S049', 49, N'K002-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S050', 50, N'K002-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S051', 51, N'K002-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S052', 52, N'K002-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S053', 53, N'K002-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S054', 54, N'K002-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S055', 55, N'K002-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S056', 56, N'K002-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S057', 57, N'K002-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S058', 58, N'K002-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S059', 59, N'K002-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S060', 60, N'K002-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S061', 1, N'K003-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S062', 2, N'K003-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S063', 3, N'K003-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S064', 4, N'K003-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S065', 5, N'K003-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S066', 6, N'K003-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S067', 7, N'K003-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S068', 8, N'K003-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S069', 9, N'K003-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S070', 10, N'K003-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S071', 11, N'K003-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S072', 12, N'K003-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S073', 13, N'K003-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S074', 14, N'K003-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S075', 15, N'K003-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S076', 16, N'K003-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S077', 1, N'K004-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S078', 2, N'K004-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S079', 3, N'K004-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S080', 4, N'K004-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S081', 5, N'K004-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S082', 6, N'K004-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S083', 7, N'K004-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S084', 8, N'K004-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S085', 9, N'K004-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S086', 10, N'K004-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S087', 11, N'K004-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S088', 12, N'K004-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S089', 13, N'K004-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S090', 14, N'K004-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S091', 15, N'K004-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S092', 16, N'K004-01', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S093', 17, N'K004-02', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S094', 18, N'K004-02', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S095', 19, N'K004-02', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S096', 20, N'K004-02', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S097', 21, N'K004-02', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S098', 22, N'K004-02', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S099', 23, N'K004-02', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S100', 24, N'K004-02', 1)
GO
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S101', 25, N'K004-02', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S102', 26, N'K004-02', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S103', 27, N'K004-02', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S104', 28, N'K004-02', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S105', 29, N'K004-02', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S106', 30, N'K004-02', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S107', 31, N'K004-02', 1)
INSERT [dbo].[slot] ([MaSlot], [SoSlot], [MaKhoang], [TinhTrang]) VALUES (N'S108', 32, N'K004-02', 1)
GO
INSERT [dbo].[tau] ([MaTau], [TenTau]) VALUES (N'T001', N'Tau Thong Nhat')
INSERT [dbo].[tau] ([MaTau], [TenTau]) VALUES (N'T002', N'Tau Bac Nam')
INSERT [dbo].[tau] ([MaTau], [TenTau]) VALUES (N'T003', N'Tàu SE3')
INSERT [dbo].[tau] ([MaTau], [TenTau]) VALUES (N'T004', N'Tàu SE4')
INSERT [dbo].[tau] ([MaTau], [TenTau]) VALUES (N'T005', N'Tàu SNT1')
INSERT [dbo].[tau] ([MaTau], [TenTau]) VALUES (N'T006', N'Tàu SNT2')
INSERT [dbo].[tau] ([MaTau], [TenTau]) VALUES (N'T007', N'Tàu TN1')
INSERT [dbo].[tau] ([MaTau], [TenTau]) VALUES (N'T008', N'Tàu TN2')
GO
INSERT [dbo].[toatau] ([MaToa], [TenToa], [MaTau]) VALUES (N'T001-01', N'Toa 1', N'T001')
INSERT [dbo].[toatau] ([MaToa], [TenToa], [MaTau]) VALUES (N'T001-02', N'Toa 2', N'T001')
INSERT [dbo].[toatau] ([MaToa], [TenToa], [MaTau]) VALUES (N'T002-01', N'Toa 1', N'T002')
INSERT [dbo].[toatau] ([MaToa], [TenToa], [MaTau]) VALUES (N'T002-02', N'Toa 2', N'T002')
INSERT [dbo].[toatau] ([MaToa], [TenToa], [MaTau]) VALUES (N'T003-01', N'Toa 1', N'T003')
INSERT [dbo].[toatau] ([MaToa], [TenToa], [MaTau]) VALUES (N'T003-02', N'Toa 2', N'T003')
INSERT [dbo].[toatau] ([MaToa], [TenToa], [MaTau]) VALUES (N'T004-01', N'Toa 1', N'T004')
INSERT [dbo].[toatau] ([MaToa], [TenToa], [MaTau]) VALUES (N'T004-02', N'Toa 2', N'T004')
GO
INSERT [dbo].[tuyen] ([MaTuyen], [NgayTaoTuyen], [thoiGianTaoTuyen], [MaGaDi], [MaGaDen], [giaNiemYet]) VALUES (N'T001', CAST(N'2024-03-01' AS Date), CAST(N'2025-04-28T08:00:00.000' AS DateTime), N'GA01', N'GA06', 1200000)
INSERT [dbo].[tuyen] ([MaTuyen], [NgayTaoTuyen], [thoiGianTaoTuyen], [MaGaDi], [MaGaDen], [giaNiemYet]) VALUES (N'T002', CAST(N'2024-03-05' AS Date), CAST(N'2025-04-28T08:00:00.000' AS DateTime), N'GA01', N'GA07', 950000)
INSERT [dbo].[tuyen] ([MaTuyen], [NgayTaoTuyen], [thoiGianTaoTuyen], [MaGaDi], [MaGaDen], [giaNiemYet]) VALUES (N'T003', CAST(N'2024-03-10' AS Date), CAST(N'2025-04-28T08:00:00.000' AS DateTime), N'GA03', N'GA07', 850000)
INSERT [dbo].[tuyen] ([MaTuyen], [NgayTaoTuyen], [thoiGianTaoTuyen], [MaGaDi], [MaGaDen], [giaNiemYet]) VALUES (N'T004', CAST(N'2024-03-15' AS Date), CAST(N'2025-04-15T08:00:00.000' AS DateTime), N'GA05', N'GA06', 650000)
INSERT [dbo].[tuyen] ([MaTuyen], [NgayTaoTuyen], [thoiGianTaoTuyen], [MaGaDi], [MaGaDen], [giaNiemYet]) VALUES (N'T005', CAST(N'2024-03-20' AS Date), CAST(N'2025-04-15T08:00:00.000' AS DateTime), N'GA06', N'GA01', 1400000)
INSERT [dbo].[tuyen] ([MaTuyen], [NgayTaoTuyen], [thoiGianTaoTuyen], [MaGaDi], [MaGaDen], [giaNiemYet]) VALUES (N'T006', CAST(N'2024-03-25' AS Date), CAST(N'2025-04-15T08:00:00.000' AS DateTime), N'GA07', N'GA08', NULL)
INSERT [dbo].[tuyen] ([MaTuyen], [NgayTaoTuyen], [thoiGianTaoTuyen], [MaGaDi], [MaGaDen], [giaNiemYet]) VALUES (N'T007', CAST(N'2024-04-01' AS Date), CAST(N'2025-04-15T08:00:00.000' AS DateTime), N'GA04', N'GA03', NULL)
INSERT [dbo].[tuyen] ([MaTuyen], [NgayTaoTuyen], [thoiGianTaoTuyen], [MaGaDi], [MaGaDen], [giaNiemYet]) VALUES (N'T008', CAST(N'2024-04-05' AS Date), CAST(N'2025-04-15T08:00:00.000' AS DateTime), N'GA04', N'GA03', NULL)
GO
INSERT [dbo].[ve] ([MaVe], [TinhTrangVe], [maKhachHang], [maTuyen], [maTau], [hoTenNguoiDi], [cccdNguoiDi], [namSinhNguoiDi], [maSlot]) VALUES (N'GA01-GA06-S001-2025-04-05', 0, 3, N'T001', N'T001', N'Nốt', N'192837982739', 2000, N'S001')
INSERT [dbo].[ve] ([MaVe], [TinhTrangVe], [maKhachHang], [maTuyen], [maTau], [hoTenNguoiDi], [cccdNguoiDi], [namSinhNguoiDi], [maSlot]) VALUES (N'GA01-GA06-S001-2025-04-14', 1, 1004, N'T001', N'T001', N'LE MINH DANG', N'12345', 2004, N'S001')
INSERT [dbo].[ve] ([MaVe], [TinhTrangVe], [maKhachHang], [maTuyen], [maTau], [hoTenNguoiDi], [cccdNguoiDi], [namSinhNguoiDi], [maSlot]) VALUES (N'GA01-GA06-S002-2025-04-13', 0, 1002, N'T001', N'T001', N'le minh dang', N'123456', 2003, N'S002')
INSERT [dbo].[ve] ([MaVe], [TinhTrangVe], [maKhachHang], [maTuyen], [maTau], [hoTenNguoiDi], [cccdNguoiDi], [namSinhNguoiDi], [maSlot]) VALUES (N'GA01-GA06-S002-2025-04-14', 0, 1005, N'T001', N'T001', N'tran van phong', N'12345', 2003, N'S002')
INSERT [dbo].[ve] ([MaVe], [TinhTrangVe], [maKhachHang], [maTuyen], [maTau], [hoTenNguoiDi], [cccdNguoiDi], [namSinhNguoiDi], [maSlot]) VALUES (N'GA01-GA06-S002-2025-04-15', 0, 1011, N'T001', N'T001', N'le van c', N'123456', 2003, N'S002')
INSERT [dbo].[ve] ([MaVe], [TinhTrangVe], [maKhachHang], [maTuyen], [maTau], [hoTenNguoiDi], [cccdNguoiDi], [namSinhNguoiDi], [maSlot]) VALUES (N'GA01-GA06-S005-2025-04-14', 1, 1010, N'T001', N'T001', N'le van nhov', N'12345', 2020, N'S005')
INSERT [dbo].[ve] ([MaVe], [TinhTrangVe], [maKhachHang], [maTuyen], [maTau], [hoTenNguoiDi], [cccdNguoiDi], [namSinhNguoiDi], [maSlot]) VALUES (N'GA01-GA06-S006-2025-04-14', 1, 1010, N'T001', N'T001', N'le van nha', N'234', 2020, N'S006')
INSERT [dbo].[ve] ([MaVe], [TinhTrangVe], [maKhachHang], [maTuyen], [maTau], [hoTenNguoiDi], [cccdNguoiDi], [namSinhNguoiDi], [maSlot]) VALUES (N'GA01-GA06-S007-2025-04-14', 1, 1010, N'T001', N'T001', N'le ban rf', N'2345', 2020, N'S007')
INSERT [dbo].[ve] ([MaVe], [TinhTrangVe], [maKhachHang], [maTuyen], [maTau], [hoTenNguoiDi], [cccdNguoiDi], [namSinhNguoiDi], [maSlot]) VALUES (N'GA01-GA06-S008-2025-04-15', 1, 1004, N'T001', N'T001', N'le van kha', N'123456789', 2003, N'S008')
INSERT [dbo].[ve] ([MaVe], [TinhTrangVe], [maKhachHang], [maTuyen], [maTau], [hoTenNguoiDi], [cccdNguoiDi], [namSinhNguoiDi], [maSlot]) VALUES (N'GA01-GA06-S009-2025-04-15', 1, 1013, N'T001', N'T001', N'le van n', N'12345670', 2009, N'S009')
INSERT [dbo].[ve] ([MaVe], [TinhTrangVe], [maKhachHang], [maTuyen], [maTau], [hoTenNguoiDi], [cccdNguoiDi], [namSinhNguoiDi], [maSlot]) VALUES (N'GA01-GA06-S010-2025-04-15', 1, 1015, N'T001', N'T001', N'le', N'12345', 2010, N'S010')
INSERT [dbo].[ve] ([MaVe], [TinhTrangVe], [maKhachHang], [maTuyen], [maTau], [hoTenNguoiDi], [cccdNguoiDi], [namSinhNguoiDi], [maSlot]) VALUES (N'GA01-GA06-S033-2025-04-19', 1, 1004, N'T001', N'T001', N'le van si', N'123456', 2018, N'S033')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Chuyen_MaTau]    Script Date: 5/27/2025 8:09:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_Chuyen_MaTau] ON [dbo].[chuyen]
(
	[MaTau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Chuyen_MaTuyen]    Script Date: 5/27/2025 8:09:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_Chuyen_MaTuyen] ON [dbo].[chuyen]
(
	[MaTuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HoaDon_MaKhachHang]    Script Date: 5/27/2025 8:09:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_HoaDon_MaKhachHang] ON [dbo].[hoadon]
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_HoaDon_MaKhuyenMai]    Script Date: 5/27/2025 8:09:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_HoaDon_MaKhuyenMai] ON [dbo].[hoadon]
(
	[MaKhuyenMai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HoaDon_MaNhanVien]    Script Date: 5/27/2025 8:09:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_HoaDon_MaNhanVien] ON [dbo].[hoadon]
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Khoang_MaToa]    Script Date: 5/27/2025 8:09:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_Khoang_MaToa] ON [dbo].[khoang]
(
	[MaToa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TiepNhanYeuCau_MaKhachHang]    Script Date: 5/27/2025 8:09:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_TiepNhanYeuCau_MaKhachHang] ON [dbo].[tiepnhanyeucaudoive]
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TiepNhanYeuCau_MaNhanVien]    Script Date: 5/27/2025 8:09:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_TiepNhanYeuCau_MaNhanVien] ON [dbo].[tiepnhanyeucaudoive]
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ToaTau_MaTau]    Script Date: 5/27/2025 8:09:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_ToaTau_MaTau] ON [dbo].[toatau]
(
	[MaTau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[chitiethoadon] ADD  DEFAULT ('1') FOR [SoLuong]
GO
ALTER TABLE [dbo].[hoadon] ADD  DEFAULT (getdate()) FOR [ThoiGianTaoHoaDon]
GO
ALTER TABLE [dbo].[hoadon] ADD  DEFAULT (NULL) FOR [GhiChu]
GO
ALTER TABLE [dbo].[hoadon] ADD  DEFAULT (NULL) FOR [MaKhuyenMai]
GO
ALTER TABLE [dbo].[khachhang] ADD  DEFAULT (getdate()) FOR [thoiGianDangKy]
GO
ALTER TABLE [dbo].[khuyenmai] ADD  DEFAULT ('0') FOR [PhanTramGiamGia]
GO
ALTER TABLE [dbo].[khuyenmai] ADD  DEFAULT (NULL) FOR [GhiChu]
GO
ALTER TABLE [dbo].[lichsutrave] ADD  DEFAULT (getdate()) FOR [ThoiGianTraVe]
GO
ALTER TABLE [dbo].[tiepnhanyeucaudoive] ADD  DEFAULT (getdate()) FOR [ThoiGianTiepNhan]
GO
ALTER TABLE [dbo].[tiepnhanyeucaudoive] ADD  DEFAULT (NULL) FOR [GhiChu]
GO
ALTER TABLE [dbo].[ve] ADD  DEFAULT ('1') FOR [TinhTrangVe]
GO
ALTER TABLE [dbo].[chitiethoadon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[hoadon] ([MaHoaDon])
GO
ALTER TABLE [dbo].[chitiethoadon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[chitiethoadon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_Ve] FOREIGN KEY([MaVe])
REFERENCES [dbo].[ve] ([MaVe])
GO
ALTER TABLE [dbo].[chitiethoadon] CHECK CONSTRAINT [FK_ChiTietHoaDon_Ve]
GO
ALTER TABLE [dbo].[chuyen]  WITH CHECK ADD  CONSTRAINT [FK_Chuyen_Tau] FOREIGN KEY([MaTau])
REFERENCES [dbo].[tau] ([MaTau])
GO
ALTER TABLE [dbo].[chuyen] CHECK CONSTRAINT [FK_Chuyen_Tau]
GO
ALTER TABLE [dbo].[chuyen]  WITH CHECK ADD  CONSTRAINT [FK_Chuyen_Tuyen] FOREIGN KEY([MaTuyen])
REFERENCES [dbo].[tuyen] ([MaTuyen])
GO
ALTER TABLE [dbo].[chuyen] CHECK CONSTRAINT [FK_Chuyen_Tuyen]
GO
ALTER TABLE [dbo].[hoadon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[khachhang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[hoadon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[hoadon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhuyenMai] FOREIGN KEY([MaKhuyenMai])
REFERENCES [dbo].[khuyenmai] ([MaKhuyenMai])
GO
ALTER TABLE [dbo].[hoadon] CHECK CONSTRAINT [FK_HoaDon_KhuyenMai]
GO
ALTER TABLE [dbo].[hoadon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[nhanvien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[hoadon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[khoang]  WITH CHECK ADD  CONSTRAINT [FK_Khoang_LoaiKhoang] FOREIGN KEY([maLoaiKhoang])
REFERENCES [dbo].[loaikhoang] ([maLoaiKhoang])
GO
ALTER TABLE [dbo].[khoang] CHECK CONSTRAINT [FK_Khoang_LoaiKhoang]
GO
ALTER TABLE [dbo].[khoang]  WITH CHECK ADD  CONSTRAINT [FK_Khoang_ToaTau] FOREIGN KEY([MaToa])
REFERENCES [dbo].[toatau] ([MaToa])
GO
ALTER TABLE [dbo].[khoang] CHECK CONSTRAINT [FK_Khoang_ToaTau]
GO
ALTER TABLE [dbo].[lichsutrave]  WITH CHECK ADD  CONSTRAINT [FK_LichSuTraVe_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[khachhang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[lichsutrave] CHECK CONSTRAINT [FK_LichSuTraVe_KhachHang]
GO
ALTER TABLE [dbo].[lichsutrave]  WITH CHECK ADD  CONSTRAINT [FK_LichSuTraVe_NhanVien] FOREIGN KEY([MaNhanVienThucHien])
REFERENCES [dbo].[nhanvien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[lichsutrave] CHECK CONSTRAINT [FK_LichSuTraVe_NhanVien]
GO
ALTER TABLE [dbo].[lichsutrave]  WITH CHECK ADD  CONSTRAINT [FK_LichSuTraVe_Ve] FOREIGN KEY([MaVe])
REFERENCES [dbo].[ve] ([MaVe])
GO
ALTER TABLE [dbo].[lichsutrave] CHECK CONSTRAINT [FK_LichSuTraVe_Ve]
GO
ALTER TABLE [dbo].[slot]  WITH CHECK ADD  CONSTRAINT [FK_Slot_Khoang] FOREIGN KEY([MaKhoang])
REFERENCES [dbo].[khoang] ([MaKhoang])
GO
ALTER TABLE [dbo].[slot] CHECK CONSTRAINT [FK_Slot_Khoang]
GO
ALTER TABLE [dbo].[tiepnhanyeucaudoive]  WITH CHECK ADD  CONSTRAINT [FK_TiepNhanYeuCauDoiVe_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[khachhang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[tiepnhanyeucaudoive] CHECK CONSTRAINT [FK_TiepNhanYeuCauDoiVe_KhachHang]
GO
ALTER TABLE [dbo].[tiepnhanyeucaudoive]  WITH CHECK ADD  CONSTRAINT [FK_TiepNhanYeuCauDoiVe_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[nhanvien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[tiepnhanyeucaudoive] CHECK CONSTRAINT [FK_TiepNhanYeuCauDoiVe_NhanVien]
GO
ALTER TABLE [dbo].[toatau]  WITH CHECK ADD  CONSTRAINT [FK_ToaTau_Tau] FOREIGN KEY([MaTau])
REFERENCES [dbo].[tau] ([MaTau])
GO
ALTER TABLE [dbo].[toatau] CHECK CONSTRAINT [FK_ToaTau_Tau]
GO
ALTER TABLE [dbo].[tuyen]  WITH CHECK ADD  CONSTRAINT [FK_Tuyen_GaDen] FOREIGN KEY([MaGaDen])
REFERENCES [dbo].[ga] ([MaGa])
GO
ALTER TABLE [dbo].[tuyen] CHECK CONSTRAINT [FK_Tuyen_GaDen]
GO
ALTER TABLE [dbo].[tuyen]  WITH CHECK ADD  CONSTRAINT [FK_Tuyen_GaDi] FOREIGN KEY([MaGaDi])
REFERENCES [dbo].[ga] ([MaGa])
GO
ALTER TABLE [dbo].[tuyen] CHECK CONSTRAINT [FK_Tuyen_GaDi]
GO
ALTER TABLE [dbo].[ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_KhachHang] FOREIGN KEY([maKhachHang])
REFERENCES [dbo].[khachhang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[ve] CHECK CONSTRAINT [FK_Ve_KhachHang]
GO
ALTER TABLE [dbo].[ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_Slot] FOREIGN KEY([maSlot])
REFERENCES [dbo].[slot] ([MaSlot])
GO
ALTER TABLE [dbo].[ve] CHECK CONSTRAINT [FK_Ve_Slot]
GO
ALTER TABLE [dbo].[ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_Tau] FOREIGN KEY([maTau])
REFERENCES [dbo].[tau] ([MaTau])
GO
ALTER TABLE [dbo].[ve] CHECK CONSTRAINT [FK_Ve_Tau]
GO
ALTER TABLE [dbo].[ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_Tuyen] FOREIGN KEY([maTuyen])
REFERENCES [dbo].[tuyen] ([MaTuyen])
GO
ALTER TABLE [dbo].[ve] CHECK CONSTRAINT [FK_Ve_Tuyen]
GO
USE [master]
GO
ALTER DATABASE [vetau] SET  READ_WRITE 
GO
