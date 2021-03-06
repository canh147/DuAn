USE [Quanlycafe]
GO
/****** Object:  Table [dbo].[BangGia]    Script Date: 9/21/2020 2:06:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangGia](
	[ID] [int] NOT NULL,
	[MaSP] [nvarchar](20) NULL,
	[MaBG] [nvarchar](5) NULL,
	[Dongia] [float] NULL,
	[Giam] [float] NULL,
 CONSTRAINT [PK_BangGia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BanPhong]    Script Date: 9/21/2020 2:06:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanPhong](
	[SoBan] [nvarchar](5) NOT NULL,
	[MaKV] [nvarchar](5) NULL,
	[MaBG] [nvarchar](5) NULL,
	[NoUSE] [tinyint] NULL,
 CONSTRAINT [PK_BanPhong] PRIMARY KEY CLUSTERED 
(
	[SoBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BoPhan]    Script Date: 9/21/2020 2:06:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoPhan](
	[MaBP] [nvarchar](5) NOT NULL,
	[MaCha] [nvarchar](5) NULL,
	[TenBP] [nvarchar](50) NULL,
 CONSTRAINT [PK_BoPhan] PRIMARY KEY CLUSTERED 
(
	[MaBP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChungTu]    Script Date: 9/21/2020 2:06:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChungTu](
	[SoCT] [nvarchar](7) NOT NULL,
	[NgayCT] [datetime] NULL,
	[Loai] [tinyint] NULL,
	[Soban] [nvarchar](5) NULL,
	[MaKH] [nvarchar](7) NULL,
	[SoKhach] [int] NULL,
	[NoiDung] [nvarchar](255) NULL,
	[MaThunNgan] [nvarchar](5) NULL,
	[MaNhanVien] [nvarchar](7) NULL,
	[Giam] [float] NULL,
	[ThueVAT] [float] NULL,
	[PhiPV] [float] NULL,
	[SoTien] [float] NULL,
	[TraTruoc] [float] NULL,
	[ConNo] [float] NULL,
	[NgayDat] [datetime] NULL,
	[TrangThai] [tinyint] NULL,
 CONSTRAINT [PK_ChungTu] PRIMARY KEY CLUSTERED 
(
	[SoCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DongChungTu]    Script Date: 9/21/2020 2:06:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DongChungTu](
	[ID] [int] NOT NULL,
	[SoCT] [nvarchar](7) NULL,
	[MaSP] [nvarchar](20) NULL,
	[MaDVT] [nvarchar](7) NULL,
	[SoLuong] [float] NULL,
	[DonGia] [float] NULL,
	[GioVao] [datetime] NULL,
	[Giora] [datetime] NULL,
	[TraLai] [float] NULL,
	[Giam] [float] NULL,
	[Ghichu] [nvarchar](255) NULL,
 CONSTRAINT [PK_DongChungTu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonViTinh]    Script Date: 9/21/2020 2:06:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonViTinh](
	[MaDVT] [nvarchar](7) NOT NULL,
	[Macdinh] [tinyint] NULL,
 CONSTRAINT [PK_DonViTinh] PRIMARY KEY CLUSTERED 
(
	[MaDVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DVTKhac]    Script Date: 9/21/2020 2:06:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DVTKhac](
	[ID] [int] NOT NULL,
	[MaSP] [nvarchar](20) NULL,
	[MaDVT] [nvarchar](7) NULL,
	[QuiDoi] [float] NULL,
	[IsMenu] [tinyint] NULL,
 CONSTRAINT [PK_DVTKhac] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 9/21/2020 2:06:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](7) NOT NULL,
	[MaNhom] [nvarchar](5) NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[DienThoai] [nvarchar](255) NULL,
	[MaSoThue] [nvarchar](12) NULL,
	[ThuDk] [float] NULL,
	[TraDk] [float] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuVuc]    Script Date: 9/21/2020 2:06:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuVuc](
	[MaKV] [nvarchar](5) NOT NULL,
	[TenKV] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhuVuc] PRIMARY KEY CLUSTERED 
(
	[MaKV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiBangGia]    Script Date: 9/21/2020 2:06:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiBangGia](
	[MaBG] [nvarchar](5) NOT NULL,
	[TenBG] [nvarchar](50) NULL,
	[Macdinh] [tinyint] NULL,
 CONSTRAINT [PK_LoaiBangGia] PRIMARY KEY CLUSTERED 
(
	[MaBG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 9/21/2020 2:06:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](7) NOT NULL,
	[MaBP] [nvarchar](5) NULL,
	[Hoten] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[DIenThoai] [nvarchar](255) NULL,
	[MaSoThue] [nvarchar](12) NULL,
	[IsKeToan] [tinyint] NULL,
	[IsThuNgan] [tinyint] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhomHang]    Script Date: 9/21/2020 2:06:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomHang](
	[MaNhom] [nvarchar](5) NOT NULL,
	[MaCha] [nvarchar](5) NULL,
	[TenNhom] [nvarchar](50) NULL,
	[LoaiNhom] [tinyint] NULL,
 CONSTRAINT [PK_NhomHang] PRIMARY KEY CLUSTERED 
(
	[MaNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhomKhachHang]    Script Date: 9/21/2020 2:06:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomKhachHang](
	[MaNhom] [nvarchar](5) NOT NULL,
	[MaCha] [nvarchar](5) NULL,
	[TenNhom] [nvarchar](50) NULL,
	[LoaiNhom] [tinyint] NULL,
 CONSTRAINT [PK_NhomKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 9/21/2020 2:06:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nvarchar](20) NOT NULL,
	[MaNhom] [nvarchar](5) NULL,
	[TenSP] [nvarchar](50) NULL,
	[MaDVT] [nvarchar](7) NULL,
	[SLDK] [float] NULL,
	[GTDK] [float] NULL,
	[IsMenu] [tinyint] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhPhanSanPham]    Script Date: 9/21/2020 2:06:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhPhanSanPham](
	[ID] [int] NOT NULL,
	[MaSP] [nvarchar](20) NULL,
	[MaDVT] [nvarchar](7) NULL,
	[MaTP] [nvarchar](20) NULL,
	[MaDVTTP] [nvarchar](7) NULL,
	[SoLuong] [float] NULL,
 CONSTRAINT [PK_ThanhPhanSanPham] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BangGia] ([ID], [MaSP], [MaBG], [Dongia], [Giam]) VALUES (1, N'SP01', N'M01', 1, 1)
INSERT [dbo].[BangGia] ([ID], [MaSP], [MaBG], [Dongia], [Giam]) VALUES (2, N'SP02', N'M02', 2, 1)
INSERT [dbo].[BangGia] ([ID], [MaSP], [MaBG], [Dongia], [Giam]) VALUES (3, N'SP03', N'M03', 1, 2)
INSERT [dbo].[BangGia] ([ID], [MaSP], [MaBG], [Dongia], [Giam]) VALUES (4, N'SP04', N'M04', 2, 1)
INSERT [dbo].[BangGia] ([ID], [MaSP], [MaBG], [Dongia], [Giam]) VALUES (5, N'SP05', N'M05', 1, 2)
INSERT [dbo].[BangGia] ([ID], [MaSP], [MaBG], [Dongia], [Giam]) VALUES (6, N'SP06', N'M06', 2, 2)
INSERT [dbo].[BangGia] ([ID], [MaSP], [MaBG], [Dongia], [Giam]) VALUES (7, N'SP07', N'M07', 1, 1)
INSERT [dbo].[BangGia] ([ID], [MaSP], [MaBG], [Dongia], [Giam]) VALUES (8, N'SP08', N'M08', 1, 2)
INSERT [dbo].[BangGia] ([ID], [MaSP], [MaBG], [Dongia], [Giam]) VALUES (9, N'SP09', N'M09', 1, 1)
INSERT [dbo].[BangGia] ([ID], [MaSP], [MaBG], [Dongia], [Giam]) VALUES (10, N'SP10', N'M10', 2, 2)
GO
INSERT [dbo].[BanPhong] ([SoBan], [MaKV], [MaBG], [NoUSE]) VALUES (N'Ban01', N'M01', N'BG1', 1)
INSERT [dbo].[BanPhong] ([SoBan], [MaKV], [MaBG], [NoUSE]) VALUES (N'Ban02', N'M02', N'BG2', 2)
INSERT [dbo].[BanPhong] ([SoBan], [MaKV], [MaBG], [NoUSE]) VALUES (N'Ban03', N'M03', N'BG3', 3)
INSERT [dbo].[BanPhong] ([SoBan], [MaKV], [MaBG], [NoUSE]) VALUES (N'Ban04', N'M04', N'BG4', 4)
INSERT [dbo].[BanPhong] ([SoBan], [MaKV], [MaBG], [NoUSE]) VALUES (N'Ban05', N'M05', N'BG5', 5)
INSERT [dbo].[BanPhong] ([SoBan], [MaKV], [MaBG], [NoUSE]) VALUES (N'Ban06', N'M06', N'BG6', 6)
INSERT [dbo].[BanPhong] ([SoBan], [MaKV], [MaBG], [NoUSE]) VALUES (N'Ban07', N'M08', N'BG7', 7)
INSERT [dbo].[BanPhong] ([SoBan], [MaKV], [MaBG], [NoUSE]) VALUES (N'Ban08', N'M09', N'BG8', 8)
INSERT [dbo].[BanPhong] ([SoBan], [MaKV], [MaBG], [NoUSE]) VALUES (N'Ban09', N'M09', N'BG9', 9)
INSERT [dbo].[BanPhong] ([SoBan], [MaKV], [MaBG], [NoUSE]) VALUES (N'Ban10', N'M10', N'BG10', 10)
GO
INSERT [dbo].[BoPhan] ([MaBP], [MaCha], [TenBP]) VALUES (N'Ban01', N'M01', N'Nhân Viên')
INSERT [dbo].[BoPhan] ([MaBP], [MaCha], [TenBP]) VALUES (N'Ban02', N'M02', N'Phục Vụ')
INSERT [dbo].[BoPhan] ([MaBP], [MaCha], [TenBP]) VALUES (N'BP03', N'M03', N'Kế Toán')
INSERT [dbo].[BoPhan] ([MaBP], [MaCha], [TenBP]) VALUES (N'BP04', N'M04', N'4')
INSERT [dbo].[BoPhan] ([MaBP], [MaCha], [TenBP]) VALUES (N'BP05', N'M05', N'5')
GO
INSERT [dbo].[ChungTu] ([SoCT], [NgayCT], [Loai], [Soban], [MaKH], [SoKhach], [NoiDung], [MaThunNgan], [MaNhanVien], [Giam], [ThueVAT], [PhiPV], [SoTien], [TraTruoc], [ConNo], [NgayDat], [TrangThai]) VALUES (N'1', CAST(N'2020-02-09T00:00:00.000' AS DateTime), 1, N'Ban01', N'KH01', 1, N'Cafe đen', N'T01', N'NV01', 1, 1, 1, 1, 1, 0, CAST(N'2019-12-09T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[ChungTu] ([SoCT], [NgayCT], [Loai], [Soban], [MaKH], [SoKhach], [NoiDung], [MaThunNgan], [MaNhanVien], [Giam], [ThueVAT], [PhiPV], [SoTien], [TraTruoc], [ConNo], [NgayDat], [TrangThai]) VALUES (N'10', CAST(N'2019-09-09T00:00:00.000' AS DateTime), 10, N'Ban10', N'KH10', 8, N'h', N'T10', N'NV10', 2, 8, 5, 2, 6, 1, CAST(N'2016-01-08T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[ChungTu] ([SoCT], [NgayCT], [Loai], [Soban], [MaKH], [SoKhach], [NoiDung], [MaThunNgan], [MaNhanVien], [Giam], [ThueVAT], [PhiPV], [SoTien], [TraTruoc], [ConNo], [NgayDat], [TrangThai]) VALUES (N'2', CAST(N'2018-12-12T00:00:00.000' AS DateTime), 2, N'Ban02', N'KH02', 5, N'Cafe Sữa', N'T02', N'NV02', 2, 2, 2, 2, 2, 0, CAST(N'2020-09-25T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[ChungTu] ([SoCT], [NgayCT], [Loai], [Soban], [MaKH], [SoKhach], [NoiDung], [MaThunNgan], [MaNhanVien], [Giam], [ThueVAT], [PhiPV], [SoTien], [TraTruoc], [ConNo], [NgayDat], [TrangThai]) VALUES (N'3', CAST(N'2020-03-09T00:00:00.000' AS DateTime), 3, N'Ban03', N'KH03', 4, N'a', N'T03', N'NV03', 3, 6, 6, 3, 6, 1, CAST(N'2014-05-07T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[ChungTu] ([SoCT], [NgayCT], [Loai], [Soban], [MaKH], [SoKhach], [NoiDung], [MaThunNgan], [MaNhanVien], [Giam], [ThueVAT], [PhiPV], [SoTien], [TraTruoc], [ConNo], [NgayDat], [TrangThai]) VALUES (N'4', CAST(N'2015-01-06T00:00:00.000' AS DateTime), 4, N'Ban04', N'KH04', 3, N'b', N'T04', N'NV04', 5, 4, 4, 5, 1, 2, CAST(N'2017-06-08T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[ChungTu] ([SoCT], [NgayCT], [Loai], [Soban], [MaKH], [SoKhach], [NoiDung], [MaThunNgan], [MaNhanVien], [Giam], [ThueVAT], [PhiPV], [SoTien], [TraTruoc], [ConNo], [NgayDat], [TrangThai]) VALUES (N'5', CAST(N'2016-06-05T00:00:00.000' AS DateTime), 5, N'Ban05', N'KH05', 2, N'c', N'T05', N'NV05', 6, 5, 2, 6, 4, 5, CAST(N'2018-09-08T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[ChungTu] ([SoCT], [NgayCT], [Loai], [Soban], [MaKH], [SoKhach], [NoiDung], [MaThunNgan], [MaNhanVien], [Giam], [ThueVAT], [PhiPV], [SoTien], [TraTruoc], [ConNo], [NgayDat], [TrangThai]) VALUES (N'6', CAST(N'2017-08-09T00:00:00.000' AS DateTime), 6, N'Ban06', N'KH06', 6, N'd', N'T06', N'NV06', 4, 2, 5, 5, 2, 0, CAST(N'2020-01-02T00:00:00.000' AS DateTime), 9)
INSERT [dbo].[ChungTu] ([SoCT], [NgayCT], [Loai], [Soban], [MaKH], [SoKhach], [NoiDung], [MaThunNgan], [MaNhanVien], [Giam], [ThueVAT], [PhiPV], [SoTien], [TraTruoc], [ConNo], [NgayDat], [TrangThai]) VALUES (N'7', CAST(N'2020-03-09T00:00:00.000' AS DateTime), 7, N'Ban07', N'KH07', 3, N'e', N'T07', N'NV07', 9, 1, 1, 5, 5, 5, CAST(N'2020-02-02T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[ChungTu] ([SoCT], [NgayCT], [Loai], [Soban], [MaKH], [SoKhach], [NoiDung], [MaThunNgan], [MaNhanVien], [Giam], [ThueVAT], [PhiPV], [SoTien], [TraTruoc], [ConNo], [NgayDat], [TrangThai]) VALUES (N'8', CAST(N'2015-06-04T00:00:00.000' AS DateTime), 8, N'Ban08', N'KH08', 4, N'f', N'T08', N'NV08', 1, 3, 5, 4, 94, 0, CAST(N'2015-05-05T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[ChungTu] ([SoCT], [NgayCT], [Loai], [Soban], [MaKH], [SoKhach], [NoiDung], [MaThunNgan], [MaNhanVien], [Giam], [ThueVAT], [PhiPV], [SoTien], [TraTruoc], [ConNo], [NgayDat], [TrangThai]) VALUES (N'9', CAST(N'2018-08-08T00:00:00.000' AS DateTime), 9, N'Ban09', N'KH09', 9, N'g', N'T09', N'NV09', 5, 5, 1, 8, 6, 5, CAST(N'2018-06-07T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[DongChungTu] ([ID], [SoCT], [MaSP], [MaDVT], [SoLuong], [DonGia], [GioVao], [Giora], [TraLai], [Giam], [Ghichu]) VALUES (1, N'1', N'SP01', N'M01', 1, 1, CAST(N'2020-09-07T12:13:00.000' AS DateTime), CAST(N'2020-09-07T17:15:00.000' AS DateTime), 5.5, 1.5, NULL)
INSERT [dbo].[DongChungTu] ([ID], [SoCT], [MaSP], [MaDVT], [SoLuong], [DonGia], [GioVao], [Giora], [TraLai], [Giam], [Ghichu]) VALUES (2, N'2', N'SP02', N'M02', 2, 1, CAST(N'2020-09-07T15:10:00.000' AS DateTime), CAST(N'2020-09-07T20:00:00.000' AS DateTime), 10.5, 6.5, NULL)
INSERT [dbo].[DongChungTu] ([ID], [SoCT], [MaSP], [MaDVT], [SoLuong], [DonGia], [GioVao], [Giora], [TraLai], [Giam], [Ghichu]) VALUES (3, N'3', N'SP03', N'M03', 5, 3, CAST(N'2020-05-06T00:00:00.000' AS DateTime), CAST(N'2014-12-05T00:00:00.000' AS DateTime), 5, 5, NULL)
INSERT [dbo].[DongChungTu] ([ID], [SoCT], [MaSP], [MaDVT], [SoLuong], [DonGia], [GioVao], [Giora], [TraLai], [Giam], [Ghichu]) VALUES (4, N'4', N'SP04', N'M04', 3, 2, CAST(N'2018-08-04T00:00:00.000' AS DateTime), CAST(N'2018-04-05T00:00:00.000' AS DateTime), 6, 6, NULL)
INSERT [dbo].[DongChungTu] ([ID], [SoCT], [MaSP], [MaDVT], [SoLuong], [DonGia], [GioVao], [Giora], [TraLai], [Giam], [Ghichu]) VALUES (5, N'5', N'SP05', N'M05', 4, 15, CAST(N'2019-02-05T00:00:00.000' AS DateTime), CAST(N'2020-09-24T00:00:00.000' AS DateTime), 4, 20, NULL)
INSERT [dbo].[DongChungTu] ([ID], [SoCT], [MaSP], [MaDVT], [SoLuong], [DonGia], [GioVao], [Giora], [TraLai], [Giam], [Ghichu]) VALUES (6, N'6', N'SP06', N'M06', 5, 1, CAST(N'2109-12-25T00:00:00.000' AS DateTime), CAST(N'2015-05-05T00:00:00.000' AS DateTime), 9, 1, NULL)
INSERT [dbo].[DongChungTu] ([ID], [SoCT], [MaSP], [MaDVT], [SoLuong], [DonGia], [GioVao], [Giora], [TraLai], [Giam], [Ghichu]) VALUES (7, N'7', N'SP07', N'M07', 1, 5, CAST(N'2020-11-29T00:00:00.000' AS DateTime), CAST(N'2015-06-07T00:00:00.000' AS DateTime), 1, 6, NULL)
INSERT [dbo].[DongChungTu] ([ID], [SoCT], [MaSP], [MaDVT], [SoLuong], [DonGia], [GioVao], [Giora], [TraLai], [Giam], [Ghichu]) VALUES (8, N'8', N'SP08', N'M08', 6, 3, CAST(N'2017-05-08T00:00:00.000' AS DateTime), CAST(N'2016-05-01T00:00:00.000' AS DateTime), 6, 16, NULL)
INSERT [dbo].[DongChungTu] ([ID], [SoCT], [MaSP], [MaDVT], [SoLuong], [DonGia], [GioVao], [Giora], [TraLai], [Giam], [Ghichu]) VALUES (9, N'9', N'SP09', N'M09', 3, 8, CAST(N'2020-12-28T00:00:00.000' AS DateTime), CAST(N'2019-09-09T00:00:00.000' AS DateTime), 3, 12, NULL)
INSERT [dbo].[DongChungTu] ([ID], [SoCT], [MaSP], [MaDVT], [SoLuong], [DonGia], [GioVao], [Giora], [TraLai], [Giam], [Ghichu]) VALUES (10, N'10', N'SP10', N'M10', 1, 9, CAST(N'2018-08-01T00:00:00.000' AS DateTime), CAST(N'2020-12-12T00:00:00.000' AS DateTime), 5, 16, NULL)
GO
INSERT [dbo].[DonViTinh] ([MaDVT], [Macdinh]) VALUES (N'M01', 1)
INSERT [dbo].[DonViTinh] ([MaDVT], [Macdinh]) VALUES (N'M02', 2)
INSERT [dbo].[DonViTinh] ([MaDVT], [Macdinh]) VALUES (N'M03', 3)
INSERT [dbo].[DonViTinh] ([MaDVT], [Macdinh]) VALUES (N'M04', 4)
INSERT [dbo].[DonViTinh] ([MaDVT], [Macdinh]) VALUES (N'M05', 5)
INSERT [dbo].[DonViTinh] ([MaDVT], [Macdinh]) VALUES (N'M06', 6)
INSERT [dbo].[DonViTinh] ([MaDVT], [Macdinh]) VALUES (N'M07', 7)
INSERT [dbo].[DonViTinh] ([MaDVT], [Macdinh]) VALUES (N'M08', 8)
INSERT [dbo].[DonViTinh] ([MaDVT], [Macdinh]) VALUES (N'M09', 9)
INSERT [dbo].[DonViTinh] ([MaDVT], [Macdinh]) VALUES (N'M10', 10)
GO
INSERT [dbo].[DVTKhac] ([ID], [MaSP], [MaDVT], [QuiDoi], [IsMenu]) VALUES (1, N'SP01', N'M01', 2.5, 1)
INSERT [dbo].[DVTKhac] ([ID], [MaSP], [MaDVT], [QuiDoi], [IsMenu]) VALUES (2, N'SP02', N'M02', 2.2, 2)
INSERT [dbo].[DVTKhac] ([ID], [MaSP], [MaDVT], [QuiDoi], [IsMenu]) VALUES (3, N'SP03', N'M03', 2, 1)
INSERT [dbo].[DVTKhac] ([ID], [MaSP], [MaDVT], [QuiDoi], [IsMenu]) VALUES (4, N'SP04', N'M04', 5, 1)
INSERT [dbo].[DVTKhac] ([ID], [MaSP], [MaDVT], [QuiDoi], [IsMenu]) VALUES (5, N'SP05', N'M05', 1, 1)
INSERT [dbo].[DVTKhac] ([ID], [MaSP], [MaDVT], [QuiDoi], [IsMenu]) VALUES (6, N'SP06', N'M06', 5, 1)
INSERT [dbo].[DVTKhac] ([ID], [MaSP], [MaDVT], [QuiDoi], [IsMenu]) VALUES (7, N'SP07', N'M07', 4, 1)
INSERT [dbo].[DVTKhac] ([ID], [MaSP], [MaDVT], [QuiDoi], [IsMenu]) VALUES (8, N'SP08', N'M08', 1, 1)
INSERT [dbo].[DVTKhac] ([ID], [MaSP], [MaDVT], [QuiDoi], [IsMenu]) VALUES (9, N'SP09', N'M09', 3, 1)
INSERT [dbo].[DVTKhac] ([ID], [MaSP], [MaDVT], [QuiDoi], [IsMenu]) VALUES (10, N'SP10', N'M10', 6, 1)
GO
INSERT [dbo].[KhachHang] ([MaKH], [MaNhom], [TenKH], [DiaChi], [DienThoai], [MaSoThue], [ThuDk], [TraDk]) VALUES (N'KH01', N'N01', N'Phạm Nguyễn Viết Cảnh', N'Quảng nam', N'0123456789', N'1', 5.1, 5.2)
INSERT [dbo].[KhachHang] ([MaKH], [MaNhom], [TenKH], [DiaChi], [DienThoai], [MaSoThue], [ThuDk], [TraDk]) VALUES (N'KH02', N'N02', N'Nguyễn Thị Na', N'Hà Nội', N'0123246678', N'2', 4.3, 4.4)
INSERT [dbo].[KhachHang] ([MaKH], [MaNhom], [TenKH], [DiaChi], [DienThoai], [MaSoThue], [ThuDk], [TraDk]) VALUES (N'KH03', N'N03', N'Trần Đức Bo', N'Đà Năng', N'213476482', N'3', 10, 5)
INSERT [dbo].[KhachHang] ([MaKH], [MaNhom], [TenKH], [DiaChi], [DienThoai], [MaSoThue], [ThuDk], [TraDk]) VALUES (N'KH04', N'N04', N'Nguyễn Minh An', N'Sài Gòn', N'045090464', N'12', 2, 1)
INSERT [dbo].[KhachHang] ([MaKH], [MaNhom], [TenKH], [DiaChi], [DienThoai], [MaSoThue], [ThuDk], [TraDk]) VALUES (N'KH05', N'N05', N'Nguyễn Thị Na', N'Hà Nội', N'0123246678', N'2', 4.3, 4.4)
INSERT [dbo].[KhachHang] ([MaKH], [MaNhom], [TenKH], [DiaChi], [DienThoai], [MaSoThue], [ThuDk], [TraDk]) VALUES (N'KH06', N'N06', N'Phạm Nguyễn Viết Cảnh', N'Quảng nam', N'0123456789', N'1', 5.1, 5.2)
INSERT [dbo].[KhachHang] ([MaKH], [MaNhom], [TenKH], [DiaChi], [DienThoai], [MaSoThue], [ThuDk], [TraDk]) VALUES (N'KH07', N'N07', N'Trần Đức Bo', N'Đà Năng', N'213476482', N'3', 10, 5)
INSERT [dbo].[KhachHang] ([MaKH], [MaNhom], [TenKH], [DiaChi], [DienThoai], [MaSoThue], [ThuDk], [TraDk]) VALUES (N'KH08', N'N08', N'Nguyễn Trung Quân', N'Hải Phòng', N'024450455', N'4', 5, 1)
INSERT [dbo].[KhachHang] ([MaKH], [MaNhom], [TenKH], [DiaChi], [DienThoai], [MaSoThue], [ThuDk], [TraDk]) VALUES (N'KH09', N'N09', N'Nguyễn Thị Na', N'Hà Nội', N'0123246678', N'2', 4.3, 4.4)
INSERT [dbo].[KhachHang] ([MaKH], [MaNhom], [TenKH], [DiaChi], [DienThoai], [MaSoThue], [ThuDk], [TraDk]) VALUES (N'KH10', N'N10', N'Nguyễn Minh An', N'Sài Gòn', N'045090464', N'12', 2, 1)
GO
INSERT [dbo].[KhuVuc] ([MaKV], [TenKV]) VALUES (N'M01', N'1')
INSERT [dbo].[KhuVuc] ([MaKV], [TenKV]) VALUES (N'M02', N'2')
INSERT [dbo].[KhuVuc] ([MaKV], [TenKV]) VALUES (N'M03', N'6')
INSERT [dbo].[KhuVuc] ([MaKV], [TenKV]) VALUES (N'M04', N'5')
INSERT [dbo].[KhuVuc] ([MaKV], [TenKV]) VALUES (N'M05', N'9')
INSERT [dbo].[KhuVuc] ([MaKV], [TenKV]) VALUES (N'M06', N'4')
INSERT [dbo].[KhuVuc] ([MaKV], [TenKV]) VALUES (N'M07', N'4')
INSERT [dbo].[KhuVuc] ([MaKV], [TenKV]) VALUES (N'M08', N'2')
INSERT [dbo].[KhuVuc] ([MaKV], [TenKV]) VALUES (N'M09', N'5')
INSERT [dbo].[KhuVuc] ([MaKV], [TenKV]) VALUES (N'M10', N'6')
GO
INSERT [dbo].[LoaiBangGia] ([MaBG], [TenBG], [Macdinh]) VALUES (N'M01', N'Bảng 1', 1)
INSERT [dbo].[LoaiBangGia] ([MaBG], [TenBG], [Macdinh]) VALUES (N'M02', N'Bảng 2', 2)
INSERT [dbo].[LoaiBangGia] ([MaBG], [TenBG], [Macdinh]) VALUES (N'M03', N'Bảng 3', 3)
INSERT [dbo].[LoaiBangGia] ([MaBG], [TenBG], [Macdinh]) VALUES (N'M04', N'Bảng 4', 4)
INSERT [dbo].[LoaiBangGia] ([MaBG], [TenBG], [Macdinh]) VALUES (N'M05', N'Bảng 5', 5)
INSERT [dbo].[LoaiBangGia] ([MaBG], [TenBG], [Macdinh]) VALUES (N'M06', N'Bảng 6', 6)
INSERT [dbo].[LoaiBangGia] ([MaBG], [TenBG], [Macdinh]) VALUES (N'M07', N'Bảng 7', 7)
INSERT [dbo].[LoaiBangGia] ([MaBG], [TenBG], [Macdinh]) VALUES (N'M08', N'Bảng 8', 8)
INSERT [dbo].[LoaiBangGia] ([MaBG], [TenBG], [Macdinh]) VALUES (N'M09', N'Bảng 9', 9)
INSERT [dbo].[LoaiBangGia] ([MaBG], [TenBG], [Macdinh]) VALUES (N'M10', N'Bảng 10', 10)
GO
INSERT [dbo].[NhanVien] ([MaNV], [MaBP], [Hoten], [DiaChi], [DIenThoai], [MaSoThue], [IsKeToan], [IsThuNgan]) VALUES (N'NV01', N'Ban01', N'Phạm Nguyễn Viết Cảnh', N'Quảng Nam', N'123456012', N'12', 1, 1)
INSERT [dbo].[NhanVien] ([MaNV], [MaBP], [Hoten], [DiaChi], [DIenThoai], [MaSoThue], [IsKeToan], [IsThuNgan]) VALUES (N'NV02', N'Ban02', N'Nguyễn Thị Na', N'Hà Nội', N'012345678', N'2', 2, 2)
INSERT [dbo].[NhanVien] ([MaNV], [MaBP], [Hoten], [DiaChi], [DIenThoai], [MaSoThue], [IsKeToan], [IsThuNgan]) VALUES (N'NV03', N'BP03', N'Phạm Ngyễn Viết Cảnh', N'Quảng Nam', N'123456012', N'12', 1, 1)
INSERT [dbo].[NhanVien] ([MaNV], [MaBP], [Hoten], [DiaChi], [DIenThoai], [MaSoThue], [IsKeToan], [IsThuNgan]) VALUES (N'NV04', N'BP04', N'Nguyễn Thị Nở', N'Đà Nẵng', N'123458210', N'5', 4, 2)
INSERT [dbo].[NhanVien] ([MaNV], [MaBP], [Hoten], [DiaChi], [DIenThoai], [MaSoThue], [IsKeToan], [IsThuNgan]) VALUES (N'NV05', N'BP03', N'Trần Đức Bo', N'Đà Nẵng', N'213476482', N'3', 2, 3)
INSERT [dbo].[NhanVien] ([MaNV], [MaBP], [Hoten], [DiaChi], [DIenThoai], [MaSoThue], [IsKeToan], [IsThuNgan]) VALUES (N'NV06', N'BP05', N'Nguyễn Minh An', N'Sài Gòn', N'045090464', N'12', 2, 1)
INSERT [dbo].[NhanVien] ([MaNV], [MaBP], [Hoten], [DiaChi], [DIenThoai], [MaSoThue], [IsKeToan], [IsThuNgan]) VALUES (N'NV07', N'BP05', N'Nguyễn Trung Quân', N'Hải Phòng', N'024450455', N'4', 5, 1)
INSERT [dbo].[NhanVien] ([MaNV], [MaBP], [Hoten], [DiaChi], [DIenThoai], [MaSoThue], [IsKeToan], [IsThuNgan]) VALUES (N'NV08', N'BP03', N'Nguyễn Thị Na', N'Hà Nội', N'012345678', N'2', 2, 2)
INSERT [dbo].[NhanVien] ([MaNV], [MaBP], [Hoten], [DiaChi], [DIenThoai], [MaSoThue], [IsKeToan], [IsThuNgan]) VALUES (N'NV09', N'BP05', N'Nguyễn Thị Nở', N'Đà Nẵng', N'123458210', N'5', 4, 2)
INSERT [dbo].[NhanVien] ([MaNV], [MaBP], [Hoten], [DiaChi], [DIenThoai], [MaSoThue], [IsKeToan], [IsThuNgan]) VALUES (N'NV10', N'BP04', N'Nguyễn Minh An', N'Sài Gòn', N'045090464', N'12', 2, 1)
GO
INSERT [dbo].[NhomHang] ([MaNhom], [MaCha], [TenNhom], [LoaiNhom]) VALUES (N'N01', N'M01', N'CV', 1)
INSERT [dbo].[NhomHang] ([MaNhom], [MaCha], [TenNhom], [LoaiNhom]) VALUES (N'N02', N'M02', N'AB', 2)
INSERT [dbo].[NhomHang] ([MaNhom], [MaCha], [TenNhom], [LoaiNhom]) VALUES (N'N03', N'M03', N'Ak', 1)
INSERT [dbo].[NhomHang] ([MaNhom], [MaCha], [TenNhom], [LoaiNhom]) VALUES (N'N04', N'M04', N'HA', 2)
INSERT [dbo].[NhomHang] ([MaNhom], [MaCha], [TenNhom], [LoaiNhom]) VALUES (N'N05', N'M05', N'GA', 2)
INSERT [dbo].[NhomHang] ([MaNhom], [MaCha], [TenNhom], [LoaiNhom]) VALUES (N'N06', N'M06', N'TA', 1)
INSERT [dbo].[NhomHang] ([MaNhom], [MaCha], [TenNhom], [LoaiNhom]) VALUES (N'N07', N'M07', N'RA', 1)
INSERT [dbo].[NhomHang] ([MaNhom], [MaCha], [TenNhom], [LoaiNhom]) VALUES (N'N08', N'M08', N'RA', 1)
INSERT [dbo].[NhomHang] ([MaNhom], [MaCha], [TenNhom], [LoaiNhom]) VALUES (N'N09', N'M09', N'GA', 1)
INSERT [dbo].[NhomHang] ([MaNhom], [MaCha], [TenNhom], [LoaiNhom]) VALUES (N'N10', N'M10', N'GW', 2)
GO
INSERT [dbo].[NhomKhachHang] ([MaNhom], [MaCha], [TenNhom], [LoaiNhom]) VALUES (N'N01', N'M01', N'CF', 1)
INSERT [dbo].[NhomKhachHang] ([MaNhom], [MaCha], [TenNhom], [LoaiNhom]) VALUES (N'N02', N'M02', N'CD', 2)
INSERT [dbo].[NhomKhachHang] ([MaNhom], [MaCha], [TenNhom], [LoaiNhom]) VALUES (N'N03', N'M03', N'CV', 3)
INSERT [dbo].[NhomKhachHang] ([MaNhom], [MaCha], [TenNhom], [LoaiNhom]) VALUES (N'N04', N'M04', N'CA', 4)
INSERT [dbo].[NhomKhachHang] ([MaNhom], [MaCha], [TenNhom], [LoaiNhom]) VALUES (N'N05', N'M05', N'GA', 5)
INSERT [dbo].[NhomKhachHang] ([MaNhom], [MaCha], [TenNhom], [LoaiNhom]) VALUES (N'N06', N'M06', N'HH', 6)
INSERT [dbo].[NhomKhachHang] ([MaNhom], [MaCha], [TenNhom], [LoaiNhom]) VALUES (N'N07', N'M07', N'TT', 7)
INSERT [dbo].[NhomKhachHang] ([MaNhom], [MaCha], [TenNhom], [LoaiNhom]) VALUES (N'N08', N'M08', N'AG', 8)
INSERT [dbo].[NhomKhachHang] ([MaNhom], [MaCha], [TenNhom], [LoaiNhom]) VALUES (N'N09', N'M09', N'RA', 9)
INSERT [dbo].[NhomKhachHang] ([MaNhom], [MaCha], [TenNhom], [LoaiNhom]) VALUES (N'N10', N'M10', N'TQ', 10)
GO
INSERT [dbo].[SanPham] ([MaSP], [MaNhom], [TenSP], [MaDVT], [SLDK], [GTDK], [IsMenu]) VALUES (N'SP01', N'N01', N'Cafe', N'M01', 1.5, 1.5, 1)
INSERT [dbo].[SanPham] ([MaSP], [MaNhom], [TenSP], [MaDVT], [SLDK], [GTDK], [IsMenu]) VALUES (N'SP02', N'N02', N'Sữa', N'M02', 2.5, 3.5, 2)
INSERT [dbo].[SanPham] ([MaSP], [MaNhom], [TenSP], [MaDVT], [SLDK], [GTDK], [IsMenu]) VALUES (N'SP03', N'N03', N'Kem', N'M03', 1.4, 5, 1)
INSERT [dbo].[SanPham] ([MaSP], [MaNhom], [TenSP], [MaDVT], [SLDK], [GTDK], [IsMenu]) VALUES (N'SP04', N'N04', N'Nước Suối', N'M04', 1.6, 6, 6)
INSERT [dbo].[SanPham] ([MaSP], [MaNhom], [TenSP], [MaDVT], [SLDK], [GTDK], [IsMenu]) VALUES (N'SP05', N'N05', N'Trà Chanh', N'M05', 5.2, 6, 5)
INSERT [dbo].[SanPham] ([MaSP], [MaNhom], [TenSP], [MaDVT], [SLDK], [GTDK], [IsMenu]) VALUES (N'SP06', N'N06', N'Nước Cam', N'M06', 2.36, 2, 1)
INSERT [dbo].[SanPham] ([MaSP], [MaNhom], [TenSP], [MaDVT], [SLDK], [GTDK], [IsMenu]) VALUES (N'SP07', N'N07', N'Trà Sữa', N'M07', 1.4, 0, 2)
INSERT [dbo].[SanPham] ([MaSP], [MaNhom], [TenSP], [MaDVT], [SLDK], [GTDK], [IsMenu]) VALUES (N'SP08', N'N08', N'Trà Đào', N'M08', 3.1, 6, 5)
INSERT [dbo].[SanPham] ([MaSP], [MaNhom], [TenSP], [MaDVT], [SLDK], [GTDK], [IsMenu]) VALUES (N'SP09', N'N09', N'Cafe Sữa', N'M09', 2.2, 26, 4)
INSERT [dbo].[SanPham] ([MaSP], [MaNhom], [TenSP], [MaDVT], [SLDK], [GTDK], [IsMenu]) VALUES (N'SP10', N'N10', N'Trà Bí Đao', N'M10', 1.9, 3, 3)
GO
INSERT [dbo].[ThanhPhanSanPham] ([ID], [MaSP], [MaDVT], [MaTP], [MaDVTTP], [SoLuong]) VALUES (1, N'SP01', N'M01', N'TP01', N'D01', 1)
INSERT [dbo].[ThanhPhanSanPham] ([ID], [MaSP], [MaDVT], [MaTP], [MaDVTTP], [SoLuong]) VALUES (2, N'SP02', N'M02', N'TP02', N'D02', 2)
INSERT [dbo].[ThanhPhanSanPham] ([ID], [MaSP], [MaDVT], [MaTP], [MaDVTTP], [SoLuong]) VALUES (3, N'SP03', N'M03', N'TP03', N'D03', 5)
INSERT [dbo].[ThanhPhanSanPham] ([ID], [MaSP], [MaDVT], [MaTP], [MaDVTTP], [SoLuong]) VALUES (4, N'SP04', N'M04', N'TP04', N'D04', 6)
INSERT [dbo].[ThanhPhanSanPham] ([ID], [MaSP], [MaDVT], [MaTP], [MaDVTTP], [SoLuong]) VALUES (5, N'SP05', N'M05', N'TP05', N'D05', 4)
INSERT [dbo].[ThanhPhanSanPham] ([ID], [MaSP], [MaDVT], [MaTP], [MaDVTTP], [SoLuong]) VALUES (6, N'SP06', N'M06', N'TP06', N'D06', 4)
INSERT [dbo].[ThanhPhanSanPham] ([ID], [MaSP], [MaDVT], [MaTP], [MaDVTTP], [SoLuong]) VALUES (7, N'SP07', N'M07', N'TP07', N'D07', 2)
INSERT [dbo].[ThanhPhanSanPham] ([ID], [MaSP], [MaDVT], [MaTP], [MaDVTTP], [SoLuong]) VALUES (8, N'SP08', N'M08', N'TP08', N'D08', 2)
INSERT [dbo].[ThanhPhanSanPham] ([ID], [MaSP], [MaDVT], [MaTP], [MaDVTTP], [SoLuong]) VALUES (9, N'SP09', N'M09', N'TP09', N'D09', 1)
INSERT [dbo].[ThanhPhanSanPham] ([ID], [MaSP], [MaDVT], [MaTP], [MaDVTTP], [SoLuong]) VALUES (10, N'SP10', N'M10', N'TP10', N'D10', 6)
GO
ALTER TABLE [dbo].[BangGia]  WITH CHECK ADD  CONSTRAINT [FK_BangGia_LoaiBangGia] FOREIGN KEY([MaBG])
REFERENCES [dbo].[LoaiBangGia] ([MaBG])
GO
ALTER TABLE [dbo].[BangGia] CHECK CONSTRAINT [FK_BangGia_LoaiBangGia]
GO
ALTER TABLE [dbo].[BangGia]  WITH CHECK ADD  CONSTRAINT [FK_BangGia_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[BangGia] CHECK CONSTRAINT [FK_BangGia_SanPham]
GO
ALTER TABLE [dbo].[BanPhong]  WITH CHECK ADD  CONSTRAINT [FK_BanPhong_KhuVuc] FOREIGN KEY([MaKV])
REFERENCES [dbo].[KhuVuc] ([MaKV])
GO
ALTER TABLE [dbo].[BanPhong] CHECK CONSTRAINT [FK_BanPhong_KhuVuc]
GO
ALTER TABLE [dbo].[ChungTu]  WITH CHECK ADD  CONSTRAINT [FK_ChungTu_BanPhong] FOREIGN KEY([Soban])
REFERENCES [dbo].[BanPhong] ([SoBan])
GO
ALTER TABLE [dbo].[ChungTu] CHECK CONSTRAINT [FK_ChungTu_BanPhong]
GO
ALTER TABLE [dbo].[ChungTu]  WITH CHECK ADD  CONSTRAINT [FK_ChungTu_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[ChungTu] CHECK CONSTRAINT [FK_ChungTu_KhachHang]
GO
ALTER TABLE [dbo].[ChungTu]  WITH CHECK ADD  CONSTRAINT [FK_ChungTu_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ChungTu] CHECK CONSTRAINT [FK_ChungTu_NhanVien]
GO
ALTER TABLE [dbo].[DongChungTu]  WITH CHECK ADD  CONSTRAINT [FK_DongChungTu_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[DongChungTu] CHECK CONSTRAINT [FK_DongChungTu_SanPham]
GO
ALTER TABLE [dbo].[DVTKhac]  WITH CHECK ADD  CONSTRAINT [FK_DVTKhac_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[DVTKhac] CHECK CONSTRAINT [FK_DVTKhac_SanPham]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_NhomKhachHang] FOREIGN KEY([MaNhom])
REFERENCES [dbo].[NhomKhachHang] ([MaNhom])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_NhomKhachHang]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_BoPhan] FOREIGN KEY([MaBP])
REFERENCES [dbo].[BoPhan] ([MaBP])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_BoPhan]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_DonViTinh] FOREIGN KEY([MaDVT])
REFERENCES [dbo].[DonViTinh] ([MaDVT])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_DonViTinh]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhomHang] FOREIGN KEY([MaNhom])
REFERENCES [dbo].[NhomHang] ([MaNhom])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhomHang]
GO
ALTER TABLE [dbo].[ThanhPhanSanPham]  WITH CHECK ADD  CONSTRAINT [FK_ThanhPhanSanPham_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ThanhPhanSanPham] CHECK CONSTRAINT [FK_ThanhPhanSanPham_SanPham]
GO
