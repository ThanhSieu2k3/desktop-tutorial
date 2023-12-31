USE [master]
GO
/****** Object:  Database [WinformQuanLyPhongKhamNhaKhoaVersion2]    Script Date: 10/5/2023 1:05:30 PM ******/
CREATE DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WinformQuanLyPhongKhamNhaKhoaVersion2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\WinformQuanLyPhongKhamNhaKhoaVersion2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WinformQuanLyPhongKhamNhaKhoaVersion2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\WinformQuanLyPhongKhamNhaKhoaVersion2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WinformQuanLyPhongKhamNhaKhoaVersion2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET ARITHABORT OFF 
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET RECOVERY FULL 
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET  MULTI_USER 
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'WinformQuanLyPhongKhamNhaKhoaVersion2', N'ON'
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET QUERY_STORE = OFF
GO
USE [WinformQuanLyPhongKhamNhaKhoaVersion2]
GO
/****** Object:  Table [dbo].[ChuanDoanDieuTri]    Script Date: 10/5/2023 1:05:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuanDoanDieuTri](
	[maChuanDoan] [int] NOT NULL,
	[noiDungChuanDoan] [nvarchar](200) NOT NULL,
	[luaChonDieuTri] [nvarchar](300) NOT NULL,
	[donViTinh] [nvarchar](50) NOT NULL,
	[soLuong] [int] NOT NULL,
	[donGia] [int] NOT NULL,
	[maBaoHanh] [int] NOT NULL,
	[thanhTien] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maChuanDoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 10/5/2023 1:05:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[maChucVu] [int] NOT NULL,
	[tenChucVu] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DichVuThanhToan]    Script Date: 10/5/2023 1:05:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVuThanhToan](
	[maThanhToan] [int] NOT NULL,
	[hinhThucThanhToan] [nvarchar](50) NOT NULL,
	[quetMa] [nchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maThanhToan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONTHUOC]    Script Date: 10/5/2023 1:05:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONTHUOC](
	[maDonThuoc] [int] IDENTITY(1,1) NOT NULL,
	[tenDonThuoc] [nvarchar](300) NOT NULL,
	[soLuong] [int] NOT NULL,
	[donGia] [int] NOT NULL,
	[thanhTien] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maDonThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 10/5/2023 1:05:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[maHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[ngayThanhToan] [date] NOT NULL,
	[maThanhToan] [int] NOT NULL,
	[maDonThuoc] [int] NOT NULL,
	[maLamSan] [int] NOT NULL,
	[maCanLamSan] [int] NOT NULL,
	[maBenhNhan] [int] NOT NULL,
	[tongSoTien] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuKham]    Script Date: 10/5/2023 1:05:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuKham](
	[maLichSuKham] [int] IDENTITY(1,1) NOT NULL,
	[ngayKham] [date] NOT NULL,
	[maHoaDon] [int] NOT NULL,
	[maNhanVien] [int] NOT NULL,
	[maBenhNhan] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maLichSuKham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhapLieu]    Script Date: 10/5/2023 1:05:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhapLieu](
	[maNhap] [int] IDENTITY(1,1) NOT NULL,
	[ngayNhap] [date] NOT NULL,
	[maNhanVien] [int] NOT NULL,
	[soLuong] [int] NOT NULL,
	[donGia] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 10/5/2023 1:05:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[taiKhoanNhanVien] [varchar](200) NOT NULL,
	[matKhauNhanVien] [varchar](200) NOT NULL,
	[maNhanVien] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[taiKhoanNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinBaoHanh]    Script Date: 10/5/2023 1:05:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinBaoHanh](
	[maBaoHanh] [int] IDENTITY(1,1) NOT NULL,
	[tenLaboBaoHanh] [nvarchar](200) NOT NULL,
	[ngayHetHanBaoHanh] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maBaoHanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinBenhNhan]    Script Date: 10/5/2023 1:05:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinBenhNhan](
	[maBenhNhan] [int] IDENTITY(1,1) NOT NULL,
	[tenBenhNhan] [nvarchar](200) NOT NULL,
	[gioiTinh] [bit] NOT NULL,
	[namSinh] [date] NOT NULL,
	[soDienThoai] [varchar](15) NOT NULL,
	[diaChi] [nvarchar](max) NOT NULL,
	[ngayKhamDauTien] [date] NOT NULL,
	[lyDoDenKham] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maBenhNhan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinCanLamSan]    Script Date: 10/5/2023 1:05:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinCanLamSan](
	[maCanLamSan] [int] IDENTITY(1,1) NOT NULL,
	[huyetAp] [bit] NOT NULL,
	[mauKhoDong] [bit] NOT NULL,
	[benhTimBamSinh] [bit] NOT NULL,
	[thieuNangTriTue] [bit] NOT NULL,
	[khac] [nvarchar](500) NULL,
	[maBenhNhan] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maCanLamSan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinLamSan]    Script Date: 10/5/2023 1:05:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinLamSan](
	[maLamSan] [int] IDENTITY(1,1) NOT NULL,
	[maChuanDoan] [int] NOT NULL,
	[maBenhNhan] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maLamSan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinNhanVien]    Script Date: 10/5/2023 1:05:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinNhanVien](
	[maNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[hoVaTen] [nvarchar](200) NOT NULL,
	[gioiTinh] [bit] NOT NULL,
	[namSinh] [date] NOT NULL,
	[soDienThoai] [varchar](15) NOT NULL,
	[diaChi] [nvarchar](max) NOT NULL,
	[maChucVu] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VatLieu]    Script Date: 10/5/2023 1:05:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VatLieu](
	[maVatLieu] [int] NOT NULL,
	[noiDung] [nvarchar](200) NOT NULL,
	[dvt] [nvarchar](50) NOT NULL,
	[soLuong] [int] NOT NULL,
	[donGia] [int] NOT NULL,
	[thanhTien] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maVatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ThongTinCanLamSan] ADD  DEFAULT ((0)) FOR [huyetAp]
GO
ALTER TABLE [dbo].[ThongTinCanLamSan] ADD  DEFAULT ((0)) FOR [mauKhoDong]
GO
ALTER TABLE [dbo].[ThongTinCanLamSan] ADD  DEFAULT ((0)) FOR [benhTimBamSinh]
GO
ALTER TABLE [dbo].[ThongTinCanLamSan] ADD  DEFAULT ((0)) FOR [thieuNangTriTue]
GO
ALTER TABLE [dbo].[ChuanDoanDieuTri]  WITH CHECK ADD  CONSTRAINT [FK_ChuanDoanDieuTri_ThongTinBaoHanh] FOREIGN KEY([maBaoHanh])
REFERENCES [dbo].[ThongTinBaoHanh] ([maBaoHanh])
GO
ALTER TABLE [dbo].[ChuanDoanDieuTri] CHECK CONSTRAINT [FK_ChuanDoanDieuTri_ThongTinBaoHanh]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_DichVuThanhToan] FOREIGN KEY([maThanhToan])
REFERENCES [dbo].[DichVuThanhToan] ([maThanhToan])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_DichVuThanhToan]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_DONTHUOC] FOREIGN KEY([maDonThuoc])
REFERENCES [dbo].[DONTHUOC] ([maDonThuoc])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_DONTHUOC]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_ThongTinCanLamSan] FOREIGN KEY([maCanLamSan])
REFERENCES [dbo].[ThongTinCanLamSan] ([maCanLamSan])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_ThongTinCanLamSan]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_ThongTinLamSan] FOREIGN KEY([maLamSan])
REFERENCES [dbo].[ThongTinLamSan] ([maLamSan])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_ThongTinLamSan]
GO
ALTER TABLE [dbo].[LichSuKham]  WITH CHECK ADD  CONSTRAINT [FK_LichSuKham_HoaDon] FOREIGN KEY([maHoaDon])
REFERENCES [dbo].[HoaDon] ([maHoaDon])
GO
ALTER TABLE [dbo].[LichSuKham] CHECK CONSTRAINT [FK_LichSuKham_HoaDon]
GO
ALTER TABLE [dbo].[LichSuKham]  WITH CHECK ADD  CONSTRAINT [FK_LichSuKham_ThongTinBenhNhan] FOREIGN KEY([maBenhNhan])
REFERENCES [dbo].[ThongTinBenhNhan] ([maBenhNhan])
GO
ALTER TABLE [dbo].[LichSuKham] CHECK CONSTRAINT [FK_LichSuKham_ThongTinBenhNhan]
GO
ALTER TABLE [dbo].[LichSuKham]  WITH CHECK ADD  CONSTRAINT [FK_LichSuKham_ThongTinNhanVien] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[ThongTinNhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[LichSuKham] CHECK CONSTRAINT [FK_LichSuKham_ThongTinNhanVien]
GO
ALTER TABLE [dbo].[NhapLieu]  WITH CHECK ADD  CONSTRAINT [FK_NhapLieu_ThongTinNhanVien] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[ThongTinNhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[NhapLieu] CHECK CONSTRAINT [FK_NhapLieu_ThongTinNhanVien]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_ThongTinNhanVien] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[ThongTinNhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_ThongTinNhanVien]
GO
ALTER TABLE [dbo].[ThongTinCanLamSan]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinCanLamSan_ThongTinBenhNhan] FOREIGN KEY([maBenhNhan])
REFERENCES [dbo].[ThongTinBenhNhan] ([maBenhNhan])
GO
ALTER TABLE [dbo].[ThongTinCanLamSan] CHECK CONSTRAINT [FK_ThongTinCanLamSan_ThongTinBenhNhan]
GO
ALTER TABLE [dbo].[ThongTinLamSan]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinLamSan_ChuanDoanDieuTri] FOREIGN KEY([maChuanDoan])
REFERENCES [dbo].[ChuanDoanDieuTri] ([maChuanDoan])
GO
ALTER TABLE [dbo].[ThongTinLamSan] CHECK CONSTRAINT [FK_ThongTinLamSan_ChuanDoanDieuTri]
GO
ALTER TABLE [dbo].[ThongTinLamSan]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinLamSan_ThongTinBenhNhan] FOREIGN KEY([maBenhNhan])
REFERENCES [dbo].[ThongTinBenhNhan] ([maBenhNhan])
GO
ALTER TABLE [dbo].[ThongTinLamSan] CHECK CONSTRAINT [FK_ThongTinLamSan_ThongTinBenhNhan]
GO
ALTER TABLE [dbo].[ThongTinNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_ThongTinNhanVien_ChucVu] FOREIGN KEY([maChucVu])
REFERENCES [dbo].[ChucVu] ([maChucVu])
GO
ALTER TABLE [dbo].[ThongTinNhanVien] CHECK CONSTRAINT [FK_ThongTinNhanVien_ChucVu]
GO
USE [master]
GO
ALTER DATABASE [WinformQuanLyPhongKhamNhaKhoaVersion2] SET  READ_WRITE 
GO
