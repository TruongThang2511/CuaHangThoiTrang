USE [CHTT]
GO
/****** Object:  Table [dbo].[CHITIETDONHANG]    Script Date: 6/9/2023 10:03:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONHANG](
	[maDH] [int] NOT NULL,
	[maSP] [int] NOT NULL,
	[soluong] [int] NOT NULL,
	[gia] [money] NOT NULL,
	[tonggiatri] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETSIZE]    Script Date: 6/9/2023 10:03:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETSIZE](
	[maSize] [int] NOT NULL,
	[maSP] [int] NOT NULL,
	[soluong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maSize] ASC,
	[maSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANHGIA]    Script Date: 6/9/2023 10:03:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHGIA](
	[maDG] [int] IDENTITY(1,1) NOT NULL,
	[maSP] [int] NOT NULL,
	[noidungDG] [nvarchar](200) NULL,
	[sosao] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maDG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANHMUC]    Script Date: 6/9/2023 10:03:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHMUC](
	[maDM] [int] IDENTITY(1,1) NOT NULL,
	[tenDM] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DATHANG]    Script Date: 6/9/2023 10:03:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DATHANG](
	[maDH] [int] IDENTITY(1,1) NOT NULL,
	[maPT] [int] NOT NULL,
	[maND] [int] NOT NULL,
	[hotenKH] [nvarchar](30) NOT NULL,
	[email] [nvarchar](30) NOT NULL,
	[ngayDat] [datetime] NOT NULL,
	[tongGiaTri] [money] NOT NULL,
	[trangThai] [int] NULL,
	[diaChi] [nvarchar](200) NOT NULL,
	[Ghichu] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[maDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAU]    Script Date: 6/9/2023 10:03:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAU](
	[maMau] [int] IDENTITY(1,1) NOT NULL,
	[maSP] [int] NOT NULL,
	[tenMau] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maMau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGUOIDUNG]    Script Date: 6/9/2023 10:03:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUOIDUNG](
	[maND] [int] IDENTITY(1,1) NOT NULL,
	[maRole] [int] NOT NULL,
	[hoten] [nvarchar](50) NOT NULL,
	[gioitinh] [bit] NULL,
	[email] [nvarchar](50) NOT NULL,
	[sodienthoai] [char](11) NULL,
	[diachi] [nvarchar](100) NULL,
	[ngaysinh] [datetime] NULL,
	[password] [varchar](50) NOT NULL,
	[confirmpassword] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHUONGTHUCTHANHTOAN]    Script Date: 6/9/2023 10:03:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHUONGTHUCTHANHTOAN](
	[maPT] [int] IDENTITY(1,1) NOT NULL,
	[tenPT] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maPT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ROLES]    Script Date: 6/9/2023 10:03:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROLES](
	[maRole] [int] IDENTITY(1,1) NOT NULL,
	[tenRole] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 6/9/2023 10:03:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[maSP] [int] IDENTITY(1,1) NOT NULL,
	[maTH] [int] NOT NULL,
	[maDM] [int] NOT NULL,
	[tenSP] [nvarchar](50) NOT NULL,
	[gia] [int] NOT NULL,
	[hinh] [nvarchar](30) NULL,
	[hinh1] [nvarchar](30) NULL,
	[hinh2] [nvarchar](30) NULL,
	[soLuong] [int] NOT NULL,
	[thongTin] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[maSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SIZE]    Script Date: 6/9/2023 10:03:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIZE](
	[maSize] [int] IDENTITY(1,1) NOT NULL,
	[tenS] [char](6) NOT NULL,
	[mota] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THUONGHIEU]    Script Date: 6/9/2023 10:03:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THUONGHIEU](
	[maTH] [int] IDENTITY(1,1) NOT NULL,
	[tenTH] [nvarchar](50) NOT NULL,
	[mota] [nvarchar](200) NULL,
	[logo] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maTH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHITIETDONHANG] ([maDH], [maSP], [soluong], [gia], [tonggiatri]) VALUES (4, 2, 1, 990000.0000, 990000.0000)
GO
INSERT [dbo].[CHITIETDONHANG] ([maDH], [maSP], [soluong], [gia], [tonggiatri]) VALUES (5, 3, 1, 990000.0000, 990000.0000)
GO
INSERT [dbo].[CHITIETDONHANG] ([maDH], [maSP], [soluong], [gia], [tonggiatri]) VALUES (7, 1023, 1, 14000000.0000, 14000000.0000)
GO
INSERT [dbo].[CHITIETDONHANG] ([maDH], [maSP], [soluong], [gia], [tonggiatri]) VALUES (8, 1005, 1, 1900000.0000, 1900000.0000)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (1, 2, 10)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (1, 3, NULL)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (1, 4, NULL)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (1, 5, NULL)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (2, 2, 10)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (2, 3, NULL)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (2, 4, NULL)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (2, 5, NULL)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (3, 2, NULL)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (3, 3, NULL)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (3, 4, NULL)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (3, 5, NULL)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (4, 2, NULL)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (4, 3, NULL)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (4, 4, NULL)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (4, 5, NULL)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (5, 1005, NULL)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (5, 1006, NULL)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (6, 1005, NULL)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (6, 1006, NULL)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (7, 1005, NULL)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (7, 1006, NULL)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (8, 1005, NULL)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (8, 1006, NULL)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (9, 1005, NULL)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (9, 1006, NULL)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (10, 1005, NULL)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (10, 1006, NULL)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (11, 1005, NULL)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (11, 1006, NULL)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (12, 1005, NULL)
GO
INSERT [dbo].[CHITIETSIZE] ([maSize], [maSP], [soluong]) VALUES (12, 1006, NULL)
GO
SET IDENTITY_INSERT [dbo].[DANHMUC] ON 
GO
INSERT [dbo].[DANHMUC] ([maDM], [tenDM]) VALUES (1, N'Phụ kiện')
GO
INSERT [dbo].[DANHMUC] ([maDM], [tenDM]) VALUES (2, N'Túi')
GO
INSERT [dbo].[DANHMUC] ([maDM], [tenDM]) VALUES (3, N'Quần')
GO
INSERT [dbo].[DANHMUC] ([maDM], [tenDM]) VALUES (4, N'Giày')
GO
INSERT [dbo].[DANHMUC] ([maDM], [tenDM]) VALUES (5, N'Kính')
GO
INSERT [dbo].[DANHMUC] ([maDM], [tenDM]) VALUES (7, N'T Shirt')
GO
INSERT [dbo].[DANHMUC] ([maDM], [tenDM]) VALUES (8, N'Polo')
GO
INSERT [dbo].[DANHMUC] ([maDM], [tenDM]) VALUES (1007, N'Jacket')
GO
INSERT [dbo].[DANHMUC] ([maDM], [tenDM]) VALUES (1008, N'Shirt')
GO
INSERT [dbo].[DANHMUC] ([maDM], [tenDM]) VALUES (1009, N'Nón')
GO
INSERT [dbo].[DANHMUC] ([maDM], [tenDM]) VALUES (1010, N'Ví')
GO
INSERT [dbo].[DANHMUC] ([maDM], [tenDM]) VALUES (1011, N'BELT')
GO
INSERT [dbo].[DANHMUC] ([maDM], [tenDM]) VALUES (1012, N'CARDIGAN')
GO
INSERT [dbo].[DANHMUC] ([maDM], [tenDM]) VALUES (1013, N'Sweater')
GO
SET IDENTITY_INSERT [dbo].[DANHMUC] OFF
GO
SET IDENTITY_INSERT [dbo].[DATHANG] ON 
GO
INSERT [dbo].[DATHANG] ([maDH], [maPT], [maND], [hotenKH], [email], [ngayDat], [tongGiaTri], [trangThai], [diaChi], [Ghichu]) VALUES (4, 1, 9, N'Thắng', N'truongthang251102@gmail.com', CAST(N'2023-06-02T13:08:32.980' AS DateTime), 990000.0000, 1, N'aaaa', NULL)
GO
INSERT [dbo].[DATHANG] ([maDH], [maPT], [maND], [hotenKH], [email], [ngayDat], [tongGiaTri], [trangThai], [diaChi], [Ghichu]) VALUES (5, 1, 9, N'Thắng', N'truongthang251102@gmail.com', CAST(N'2023-06-03T08:27:10.507' AS DateTime), 990000.0000, 0, N'bbbb', NULL)
GO
INSERT [dbo].[DATHANG] ([maDH], [maPT], [maND], [hotenKH], [email], [ngayDat], [tongGiaTri], [trangThai], [diaChi], [Ghichu]) VALUES (7, 1, 8, N'Lư Trường Thắng', N'lutruongthang2511@gmail.com', CAST(N'2023-06-08T13:58:52.180' AS DateTime), 14000000.0000, 0, N'308a', NULL)
GO
INSERT [dbo].[DATHANG] ([maDH], [maPT], [maND], [hotenKH], [email], [ngayDat], [tongGiaTri], [trangThai], [diaChi], [Ghichu]) VALUES (8, 1, 9, N'Thắng', N'truongthang251102@gmail.com', CAST(N'2023-06-09T09:50:24.890' AS DateTime), 1900000.0000, 0, N'mmm', NULL)
GO
SET IDENTITY_INSERT [dbo].[DATHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[MAU] ON 
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (1, 2, N'Đen')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (2, 3, N'Bare')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (3, 4, N'Đen')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (4, 5, N'Xanh Ngọc')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (5, 1005, N'Trắng')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (6, 1006, N'Xanh Lá')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (7, 1007, N'Đen')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (8, 1008, N'Nâu')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (9, 1009, N'Trắng')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (10, 1010, N'Xanh Lá')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (11, 1011, N'Đen')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (12, 1012, N'Xám')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (13, 1013, N'Xám')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (14, 1014, N'Nâu')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (15, 1015, N'Xanh Lá')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (16, 1016, N'Đen')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (17, 1017, N'Xanh Lá')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (18, 1018, N'Trắng')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (19, 1019, N'Đen')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (20, 1020, N'Đen')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (21, 1021, N'Trắng')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (22, 1022, N'Đen')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (23, 1023, N'Tím')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (24, 1024, N'Đen')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (25, 1025, N'Đen')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (26, 1026, N'Đen')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (27, 1027, N'Xám')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (28, 1028, N'Xám')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (29, 1029, N'Xanh Ngọc')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (30, 1030, N'Hồng')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (31, 1031, N'Tím')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (32, 1032, N'Vàng')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (33, 1033, N'Đen')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (34, 1034, N'Đen')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (35, 1035, N'Trắng')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (36, 1036, N'Đen')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (37, 1037, N'Đen')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (38, 1038, N'Đen')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (39, 1039, N'Hồng')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (40, 1040, N'Đen')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (41, 1041, N'Đen')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (42, 1042, N'Đen')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (43, 1043, N'Đen')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (44, 1044, N'Đỏ')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (45, 1045, N'Đen')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (46, 1046, N'Caro Bare')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (47, 1047, N'Bare')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (48, 1048, N'Bare')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (49, 1049, N'Xanh Ngọc')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (50, 1050, N'Đen')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (51, 1051, N'Đen')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (52, 1051, N'Caro Bare')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (53, 1053, N'Caro Nâu')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (54, 1054, N'Đen')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (55, 1055, N'Caro Bare')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (56, 1056, N'Nâu')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (57, 1057, N'Đỏ')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (58, 1058, N'Caro Bare')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (59, 1059, N'Đen')
GO
INSERT [dbo].[MAU] ([maMau], [maSP], [tenMau]) VALUES (60, 1060, N'Đen')
GO
SET IDENTITY_INSERT [dbo].[MAU] OFF
GO
SET IDENTITY_INSERT [dbo].[NGUOIDUNG] ON 
GO
INSERT [dbo].[NGUOIDUNG] ([maND], [maRole], [hoten], [gioitinh], [email], [sodienthoai], [diachi], [ngaysinh], [password], [confirmpassword]) VALUES (8, 2, N'Lư Trường Thắng', 0, N'lutruongthang2511@gmail.com', N'0931798072 ', N'BBBB', NULL, N'0e7517141fb53f21ee439b355b5a1d0a', N'Admin@123')
GO
INSERT [dbo].[NGUOIDUNG] ([maND], [maRole], [hoten], [gioitinh], [email], [sodienthoai], [diachi], [ngaysinh], [password], [confirmpassword]) VALUES (9, 1, N'Thắng', 0, N'truongthang251102@gmail.com', N'0931798072 ', N'aaa', NULL, N'448ddd517d3abb70045aea6929f02367', N'User@123')
GO
SET IDENTITY_INSERT [dbo].[NGUOIDUNG] OFF
GO
SET IDENTITY_INSERT [dbo].[PHUONGTHUCTHANHTOAN] ON 
GO
INSERT [dbo].[PHUONGTHUCTHANHTOAN] ([maPT], [tenPT]) VALUES (1, N'Thanh toán tiền mặt')
GO
INSERT [dbo].[PHUONGTHUCTHANHTOAN] ([maPT], [tenPT]) VALUES (2, N'Thanh toán Momo')
GO
SET IDENTITY_INSERT [dbo].[PHUONGTHUCTHANHTOAN] OFF
GO
SET IDENTITY_INSERT [dbo].[ROLES] ON 
GO
INSERT [dbo].[ROLES] ([maRole], [tenRole]) VALUES (1, N'User')
GO
INSERT [dbo].[ROLES] ([maRole], [tenRole]) VALUES (2, N'Admin')
GO
SET IDENTITY_INSERT [dbo].[ROLES] OFF
GO
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (2, 1, 7, N'ADLV T-SHIRT', 990000, N'1.png', N'2.png', NULL, 98, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (3, 1, 7, N'ADLV T-SHIRT BEIGE', 990000, N'3.png', N'4.png', NULL, 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (4, 1, 7, N'ADLV T-SHIRT BLACK', 990000, N'5.png', N'6.png', NULL, 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (5, 1, 7, N'ADLV T-SHIRT BLUE', 990000, N'7.png', N'8.png', NULL, 90, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1005, 2, 4, N'ADIDAS SLIDE (HQ4672)', 1900000, N'9.png', N'10.png', N'11.png', 200, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1006, 2, 4, N'ADIDAS SLIDE (GX6946)', 2200000, N'12.png', N'13.png', N'14.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1007, 2, 4, N'ADIDAS SLIDE (GX6949)', 1900000, N'15.png', N'16.png', N'17.png', 100, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1008, 2, 4, N'ADIDAS SLIDE (HQ6466)', 1900000, N'18.png', N'19.png', N'20.png', 100, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1009, 2, 4, N'ADIDAS ULTRA BOOST 20 CLOUD WHITE CORE BLACK (W)', 2650000, N'21.png', N'22.png', N'23.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1010, 2, 4, N'ADIDAS YEEZY BOOST 350 V2 MARSH', 7900000, N'24.png', N'25.png', N'26.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1011, 2, 4, N'ADIDAS YEEZY BOOST 350 V2 STATIC BLACK', 14000000, N'27.png', N'28.png', N'29.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1012, 2, 4, N'ADIDAS YEEZY BOOST 700 TEAL BLUE', 5500000, N'30.png', N'31.png', N'32.png', 100, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1013, 2, 4, N'ADIDAS YEEZY BOOST 700 WAVE RUNNER SOLID GREY', 15000000, N'33.png', N'24.png', N'35.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1014, 2, 4, N'ADIDAS YEEZY SLIDE FZ5896', 3400000, N'36.png', N'37.png', N'38.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1015, 2, 4, N'ADIDAS YEEZY SLIDE HQ6447', 4200000, N'39.png', N'40.png', N'41.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1016, 2, 4, N'ADIDAS YEEZY SLIDE HQ6448', 3200000, N'42.png', N'43.png', N'44.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1017, 2, 4, N'ADIDAS YEEZY SLIDE RESIN GZ5551', 4900000, N'45.png', N'46.png', N'47.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1018, 3, 4, N'ALEXANDER MCQUEEEN SNEAKER', 11100000, N'48.png', N'49.png', N'50.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1019, 3, 1, N'ALEXANDER MCQUEEN CARD HOLDER', 4500000, N'51.png', N'52.png', NULL, 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1020, 3, 8, N'ALEXANDER MCQUEEN POLO', 7500000, N'53.png', N'54.png', N'55.png', 100, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1021, 3, 2, N'SKULL MINI CROSSBODY LEATHER DEEP IVORY', 14000000, N'56.png', N'57.png', N'58.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1022, 3, 2, N'SKULL EMBOSSED MINI SHOULDER BLACK', 14000000, N'59.png', N'60.png', N'61.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1023, 3, 2, N'SKULL EMBOSSED MINI SHOULDER PURPLE', 14000000, N'62.png', N'63.png', N'64.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1024, 4, 2, N'ALEXANDER WANG BAG', 17700000, N'65.png', N'66.png', N'67.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1025, 4, 2, N'ALEXANDER WANG BAG', 16000000, N'68.png', N'69.png', NULL, 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1026, 4, 4, N'ALEXANDER WANG SLIDE JESSIE CRYSTAL', 16100000, N'70.png', N'71.png', N'72.png', 100, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1027, 4, 1007, N'ALEXANDER WANG JACKET FALLING BACK LOGO', 11700000, N'73.png', N'74.png', NULL, 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1028, 4, 1007, N'ALEXANDER WANG JACKET GAME LOGO', 11700000, N'75.png', N'76.png', NULL, 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1029, 5, 1008, N'ANDREA MARTIN SHIRT BLUE', 6900000, N'77.png', N'78.png', N'79.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1030, 5, 1008, N'ANDREA MARTIN SHIRT PINK', 6900000, N'80.png', N'81.png', N'82.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1031, 5, 1008, N'ANDREA MARTIN SHIRT PURPLE', 6900000, N'83.png', N'84.png', N'85.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1032, 5, 1008, N'ANDREA MARTIN SHIRT YELLOW', 6900000, N'86.png', N'87.png', N'88.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1033, 6, 1009, N'BALENCIAGA CAP', 7600000, N'89.png', N'90.png', N'91.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1034, 6, 5, N'BALENCIAGA GLASSES BLACK', 6600000, N'92.png', N'93.png', N'94.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1035, 6, 5, N'BALENCIAGA GLASSES WHITE', 6600000, N'95.png', N'96.png', N'97.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1036, 6, 4, N'BALENCIAGA SLIDE', 7300000, N'98.png', N'99.png', N'100.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1037, 6, 4, N'BALENCIAGA SNEAKER SPEED', 15100000, N'101.png', N'102.png', N'103.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1038, 6, 1010, N'BALENCIAGA WALLET', 7600000, N'104.png', N'105.png', N'106.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1039, 6, 1010, N'BALENCIAGA WALLET', 8000000, N'107.png', N'108.png', N'109.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1040, 6, 1009, N'BALENCIAGA CAP', 7600000, N'110.png', N'111.png', N'112.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1041, 6, 2, N'BALENCIAGA BAG BORSA SHOPPING PHONE HOLDER', 18000000, N'113.png', N'114.png', N'115.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1042, 6, 2, N'BALENCIAGA BAG HOURGLASS TOP HANDLE (SMALL)', 42300000, N'119.png', N'120.png', N'121.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1043, 6, 7, N'BALENCIAGA T-SHIRT', 9900000, N'122.png', N'123.png', NULL, 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1044, 6, 7, N'BALENCIAGA T-SHIRT X PLAYSTATION BOXY', 11700000, N'124.png', N'125.png', NULL, 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1045, 7, 1010, N'BURBERRY WALLET', 5900000, N'126.png', N'127.png', N'128.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1046, 7, 2, N'BURBERRY BAG CHECK OLYMPIA POUCH', 14800000, N'129.png', N'130.png', N'131.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1047, 7, 2, N'BURBERRY BAG LOGO PRINTED MINI FREYA TOTE', 19700000, N'132.png', N'133.png', N'134.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1048, 7, 2, N'BURBERRY BAG MINI TB LOGO TWO TONE CROSSBODY', 26800000, N'135.png', N'136.png', N'137.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1049, 7, 2, N'BURBERRY BAG TWO-TONE CANVAS AND LEATHER POCKET', 21100000, N'138.png', N'139.png', N'140.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1050, 7, 2, N'BURBERRY BAG', 19500000, N'141.png', N'142.png', N'143.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1051, 7, 2, N'BURBERRY BAG CANVAS FREYA TOTE MINI', 19000000, N'144.png', N'145.png', N'146.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1052, 7, 1011, N'BURBERRY BELT', 7900000, N'147.png', N'148.png', N'149.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1053, 7, 1010, N'BURBERRY WALLET', 7500000, N'150.png', N'151.png', N'152.png', 30, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1054, 7, 1009, N'BURBERRY CAP', 6600000, N'153.png', N'154.png', NULL, 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1055, 7, 1009, N'BURBERRY BUCKET HAT', 6500000, N'155.png', N'156.png', N'157.png', 30, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1056, 7, 1012, N'BURBERRY CARDIGAN', 17400000, N'158.png', N'159.png', NULL, 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1057, 7, 1012, N'BURBERRY CARDIGAN', 15700000, N'160.png', N'161.png', NULL, 30, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1058, 7, 1012, N'BURBERRY CARDIGAN', 17200000, N'162.png', N'163.png', NULL, 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1059, 7, 5, N'BURBERRY GLASSES', 4900000, N'164.png', N'165.png', N'166.png', 30, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1060, 7, 5, N'BURBERRY GLASSES', 4900000, N'167.png', N'168..png', N'169.png', 30, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1061, 7, 8, N'BURBERRY POLO', 9900000, N'170.png', N'171.png', NULL, 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1062, 7, 8, N'BURBERRY POLO BT BLACK', 7600000, N'172.png', N'173.png', NULL, 20, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1063, 7, 8, N'BURBERRY POLO NAVY', 5200000, N'174.png', N'175.png', NULL, 20, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1064, 7, 1008, N'BURBERRY SHIRT', 4900000, N'176.png', N'177.png', NULL, 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1065, 7, 1008, N'BURBERRY SHIRT', 8700000, N'178.png', N'179.png', NULL, 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1066, 7, 8, N'BURBERRY POLO NAVY', 7600000, N'180.png', N'181.png', NULL, 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1067, 7, 1008, N'BURBERRY SHIRT', 5500000, N'182.png', N'183.png', NULL, 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1068, 7, 4, N'BURBERRY SLIDE', 5600000, N'184.png', N'185.png', N'186.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1069, 7, 4, N'BURBERRY SLIDE', 4200000, N'187.png', N'188.png', N'189.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1070, 7, 4, N'BURBERRY SNEAKER', 9600000, N'190.png', N'191.png', N'192.png', 70, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1071, 7, 4, N'BURBERRY SNEAKER', 8600000, N'193.png', N'194.png', N'195.png', 80, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1072, 7, 7, N'BURBERRY T-SHIRT', 6600000, N'196.png', N'197.png', NULL, 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1073, 7, 7, N'BURBERRY T-SHIRT', 6600000, N'198.png', N'199.png', NULL, 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1074, 8, 2, N'CELINE BAG', 52300000, N'200.png', N'201.png', N'202.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1075, 8, 1011, N'CELINE BELT', 14300000, N'203.png', N'204.png', N'205.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1076, 8, 5, N'CELINE GLASSES', 3900000, N'206.png', N'207.png', N'208.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1077, 8, 5, N'CELINE GLASSES', 8600000, N'209.png', N'210.png', N'211.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1078, 9, 5, N'DIOR GLASSES', 4200000, N'212.png', N'213.png', N'214.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1079, 9, 4, N'DIOR LOAFERS', 18700000, N'215.png', N'216.png', N'217.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1080, 9, 4, N'DIOR LOAFERS', 18700000, N'218.png', N'219.png', N'220.png', 80, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1081, 9, 4, N'DIOR LOAFERS', 19700000, N'221.png', N'222.png', N'223.png', 80, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1082, 9, 4, N'DIOR LOAFERS', 18700000, N'224.png', N'225.png', N'226.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1083, 9, 4, N'DIOR LOAFERS', 17700000, N'227.png', N'228.png', N'229.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1084, 9, 4, N'DIOR LOAFERS', 16000000, N'230.png', N'231.png', N'232.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1085, 9, 4, N'DIOR PUMPS', 23500000, N'233.png', N'234..png', N'235.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1086, 9, 4, N'DIOR PUMPS', 23500000, N'236.png', N'237.png', N'238.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1087, 9, 4, N'DIOR PUMPS', 21500000, N'239.png', N'240.png', N'241.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1088, 9, 4, N'DIOR SLIDE', 17700000, N'242.png', N'243.png', N'244.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1089, 9, 4, N'DIOR SLIDE', 17700000, N'245.png', N'246.png', N'247.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1090, 9, 4, N'DIOR SLIDE', 17700000, N'248.png', N'249.png', N'250.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1091, 9, 4, N'DIOR SLIDE', 17700000, N'251.png', N'252.png', N'253.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1092, 9, 4, N'DIOR SNEAKER', 25500000, N'254.png', N'255.png', N'256.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1093, 9, 4, N'DIOR SNEAKER', 26100000, N'257.png', N'258.png', N'259.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1094, 9, 4, N'DIOR SNEAKER B23', 25500000, N'260.png', N'261.png', N'262.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1095, 10, 7, N'DREW HOUSE T-SHIRT', 2900000, N'263.png', N'264.png', NULL, 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1096, 10, 7, N'DREW HOUSE T-SHIRT', 2900000, N'265.png', N'266.png', NULL, 140, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1097, 10, 7, N'DREW HOUSE T-SHIRT', 2900000, N'267.png', N'268.png', NULL, 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1098, 10, 7, N'DREW HOUSE T-SHIRT', 2900000, N'269.png', N'270.png', NULL, 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1099, 11, 3, N'FOG ESSENTIALS 1977 SWEATSHORT', 3500000, N'271.png', N'272.png', NULL, 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1100, 11, 3, N'FOG ESSENTIALS SWEATSHORT', 3200000, N'273.png', N'274.png', NULL, 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1101, 11, 3, N'FOG ESSENTIALS SWEATSHORT', 3200000, N'275.png', N'276.png', NULL, 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1102, 11, 3, N'FOG ESSENTIALS SWEATSHORT', 3200000, N'277.png', N'278.png', NULL, 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1103, 11, 1013, N' PULLOVER CREWNECK LINEN FW21', 4500000, N'279.png', NULL, NULL, 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1104, 11, 1013, N'PULLOVER CREWNECK LINEN FW21', 4500000, N'280.png', NULL, NULL, 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1105, 11, 7, N'FOG ESSENTIALS 1977 T-SHIRT', 2800000, N'281.png', N'282.png', NULL, 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1106, 11, 7, N'FOG ESSENTIALS 1977 T-SHIRT', 2200000, N'283.png', N'284.png', NULL, 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1107, 11, 7, N'FOG ESSENTIALS T-SHIRT', 2200000, N'285.png', N'286.png', NULL, 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1108, 11, 7, N'FOG ESSENTIALS T-SHIRT', 2200000, N'287.png', N'288.png', NULL, 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1109, 12, 5, N'GM ALIO GD1', 4800000, N'289.png', N'290.png', N'291.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1110, 12, 5, N'GM FRIDA 01', 5100000, N'292.png', N'293.png', N'294.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1111, 12, 5, N'GM X JENNIE ANGEL BEC1', 7400000, N'295.png', N'296.png', N'297.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1112, 12, 5, N'GM KINGS 01', 530000, N'298.png', N'299.png', N'300.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1113, 12, 5, N'GM KUBO 01', 4800000, N'301.png', N'302.png', N'303.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1114, 12, 5, N'GM LE 01', 5400000, N'304.png', N'305.png', N'306.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1115, 12, 5, N'GM LONDI 01 (BR)', 5100000, N'307.png', N'308.png', N'309.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1116, 12, 5, N'GM SOUTH SIDE N-01', 4500000, N'310.png', N'311.png', N'312.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1117, 12, 5, N'GM VISVIVA W2', 6300000, N'313.png', N'314.png', N'315.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1118, 12, 5, N'GM YONA 031', 5100000, N'316.png', N'317.png', N'318.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1119, 13, 4, N'GIVENCHY MULE PARIS FLAT IN LEATHER', 10800000, N'319.png', N'320.png', NULL, 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1120, 13, 4, N'GIVENCHY SLIDE', 8300000, N'321.png', N'322.png', N'323.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1121, 13, 4, N'GIVENCHY SLIDE', 5300000, N'324.png', N'325.png', N'326.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1122, 13, 4, N'GIVENCHY SNEAKER', 11400000, N'327.png', N'328.png', N'329.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1123, 13, 4, N'GIVENCHY SNEAKER', 9900000, N'330.png', N'331.png', N'332.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1124, 13, 1, N'GIVENCHY TEDDY BEAR', 4800000, N'333.png', N'334.png', N'335.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1125, 13, 1, N'GIVENCHY TEDDY BEAR', 4800000, N'336.png', N'337.png', N'338.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1126, 13, 7, N'GIVENCHY T-SHIRT (OVER)', 9500000, N'339.png', N'340.png', NULL, 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1127, 13, 7, N'GIVENCHY T-SHIRT', 8800000, N'341.png', N'342.png', NULL, 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1128, 14, 2, N'GUCCI BAG', 23500000, N'343.png', N'344.png', N'345.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1129, 14, 2, N'GUCCI BAG SUPREME MESSENGER', 22500000, N'346.png', N'347.png', N'348.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1130, 14, 2, N'GUCCI BAG NEO VINTAGE GG SUPREME MESSENGER', 27800000, N'349.png', N'350.png', NULL, 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1131, 14, 2, N'GUCCI BAG WHITE LOGO PRINT LEATHER MESSENGER', 30100000, N'351.png', N'352.png', N'353.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1132, 14, 2, N'GUCCI BAG MARMONT HALF-MOON MINI BLACK', 29100000, N'354.png', N'355.png', N'356.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1133, 14, 2, N'GUCCI BAG DIONYSUS GG JUMP MINI', 29500000, N'357.png', N'358.png', N'359.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1134, 14, 2, N'GUCCI BAG HALF-MOON-SHAPED MINI', 26100000, N'363.png', N'364.png', N'365.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1135, 14, 1011, N'GUCCI BELT LEATHER WITH DOUBLE G BUCKLE ( 3CM)', 10700000, N'366.png', N'367.png', N'368.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1136, 14, 1011, N'GUCCI BELT LIGO DIONYSUS', 9900000, N'369.png', N'370.png', NULL, 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1137, 14, 1009, N'GUCCI BUCKET HAT', 12000000, N'371.png', N'372.png', NULL, 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1138, 14, 1009, N'GUCCI BUCKET HAT', 11700000, N'373.png', N'374.png', NULL, 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1139, 14, 1009, N'GUCCI BUCKET HAT', 10700000, N'375.png', N'376.png', N'377.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1140, 14, 1009, N'GUCCI CAP', 6000000, N'380.png', N'381.png', N'382.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1141, 14, 1009, N'GUCCI CAP LOVED', 4200000, N'378.png', N'379.png', NULL, 70, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1142, 14, 1009, N'GUCCI CAP', 8600000, N'383.png', N'384.png', NULL, 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1143, 14, 1, N'GUCCI CARD HOLDER', 6900000, N'385.png', N'386.png', N'387.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1144, 14, 1, N'GUCCI CARD HOLDER', 6900000, N'388.png', N'389.png', N'390.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1145, 14, 1, N'GUCCI CARD HOLDER', 6900000, N'391.png', N'392.png', N'393.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1146, 14, 1, N'GUCCI CARD HOLDER', 6900000, N'394.png', N'395.png', N'396.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1147, 14, 5, N'GUCCI GLASSES', 5600000, N'397.png', N'398.png', NULL, 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1148, 14, 5, N'GUCCI GLASSES', 4900000, N'399.png', N'400.png', N'401.png', 600, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1149, 14, 5, N'GUCCI GLASSES', 5600000, N'402.png', N'403.png', N'404.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1150, 14, 5, N'GUCCI GLASSES', 5300000, N'405.png', N'406.png', N'407.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1151, 14, 1007, N'GUCCI JACKET', 19000000, N'408.png', NULL, NULL, 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1152, 14, 4, N'GUCCI LOAFERS', 14000000, N'409.png', N'410.png', N'411.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1153, 14, 4, N'GUCCI LOAFERS CANAVAS', 9900000, N'412.png', N'413.png', N'414.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1154, 14, 4, N'GUCCI LOAFERS', 17100000, N'415.png', N'416.png', N'417.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1155, 14, 1010, N'GUCCI LONG WALLET', 12700000, N'418.png', N'419.png', NULL, 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1156, 14, 1010, N'GUCCI LONG WALLET', 13700000, N'420.png', N'421.png', N'422.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1157, 14, 8, N'GUCCI POLO', 16700000, N'423.png', N'424.png', NULL, 30, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1158, 14, 8, N'GUCCI POLO', 14000000, N'425.png', N'426.png', NULL, 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1159, 14, 8, N'GUCCI POLO', 19700000, N'427.png', N'428.png', NULL, 20, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1160, 14, 8, N'GUCCI POLO', 19400000, N'429.png', N'430.png', NULL, 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1161, 14, 4, N'GUCCI SLIDE', 8500000, N'431.png', N'432.png', N'433.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1162, 14, 4, N'GUCCI SLIDE', 8800000, N'434.png', N'435.png', N'436.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1163, 14, 4, N'GUCCI SLIDE', 11200000, N'437.png', N'438.png', N'439.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1164, 14, 4, N'GUCCI SLIDE', 12900000, N'440.png', N'441.png', N'442.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1165, 14, 4, N'GUCCI SLIPPER', 16700000, N'443.png', N'444.png', NULL, 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1166, 14, 4, N'GUCCI SLIPPER', 18000000, N'445.png', N'446.png', N'447.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1167, 14, 4, N'GUCCI RHYTON SNEAKER', 22100000, N'448.png', N'449.png', N'450.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1168, 14, 4, N'GUCCI SNEAKER', 19200000, N'451.png', N'452.png', N'453.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1169, 14, 4, N'GUCCI SNEAKER', 20000000, N'454.png', N'455.png', N'456.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1170, 14, 4, N'GUCCI SNEAKER', 14700000, N'457.png', N'458.png', N'459.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1171, 14, 7, N'GUCCI T-SHIRT', 9600000, N'460.png', N'461.png', NULL, 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1172, 14, 7, N'GUCCI T-SHIRT', 7500000, N'462.png', N'463.png', NULL, 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1173, 14, 7, N'GUCCI T-SHIRT', 6900000, N'466.png', N'467.png', NULL, 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1174, 14, 1010, N'GUCCI WALLET', 11000000, N'468.png', N'469.png', N'470.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1175, 14, 1010, N'GUCCI WALLET', 11400000, N'471.png', N'472.png', N'473.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1176, 14, 1010, N'GUCCI WALLET', 7900000, N'474.png', N'475.png', N'476.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1177, 14, 1010, N'GUCCI WALLET', 10700000, N'477.png', N'478.png', N'479.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1178, 14, 1010, N'GUCCI WALLET', 9600000, N'480.png', N'481.png', N'482.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1179, 14, 1010, N'GUCCI WALLET', 11000000, N'483.png', N'484.png', N'485.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1180, 15, 2, N'JACQUEMUS BAG LE BAMBINO ( 18 CM )', 12000000, N'486.png', N'487.png', N'488.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1181, 15, 2, N'JACQUEMUS BAG LE BAMBINO ( 18 CM )', 12000000, N'489.png', N'490.png', N'491.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1182, 15, 2, N'JACQUEMUS BAG LE CHIQUITO ( 12CM )', 9900000, N'492.png', N'493.png', N'494.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1183, 15, 2, N'JACQUEMUS BAG LE CHIQUITO ( 18 CM )', 13700000, N'495.png', N'496.png', N'497.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1184, 15, 1009, N'JACQUEMUS HAT', 3900000, N'498.png', NULL, NULL, 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1185, 15, 1009, N'JACQUEMUS HAT', 3900000, N'499.png', NULL, NULL, 304, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1186, 15, 1009, N'JACQUEMUS HAT', 3900000, N'500.png', N'501.png', NULL, 30, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1187, 15, 1009, N'JACQUEMUS HAT', 3900000, N'502.png', NULL, NULL, 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1188, 16, 1, N'Le Labo Another 13 (100ml)', 6300000, N'503.png', N'504.png', NULL, 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1189, 16, 1, N'Le Labo Santal 33 100ml', 5900000, N'505.png', N'506.png', NULL, 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1190, 17, 2, N'LOUIS VUITTON BAG NEVERFULL MM', 48800000, N'507.png', N'508.png', N'509.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1191, 17, 2, N'LOUIS VUITTON BAG NICE MINI TOILETRY POUCH M44495', 26800000, N'510.png', N'511.png', N'512.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1192, 17, 1, N'LOUIS VUITTON BRACELET | M6220F', 9300000, N'513.png', NULL, NULL, 30, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1193, 17, 1, N'LOUIS VUITTON BRACELET | M6773E', 9300000, N'514.png', NULL, NULL, 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1194, 17, 1, N'LOUIS VUITTON BRACELET MONOGRAM CHAIN |', 14400000, N'515.png', NULL, NULL, 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1195, 17, 1010, N'LOUIS VUITTON LONG WALLET | M61696', 10500000, N'516.png', N'517.png', N'518.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1197, 17, 1010, N'LOUIS VUITTON LONG WALLET | M61697', 15700000, N'519.png', N'520.png', NULL, 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1198, 17, 1010, N'LOUIS VUITTON WALLET (M60895)', 12400000, N'521.png', N'522.png', NULL, 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1199, 17, 1010, N'LOUIS VUITTON WALLET M62472', 13800000, N'523.png', N'524.png', N'525.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1200, 18, 2, N'MCM BACKPACK MEDIUM', 19200000, N'526.png', N'527.png', N'528.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1201, 18, 2, N'MCM BACKPACK MEDIUM', 19200000, N'529.png', N'530.png', N'531.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1202, 18, 2, N'MCM BACKPACK NANO BROWN', 13000000, N'532.png', N'533.png', N'534.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1203, 18, 2, N'MCM BACKPACK NANO PINK', 13000000, N'535.png', NULL, NULL, 30, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1204, 18, 2, N'MCM BACKPACK (SIZE M)', 19200000, N'536.png', N'537.png', N'528.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1205, 18, 2, N'MCM BACKPACK BLACK SIZE M', 19000000, N'539.png', N'540.png', N'541.png', 100, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1206, 18, 2, N'MCM BAG TOTE LARGE SOFT MMTBSBF01CO001', 17000000, N'542.png', N'543.png', N'544.png', 100, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1207, 18, 2, N'MCM BAG MWSCVATA02QZ001', 9800000, N'545.png', N'546.png', N'547.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1208, 18, 2, N'MCM BAG CROSSBODY MWDBSXL02C001', 9500000, N'548.png', N'549.png', N'550.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1209, 18, 2, N'MCM BAG MMTBAKC02WT001', 6200000, N'551.png', N'552.png', N'553.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1210, 18, 2, N'MCM BAG MMZCAUP02CO001', 8900000, N'554.png', N'555.png', N'556.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1211, 18, 1011, N'MCM BELT 2.5CM', 2500000, N'557.png', N'558.png', NULL, 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1212, 18, 1009, N'MCM CAP', 4900000, N'559.png', N'560.png', NULL, 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1213, 18, 1, N'MCM CARD HOLDER MXACSSX02JW001', 4200000, N'561.png', N'562.png', N'563.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1214, 18, 1010, N'MCM KEY POUCH MXZASVI04H2001', 5900000, N'565.png', N'566.png', NULL, 100, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1215, 18, 1010, N'MCM LONG WALLET', 4500000, N'569.png', N'570.png', N'571.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1216, 18, 1, N'MCM PERFUME 7ML', 820000, N'572.png', N'573.png', NULL, 30, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1217, 18, 4, N'MCM SLIDE', 5400000, N'574.png', N'575.png', N'576.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1218, 18, 4, N'MCM SLIDE', 3900000, N'577.png', N'578.png', N'579.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1219, 18, 1, N'MCM TEDDY', 7600000, N'580.png', NULL, NULL, 30, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1220, 18, 1010, N'MCM WALLET BROWN', 5600000, N'581.png', N'582.png', NULL, 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1221, 18, 1010, N'MCM WALLET MXSCATA01LU001', 4500000, N'583.png', N'584.png', N'585.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1222, 18, 1010, N'MCM WALLET MYAASLV01JF001', 2200000, N'586.png', N'587.png', N'588.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1223, 18, 1010, N'MCM CARD HOLDER MYSCALM01BK001', 6200000, N'589.png', N'590.png', N'591.png', 30, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1224, 19, 2, N'MLB BAG', 1900000, N'592.png', N'593.png', N'594.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1225, 19, 2, N'MLB BAG', 1800000, N'595.png', N'596.png', N'597.png', 35, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1226, 19, 1009, N'MLB CAP', 1200000, N'598.png', N'599.png', N'600.png', 36, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1227, 19, 1012, N'MLB CARDIGAN', 4400000, N'601.png', N'602.png', N'603.png', 30, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1228, 19, 1012, N'MLB CARDIGAN MONOGRAM', 4400000, N'604.png', N'605.png', N'606.png', 35, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1229, 19, 4, N'MLB MULE', 1400000, N'607.png', N'608.png', N'609.png', 30, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1230, 19, 4, N'MLB MULE', 1600000, N'610.png', N'611.png', N'612.png', 35, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1231, 19, 4, N'MLB MULE', 1400000, N'613.png', N'614.png', N'615.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1232, 19, 1008, N'MLB SHIRT', 2000000, N'616.png', N'617.png', NULL, 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1233, 19, 1008, N'MLB SHIRT', 1900000, N'618.png', N'619.png', NULL, 20, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1234, 19, 1008, N'MLB T-SHIRT', 1200000, N'620.png', N'621.png', NULL, 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1235, 19, 1008, N'MLB T-SHIRT', 1200000, N'622.png', N'623.png', NULL, 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1236, 20, 4, N'NIKE AIR FORCE 1 LOW ALL WHITE', 2500000, N'624.png', N'625.png', N'626.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1237, 20, 4, N'AF1 LOW G-DRAGON PEACEMINUSONE PARA-NOISE', 21300000, N'627.png', N'628.png', N'629.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1238, 20, 4, N'NIKE AIR FORCE 1 LOW X SUPREME WHITE', 5200000, N'630.png', N'631.png', N'632.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1239, 20, 4, N'NIKE DUNK LOW BLUE PAISLEY', 6300000, N'636.png', N'637.png', N'638.png', 30, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1240, 20, 4, N'NIKE DUNK LOW ORANGE PEARL (W)', 7300000, N'639.png', N'640.png', N'641.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1241, 20, 4, N'NIKE DUNK PANDA NATURE', 4900000, N'642.png', N'643.png', N'644.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1242, 20, 4, N'JORDAN 1 RETRO HIGH WHITE UNIVERSITY BLUE BLACK', 11400000, N'645.png', N'646.png', N'647.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1243, 20, 4, N'JORDAN 1 RETRO HIGH OFF-WHITE UNIVERSITY BLUE', 50800000, N'648.png', N'649.png', N'650.png', 10, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1244, 20, 4, N'JORDAN 1 LOW ELEVATE UNC', 5600000, N'651.png', N'652.png', NULL, 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1245, 20, 4, N'JORDAN 1 LOW SPADES', 6000000, N'653.png', N'654.png', N'655.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1246, 20, 4, N'JORDAN 1 MID GYM RED BLACK', 490000, N'656.png', N'657.png', N'658.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1247, 20, 4, N'JORDAN 4 RETRO UNIVERSITY BLUE (408452400)', 9500000, N'659.png', N'660.png', N'661.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1248, 20, 4, N'NIKE DUNK LOW SE LOTTERY PACK MALACHITE GREEN', 4900000, N'662.png', N'663.png', N'664.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1249, 20, 4, N'NIKE DUNK LOW SE EASTER (W)', 4500000, N'665.png', N'666.png', N'667.png', 25, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1250, 20, 4, N'NIKE DUNK LOW UNIVERSITY RED', 16200000, N'668.png', N'669.png', N'670.png', 32, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1251, 20, 1013, N'NIKE SWEATER', 2500000, N'671.png', N'672.png', NULL, 25, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1252, 20, 1013, N'NIKE SWEATER', 2500000, N'673.png', N'674.png', NULL, 33, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1253, 21, 1011, N'OFF-WHITE BELT (2CM)', 2900000, N'675.png', N'676.png', NULL, 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1254, 21, 1009, N'OFF-WHITE CAP', 4900000, N'677.png', N'678.png', NULL, 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1255, 21, 1009, N'OFF-WHITE CAP', 4900000, N'679.png', N'680.png', NULL, 20, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1256, 21, 5, N'OFF-WHITE GLASSES', 6600000, N'681.png', N'682.png', N'683.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1257, 21, 5, N'OFF-WHITE GLASSES', 6300000, N'684.png', N'685.png', N'686.png', 30, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1258, 21, 4, N'OFF-WHITE SLIDE', 390000, N'687.png', N'688.png', N'689.png', 30, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1259, 21, 4, N'OFF-WHITE SLIDE', 3900000, N'690.png', N'691.png', NULL, 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1260, 22, 1009, N'PALM ANGELS BUCKET', 5300000, N'692.png', N'693.png', N'694.png', 30, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1261, 22, 1009, N'PALM ANGELS CAP', 3900000, N'695.png', N'696.png', NULL, 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1262, 22, 1009, N'PALM ANGELS CAP', 4600000, N'697.png', N'698.png', NULL, 20, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1263, 22, 5, N'PALM ANGELS GLASSES', 5900000, N'699.png', N'700.png', NULL, 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1264, 22, 5, N'PALM ANGELS GLASSES', 5900000, N'701.png', N'702.png', N'703.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1265, 22, 1007, N'PALM ANGELS JACKET LONG SLEEVED LOGO PRINTED DENIM', 14000000, N'704.png', N'705.png', N'706.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1266, 22, 1007, N'PALM ANGELS JACKET LONG SLEEVED LOGO PRINTED DENIM', 14000000, N'707.png', N'708.png', N'709.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1267, 22, 3, N'PALM ANGELS SHORT', 6300000, N'710.png', N'711.png', N'712.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1268, 22, 3, N'PALM ANGELS SHORT 2', 6600000, N'713.png', N'714.png', N'715.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1269, 22, 4, N'PALM ANGELS SLIDE', 3400000, N'716.png', N'717.png', N'718.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1270, 22, 4, N'PALM ANGELS SLIDE', 290000, N'719.png', N'720.png', N'721.png', 30, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1271, 22, 7, N'PALM ANGELS T-SHIRT', 5900000, N'722.png', N'723.png', NULL, 30, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1272, 22, 7, N'PALM ANGELS T-SHIRT (SLIM)', 5600000, N'724.png', N'725.png', NULL, 30, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1273, 23, 2, N'PRADA BAG', 41500000, N'726.png', N'727.png', N'728.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1274, 23, 2, N'PRADA BAG CLEO BRUSHED LEATHER SHOULDER', 40800000, N'729.png', N'730.png', N'731.png', 100, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1275, 23, 2, N'PRADA BAG CLEO BRUSHED LEATHER SHOULDER WITH FLAP', 39800000, N'732.png', N'733.png', N'734.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1276, 23, 1009, N'PRADA BUCKET HAT NYLON', 10700000, N'735.png', NULL, NULL, 35, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1277, 23, 1009, N'PRADA BUCKET HAT NYLON', 10700000, N'736.png', N'737.png', NULL, 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1278, 23, 5, N'PRADA GLASSES', 6600000, N'738.png', N'739.png', N'740.png', 35, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1279, 23, 5, N'PRADA GLASSES', 6800000, N'741.png', N'742.png', NULL, 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1280, 23, 4, N'PRADA LOAFERS', 21300000, N'743.png', N'744.png', N'745.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1281, 23, 4, N'PRADA LOAFERS', 21500000, N'746.png', N'747.png', NULL, 35, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1282, 23, 4, N'PRADA LOAFERS', 18200000, N'748.png', N'749.png', N'750.png', 30, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1283, 23, 4, N'PRADA MULE', 17700000, N'751.png', N'752.png', N'753.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1284, 23, 4, N'PRADA PUMP', 19500000, N'754.png', N'755.png', N'756.png', 25, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1285, 23, 1010, N'PRADA WALLET', 12200000, N'757.png', N'758.png', N'759.png', 25, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1286, 23, 1010, N'PRADA WALLET', 12200000, N'757.png', N'758.png', N'759.png', 25, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1287, 24, 1, N'THOM BROWNE CARD HOLDER', 5900000, N'760.png', N'761.png', N'762.png', 25, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1288, 24, 1012, N'THOM BROWNE CARDIGAN', 17200000, N'763.png', N'764.png', NULL, 35, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1289, 24, 1012, N'THOM BROWNE CARDIGAN', 17200000, N'765.png', N'766.png', NULL, 25, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1290, 24, 1012, N'THOM BROWNE CARDIGAN', 17200000, N'767.png', N'768.png', NULL, 36, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1291, 24, 1012, N'THOM BROWNE CARDIGAN GREY', 17200000, N'769.png', N'770.png', NULL, 36, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1292, 24, 8, N'THOM BROWNE POLO', 9600000, N'771.png', N'772.png', NULL, 65, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1293, 24, 8, N'THOM BROWNE POLO', 7300000, N'773.png', N'774.png', NULL, 35, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1294, 24, 8, N'THOM BROWNE POLO', 9300000, N'775.png', N'776.png', NULL, 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1295, 24, 8, N'THOM BROWNE POLO', 10700000, N'777.png', N'778.png', NULL, 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1296, 24, 1008, N'THOM BROWNE SHIRT', 10700000, N'779.png', N'780.png', NULL, 30, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1297, 24, 1008, N'THOM BROWNE SHIRT', 10700000, N'781.png', N'782.png', NULL, 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1298, 24, 1008, N'THOM BROWNE SHIRT', 10400000, N'783.png', N'784.png', NULL, 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1299, 24, 4, N'THOM BROWNE SLIDE BLACK', 7600000, N'785.png', N'786.png', N'787.png', 35, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1300, 24, 1, N'THOM BROWNE TIE', 5600000, N'788.png', NULL, NULL, 35, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1301, 24, 1, N'THOM BROWNE TIE', 5600000, N'789.png', NULL, NULL, 35, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1302, 24, 1, N'THOM BROWNE TIE', 6300000, N'790.png', NULL, NULL, 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1303, 24, 1008, N'THOM BROWNE T-SHIRT', 7600000, N'791.png', N'792.png', NULL, 35, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1304, 24, 1008, N'THOM BROWNE T-SHIRT', 5900000, N'793.png', N'794.png', NULL, 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1305, 24, 1008, N'THOM BROWNE T-SHIRT', 8200000, N'795.png', N'796.png', NULL, 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1306, 25, 2, N'SAINT LAURENT BAG MONOGRAM HOBO IN SMOOTH LEATHER', 43300000, N'799.png', N'800.png', N'801.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1307, 25, 2, N'SAINT LAURENT BAG', 52300000, N'802.png', N'803.png', N'804.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1308, 25, 1, N'SAINT LAURENT CARD HOLDER', 5600000, N'807.png', N'806.png', NULL, 25, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1309, 25, 1, N'SAINT LAURENT CARD HOLDER (GOLD)', 6900000, N'808.png', N'809.png', N'810.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1310, 25, 5, N'SAINT LAURENT GLASSES', 3900000, N'811.png', N'812.png', N'813.png', 35, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1311, 25, 1007, N'SAINT LAURENT JACKET TEDDY', 34300000, N'814.png', N'815.png', NULL, 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1312, 25, 4, N'SAINT LAURENT SNEAKER', 9800000, N'816.png', N'817.png', N'818.png', 35, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1313, 25, 4, N'SAINT LAURENT SNEAKER', 9300000, N'819.png', N'820.png', N'821.png', 50, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1314, 25, 1010, N'SAINT LAURENT WALLET', 7600000, N'822.png', N'823.png', NULL, 35, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1315, 25, 1010, N'SAINT LAURENT WALLET', 9800000, N'824.png', N'825.png', N'826.png', 40, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1316, 25, 1010, N'SAINT LAURENT WALLET ( GOLD )', 9600000, N'827.png', N'828.png', N'829.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1317, 25, 2, N' CHEVRON-QUILTED CROSSBODY BAG ( BLACK - 19 CM )', 24800000, N'830.png', N'831.png', N'832.png', 60, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1318, 25, 2, N'SAINT LAURENT WOC GOLD - 22 CM', 28800000, N'833.png', N'834.png', N'835.png', 35, NULL)
GO
INSERT [dbo].[SANPHAM] ([maSP], [maTH], [maDM], [tenSP], [gia], [hinh], [hinh1], [hinh2], [soLuong], [thongTin]) VALUES (1319, 25, 2, N'SAINT LAURENT WOC SILVER - 22 CM', 29800000, N'836.png', N'837.png', N'838.png', 60, NULL)
GO
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
GO
SET IDENTITY_INSERT [dbo].[SIZE] ON 
GO
INSERT [dbo].[SIZE] ([maSize], [tenS], [mota]) VALUES (1, N'S     ', NULL)
GO
INSERT [dbo].[SIZE] ([maSize], [tenS], [mota]) VALUES (2, N'M     ', NULL)
GO
INSERT [dbo].[SIZE] ([maSize], [tenS], [mota]) VALUES (3, N'L     ', NULL)
GO
INSERT [dbo].[SIZE] ([maSize], [tenS], [mota]) VALUES (4, N'XL    ', NULL)
GO
INSERT [dbo].[SIZE] ([maSize], [tenS], [mota]) VALUES (5, N'36    ', NULL)
GO
INSERT [dbo].[SIZE] ([maSize], [tenS], [mota]) VALUES (6, N'37    ', NULL)
GO
INSERT [dbo].[SIZE] ([maSize], [tenS], [mota]) VALUES (7, N'38    ', NULL)
GO
INSERT [dbo].[SIZE] ([maSize], [tenS], [mota]) VALUES (8, N'39    ', NULL)
GO
INSERT [dbo].[SIZE] ([maSize], [tenS], [mota]) VALUES (9, N'40    ', NULL)
GO
INSERT [dbo].[SIZE] ([maSize], [tenS], [mota]) VALUES (10, N'41    ', NULL)
GO
INSERT [dbo].[SIZE] ([maSize], [tenS], [mota]) VALUES (11, N'42    ', NULL)
GO
INSERT [dbo].[SIZE] ([maSize], [tenS], [mota]) VALUES (12, N'43    ', NULL)
GO
SET IDENTITY_INSERT [dbo].[SIZE] OFF
GO
SET IDENTITY_INSERT [dbo].[THUONGHIEU] ON 
GO
INSERT [dbo].[THUONGHIEU] ([maTH], [tenTH], [mota], [logo]) VALUES (1, N'ACME DE LA VIE (ADLV)', NULL, NULL)
GO
INSERT [dbo].[THUONGHIEU] ([maTH], [tenTH], [mota], [logo]) VALUES (2, N'ADIDAS', NULL, NULL)
GO
INSERT [dbo].[THUONGHIEU] ([maTH], [tenTH], [mota], [logo]) VALUES (3, N'ALEXANDER McQUEEN', NULL, NULL)
GO
INSERT [dbo].[THUONGHIEU] ([maTH], [tenTH], [mota], [logo]) VALUES (4, N'ALEXANDER WANG', NULL, NULL)
GO
INSERT [dbo].[THUONGHIEU] ([maTH], [tenTH], [mota], [logo]) VALUES (5, N'ANDREA MARTIN', NULL, NULL)
GO
INSERT [dbo].[THUONGHIEU] ([maTH], [tenTH], [mota], [logo]) VALUES (6, N'BALENCIAGA', NULL, NULL)
GO
INSERT [dbo].[THUONGHIEU] ([maTH], [tenTH], [mota], [logo]) VALUES (7, N'BURBERRY', NULL, NULL)
GO
INSERT [dbo].[THUONGHIEU] ([maTH], [tenTH], [mota], [logo]) VALUES (8, N'CELINE', NULL, NULL)
GO
INSERT [dbo].[THUONGHIEU] ([maTH], [tenTH], [mota], [logo]) VALUES (9, N'DIOR', NULL, NULL)
GO
INSERT [dbo].[THUONGHIEU] ([maTH], [tenTH], [mota], [logo]) VALUES (10, N'DREW', NULL, NULL)
GO
INSERT [dbo].[THUONGHIEU] ([maTH], [tenTH], [mota], [logo]) VALUES (11, N'FEAR OF GOD', NULL, NULL)
GO
INSERT [dbo].[THUONGHIEU] ([maTH], [tenTH], [mota], [logo]) VALUES (12, N'GENTLE MONSTER', NULL, NULL)
GO
INSERT [dbo].[THUONGHIEU] ([maTH], [tenTH], [mota], [logo]) VALUES (13, N'GIVENCHY', NULL, NULL)
GO
INSERT [dbo].[THUONGHIEU] ([maTH], [tenTH], [mota], [logo]) VALUES (14, N'GUCCI', NULL, NULL)
GO
INSERT [dbo].[THUONGHIEU] ([maTH], [tenTH], [mota], [logo]) VALUES (15, N'JACQUEMUS', NULL, NULL)
GO
INSERT [dbo].[THUONGHIEU] ([maTH], [tenTH], [mota], [logo]) VALUES (16, N'LE LABO', NULL, NULL)
GO
INSERT [dbo].[THUONGHIEU] ([maTH], [tenTH], [mota], [logo]) VALUES (17, N'LOUIS VUITTON', NULL, NULL)
GO
INSERT [dbo].[THUONGHIEU] ([maTH], [tenTH], [mota], [logo]) VALUES (18, N'MCM', NULL, NULL)
GO
INSERT [dbo].[THUONGHIEU] ([maTH], [tenTH], [mota], [logo]) VALUES (19, N'MLB', NULL, NULL)
GO
INSERT [dbo].[THUONGHIEU] ([maTH], [tenTH], [mota], [logo]) VALUES (20, N'NIKE', NULL, NULL)
GO
INSERT [dbo].[THUONGHIEU] ([maTH], [tenTH], [mota], [logo]) VALUES (21, N'OFF-WHITE', NULL, NULL)
GO
INSERT [dbo].[THUONGHIEU] ([maTH], [tenTH], [mota], [logo]) VALUES (22, N'PALM ANGELS', NULL, NULL)
GO
INSERT [dbo].[THUONGHIEU] ([maTH], [tenTH], [mota], [logo]) VALUES (23, N'PRADA', NULL, NULL)
GO
INSERT [dbo].[THUONGHIEU] ([maTH], [tenTH], [mota], [logo]) VALUES (24, N'THROM BROWNE', NULL, NULL)
GO
INSERT [dbo].[THUONGHIEU] ([maTH], [tenTH], [mota], [logo]) VALUES (25, N'YSL', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[THUONGHIEU] OFF
GO
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD FOREIGN KEY([maDH])
REFERENCES [dbo].[DATHANG] ([maDH])
GO
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD FOREIGN KEY([maSP])
REFERENCES [dbo].[SANPHAM] ([maSP])
GO
ALTER TABLE [dbo].[CHITIETSIZE]  WITH CHECK ADD FOREIGN KEY([maSize])
REFERENCES [dbo].[SIZE] ([maSize])
GO
ALTER TABLE [dbo].[CHITIETSIZE]  WITH CHECK ADD FOREIGN KEY([maSP])
REFERENCES [dbo].[SANPHAM] ([maSP])
GO
ALTER TABLE [dbo].[DANHGIA]  WITH CHECK ADD FOREIGN KEY([maSP])
REFERENCES [dbo].[SANPHAM] ([maSP])
GO
ALTER TABLE [dbo].[DATHANG]  WITH CHECK ADD FOREIGN KEY([maND])
REFERENCES [dbo].[NGUOIDUNG] ([maND])
GO
ALTER TABLE [dbo].[DATHANG]  WITH CHECK ADD FOREIGN KEY([maPT])
REFERENCES [dbo].[PHUONGTHUCTHANHTOAN] ([maPT])
GO
ALTER TABLE [dbo].[MAU]  WITH CHECK ADD FOREIGN KEY([maSP])
REFERENCES [dbo].[SANPHAM] ([maSP])
GO
ALTER TABLE [dbo].[NGUOIDUNG]  WITH CHECK ADD FOREIGN KEY([maRole])
REFERENCES [dbo].[ROLES] ([maRole])
GO
ALTER TABLE [dbo].[NGUOIDUNG]  WITH CHECK ADD FOREIGN KEY([maRole])
REFERENCES [dbo].[ROLES] ([maRole])
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD FOREIGN KEY([maDM])
REFERENCES [dbo].[DANHMUC] ([maDM])
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD FOREIGN KEY([maTH])
REFERENCES [dbo].[THUONGHIEU] ([maTH])
GO
