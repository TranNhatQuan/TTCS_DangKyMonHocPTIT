


USE [DKMH]
GO

CREATE TABLE [dbo].[ChuyenNganh](
	[ID] [nchar](10) NOT NULL,
	[tenChuyenNganh] [nvarchar](50) NOT NULL,
	[idKhoa] [nchar](10) NOT NULL,
 CONSTRAINT [PK_ChuyenNganh] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DangKy]    Script Date: 3/25/2024 4:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangKy](
	[idLopTinChi] [nchar](10) NOT NULL,
	[idSinhVien] [nchar](10) NOT NULL,
	[ngayDK] [date] NOT NULL,
	[status] [smallint] NOT NULL,
	[isHocLai] [smallint] NOT NULL,
 CONSTRAINT [PK_DangKyTinChi] PRIMARY KEY CLUSTERED 
(
	[idLopTinChi] ASC,
	[idSinhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GiangVien]    Script Date: 3/25/2024 4:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiangVien](
	[ID] [nchar](10) NOT NULL,
	[tenGiangVien] [nvarchar](50) NOT NULL,
	[idKhoa] [nchar](10) NOT NULL,
	[ngaySinh] [date] NOT NULL,
	[status] [smallint] NOT NULL,
 CONSTRAINT [PK_GiangVien] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KeHoachGiangDay]    Script Date: 3/25/2024 4:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KeHoachGiangDay](
	[ID] [nchar](10) NOT NULL,
	[IDChuyenNganh] [nchar](10) NOT NULL,
	[Namhoc] [int] NOT NULL,
	[IDMonhoc] [nchar](10) NOT NULL,
	[NienKhoa] [int] NOT NULL,
	[HocKy] [int] NOT NULL,
 CONSTRAINT [PK_KeHoachGiangDay] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhaNangGiangDay]    Script Date: 3/25/2024 4:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhaNangGiangDay](
	[idGiangVien] [nchar](10) NOT NULL,
	[idMonHoc] [nchar](10) NOT NULL,
 CONSTRAINT [PK_KhaNangGiangDay] PRIMARY KEY CLUSTERED 
(
	[idGiangVien] ASC,
	[idMonHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 3/25/2024 4:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[ID] [nchar](10) NOT NULL,
	[tenKhoa] [nvarchar](50) NOT NULL,
	[isDel] [bit] NOT NULL,
 CONSTRAINT [PK_Khoa] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LichHoc]    Script Date: 3/25/2024 4:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichHoc](
	[IDLichHoc] [nchar](10) NOT NULL,
	[Thu] [nchar](10) NOT NULL,
	[TietBatDau] [nchar](10) NOT NULL,
	[NgayBatDau] [nchar](10) NOT NULL,
	[NgayKetThuc] [nchar](10) NOT NULL,
	[TenPhong] [nchar](10) NOT NULL,
	[IDLopTinChi] [nchar](10) NOT NULL,
 CONSTRAINT [PK_LichHoc] PRIMARY KEY CLUSTERED 
(
	[IDLichHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lop]    Script Date: 3/25/2024 4:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[ID] [nchar](10) NOT NULL,
	[idChuyenNganh] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LopTinChi]    Script Date: 3/25/2024 4:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopTinChi](
	[ID] [nchar](10) NOT NULL,
	[idMonHoc] [nchar](10) NOT NULL,
	[idGiangVien] [nchar](10) NOT NULL,
	[nhom] [int] NOT NULL,
	[soSVToiThieu] [int] NOT NULL,
	[soSVToiDa] [int] NOT NULL,
	[NienKhoa] [int] NOT NULL,
	[HocKy] [int] NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_LopTinChi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 3/25/2024 4:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[ID] [nchar](10) NOT NULL,
	[tenMonHoc] [nvarchar](50) NOT NULL,
	[soTietLT] [int] NOT NULL,
	[soTietTH] [int] NOT NULL,
	[soTinChi] [int] NOT NULL,
	[IDMonHocTietQuyet] [nchar](10) NULL,
	[status] [smallint] NOT NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhongHoc]    Script Date: 3/25/2024 4:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongHoc](
	[TenPhong] [nchar](10) NOT NULL,
	[SoCho] [nchar](10) NOT NULL,
	[PhongThucHanh] [smallint] NULL,
 CONSTRAINT [PK_PhongHoc] PRIMARY KEY CLUSTERED 
(
	[TenPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 3/25/2024 4:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[ID] [nchar](10) NOT NULL,
	[ten] [nvarchar](50) NOT NULL,
	[gioiTinh] [bit] NOT NULL,
	[ngayNhapHoc] [date] NOT NULL,
	[idLop] [nchar](10) NOT NULL,
	[ngaySinh] [date] NOT NULL,
	[status] [smallint] NOT NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 3/25/2024 4:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[ID] [nchar](10) NOT NULL,
	[matKhau] [nchar](10) NOT NULL,
	[isDel] [bit] NOT NULL,
	[role] [tinyint] NOT NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ_Password]    Script Date: 3/25/2024 4:40:03 PM ******/
ALTER TABLE [dbo].[KeHoachGiangDay] ADD  CONSTRAINT [UQ_Password] UNIQUE NONCLUSTERED 
(
	[IDChuyenNganh] ASC,
	[IDMonhoc] ASC,
	[NienKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChuyenNganh]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenNganh_Khoa] FOREIGN KEY([idKhoa])
REFERENCES [dbo].[Khoa] ([ID])
GO
ALTER TABLE [dbo].[ChuyenNganh] CHECK CONSTRAINT [FK_ChuyenNganh_Khoa]
GO
ALTER TABLE [dbo].[DangKy]  WITH CHECK ADD  CONSTRAINT [FK_DangKyTinChi_LopTinChi] FOREIGN KEY([idLopTinChi])
REFERENCES [dbo].[LopTinChi] ([ID])
GO
ALTER TABLE [dbo].[DangKy] CHECK CONSTRAINT [FK_DangKyTinChi_LopTinChi]
GO
ALTER TABLE [dbo].[DangKy]  WITH CHECK ADD  CONSTRAINT [FK_DangKyTinChi_SinhVien] FOREIGN KEY([idSinhVien])
REFERENCES [dbo].[SinhVien] ([ID])
GO
ALTER TABLE [dbo].[DangKy] CHECK CONSTRAINT [FK_DangKyTinChi_SinhVien]
GO
ALTER TABLE [dbo].[GiangVien]  WITH CHECK ADD  CONSTRAINT [FK_GiangVien_Khoa] FOREIGN KEY([idKhoa])
REFERENCES [dbo].[Khoa] ([ID])
GO
ALTER TABLE [dbo].[GiangVien] CHECK CONSTRAINT [FK_GiangVien_Khoa]
GO
ALTER TABLE [dbo].[GiangVien]  WITH CHECK ADD  CONSTRAINT [FK_GiangVien_TaiKhoan] FOREIGN KEY([ID])
REFERENCES [dbo].[TaiKhoan] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GiangVien] CHECK CONSTRAINT [FK_GiangVien_TaiKhoan]
GO
ALTER TABLE [dbo].[KeHoachGiangDay]  WITH CHECK ADD  CONSTRAINT [FK_KeHoachGiangDay_ChuyenNganh] FOREIGN KEY([IDChuyenNganh])
REFERENCES [dbo].[ChuyenNganh] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[KeHoachGiangDay] CHECK CONSTRAINT [FK_KeHoachGiangDay_ChuyenNganh]
GO
ALTER TABLE [dbo].[KeHoachGiangDay]  WITH CHECK ADD  CONSTRAINT [FK_KHGiangDay_MonHoc] FOREIGN KEY([IDMonhoc])
REFERENCES [dbo].[MonHoc] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[KeHoachGiangDay] CHECK CONSTRAINT [FK_KHGiangDay_MonHoc]
GO
ALTER TABLE [dbo].[KhaNangGiangDay]  WITH CHECK ADD  CONSTRAINT [FK_KhaNangGiangDay_GiangVien] FOREIGN KEY([idGiangVien])
REFERENCES [dbo].[GiangVien] ([ID])
GO
ALTER TABLE [dbo].[KhaNangGiangDay] CHECK CONSTRAINT [FK_KhaNangGiangDay_GiangVien]
GO
ALTER TABLE [dbo].[KhaNangGiangDay]  WITH CHECK ADD  CONSTRAINT [FK_KhaNangGiangDay_GiangVien1] FOREIGN KEY([idGiangVien])
REFERENCES [dbo].[GiangVien] ([ID])
GO
ALTER TABLE [dbo].[KhaNangGiangDay] CHECK CONSTRAINT [FK_KhaNangGiangDay_GiangVien1]
GO
ALTER TABLE [dbo].[KhaNangGiangDay]  WITH CHECK ADD  CONSTRAINT [FK_KhaNangGiangDay_MonHoc] FOREIGN KEY([idMonHoc])
REFERENCES [dbo].[MonHoc] ([ID])
GO
ALTER TABLE [dbo].[KhaNangGiangDay] CHECK CONSTRAINT [FK_KhaNangGiangDay_MonHoc]
GO
ALTER TABLE [dbo].[LichHoc]  WITH CHECK ADD  CONSTRAINT [FK_LichHoc_LopTinChi] FOREIGN KEY([IDLopTinChi])
REFERENCES [dbo].[LopTinChi] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[LichHoc] CHECK CONSTRAINT [FK_LichHoc_LopTinChi]
GO
ALTER TABLE [dbo].[LichHoc]  WITH CHECK ADD  CONSTRAINT [FK_LichHoc_PhongHoc] FOREIGN KEY([TenPhong])
REFERENCES [dbo].[PhongHoc] ([TenPhong])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LichHoc] CHECK CONSTRAINT [FK_LichHoc_PhongHoc]
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [FK_Lop_ChuyenNganh1] FOREIGN KEY([idChuyenNganh])
REFERENCES [dbo].[ChuyenNganh] ([ID])
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [FK_Lop_ChuyenNganh1]
GO
ALTER TABLE [dbo].[LopTinChi]  WITH CHECK ADD  CONSTRAINT [FK_LopTinChi_GiangVien] FOREIGN KEY([idGiangVien])
REFERENCES [dbo].[GiangVien] ([ID])
GO
ALTER TABLE [dbo].[LopTinChi] CHECK CONSTRAINT [FK_LopTinChi_GiangVien]
GO
ALTER TABLE [dbo].[LopTinChi]  WITH CHECK ADD  CONSTRAINT [FK_LopTinChi_MonHoc] FOREIGN KEY([idMonHoc])
REFERENCES [dbo].[MonHoc] ([ID])
GO
ALTER TABLE [dbo].[LopTinChi] CHECK CONSTRAINT [FK_LopTinChi_MonHoc]
GO
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD  CONSTRAINT [FK_MonHoc_MonHoc] FOREIGN KEY([IDMonHocTietQuyet])
REFERENCES [dbo].[MonHoc] ([ID])
GO
ALTER TABLE [dbo].[MonHoc] CHECK CONSTRAINT [FK_MonHoc_MonHoc]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_Lop] FOREIGN KEY([idLop])
REFERENCES [dbo].[Lop] ([ID])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVien_Lop]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_TaiKhoan] FOREIGN KEY([ID])
REFERENCES [dbo].[TaiKhoan] ([ID])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVien_TaiKhoan]
GO
USE [master]
GO
ALTER DATABASE [DKMH] SET  READ_WRITE 
GO
