USE [master]
GO
/****** Object:  Database [THITN]    Script Date: 08/12/2021 10:40:11 CH ******/
CREATE DATABASE [THITN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'THITN', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\THITN.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'THITN_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\THITN_log.ldf' , SIZE = 204800KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [THITN] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [THITN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [THITN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [THITN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [THITN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [THITN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [THITN] SET ARITHABORT OFF 
GO
ALTER DATABASE [THITN] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [THITN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [THITN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [THITN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [THITN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [THITN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [THITN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [THITN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [THITN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [THITN] SET  DISABLE_BROKER 
GO
ALTER DATABASE [THITN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [THITN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [THITN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [THITN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [THITN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [THITN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [THITN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [THITN] SET RECOVERY FULL 
GO
ALTER DATABASE [THITN] SET  MULTI_USER 
GO
ALTER DATABASE [THITN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [THITN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [THITN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [THITN] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [THITN] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [THITN] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'THITN', N'ON'
GO
ALTER DATABASE [THITN] SET QUERY_STORE = OFF
GO
USE [THITN]
GO
/****** Object:  User [NAM1223 ]    Script Date: 08/12/2021 10:40:12 CH ******/
CREATE USER [NAM1223 ] FOR LOGIN [HTKN2] WITH DEFAULT_SCHEMA=[NAM1223 ]
GO
/****** Object:  User [HTKN]    Script Date: 08/12/2021 10:40:12 CH ******/
CREATE USER [HTKN] FOR LOGIN [HTKN] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [TRUONG]    Script Date: 08/12/2021 10:40:12 CH ******/
CREATE ROLE [TRUONG]
GO
/****** Object:  DatabaseRole [SINHVIEN]    Script Date: 08/12/2021 10:40:12 CH ******/
CREATE ROLE [SINHVIEN]
GO
/****** Object:  DatabaseRole [MSmerge_PAL_role]    Script Date: 08/12/2021 10:40:12 CH ******/
CREATE ROLE [MSmerge_PAL_role]
GO
/****** Object:  DatabaseRole [MSmerge_AD9819C851DF47AEBCFDE698FAB9B8E7]    Script Date: 08/12/2021 10:40:12 CH ******/
CREATE ROLE [MSmerge_AD9819C851DF47AEBCFDE698FAB9B8E7]
GO
/****** Object:  DatabaseRole [MSmerge_93FA19C6E0E64AFCADEAFD297EA3566E]    Script Date: 08/12/2021 10:40:12 CH ******/
CREATE ROLE [MSmerge_93FA19C6E0E64AFCADEAFD297EA3566E]
GO
/****** Object:  DatabaseRole [MSmerge_4157AA93CF04449EAB4EE78B616170E8]    Script Date: 08/12/2021 10:40:12 CH ******/
CREATE ROLE [MSmerge_4157AA93CF04449EAB4EE78B616170E8]
GO
/****** Object:  DatabaseRole [GIAOVIEN]    Script Date: 08/12/2021 10:40:12 CH ******/
CREATE ROLE [GIAOVIEN]
GO
/****** Object:  DatabaseRole [COSO]    Script Date: 08/12/2021 10:40:12 CH ******/
CREATE ROLE [COSO]
GO
ALTER ROLE [GIAOVIEN] ADD MEMBER [NAM1223 ]
GO
ALTER ROLE [db_datareader] ADD MEMBER [NAM1223 ]
GO
ALTER ROLE [db_owner] ADD MEMBER [HTKN]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [TRUONG]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [TRUONG]
GO
ALTER ROLE [db_datareader] ADD MEMBER [TRUONG]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SINHVIEN]
GO
ALTER ROLE [MSmerge_PAL_role] ADD MEMBER [MSmerge_AD9819C851DF47AEBCFDE698FAB9B8E7]
GO
ALTER ROLE [MSmerge_PAL_role] ADD MEMBER [MSmerge_93FA19C6E0E64AFCADEAFD297EA3566E]
GO
ALTER ROLE [MSmerge_PAL_role] ADD MEMBER [MSmerge_4157AA93CF04449EAB4EE78B616170E8]
GO
ALTER ROLE [db_datareader] ADD MEMBER [GIAOVIEN]
GO
ALTER ROLE [db_owner] ADD MEMBER [COSO]
GO
/****** Object:  Schema [MSmerge_PAL_role]    Script Date: 08/12/2021 10:40:12 CH ******/
CREATE SCHEMA [MSmerge_PAL_role]
GO
/****** Object:  Schema [NAM1223 ]    Script Date: 08/12/2021 10:40:12 CH ******/
CREATE SCHEMA [NAM1223 ]
GO
/****** Object:  View [dbo].[Get_Classes]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Get_Classes]
as
select * from LINK2.THITN.dbo.LOP
GO
/****** Object:  View [dbo].[Get_SearchSubscribes]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Get_SearchSubscribes]
AS
SELECT        PUBS.description AS TENCN, SUBS.subscriber_server AS TENSERVER
FROM            LINK0.THITN.dbo.sysmergepublications AS PUBS INNER JOIN
                         LINK0.THITN.dbo.sysmergesubscriptions AS SUBS ON PUBS.pubid = SUBS.pubid AND PUBS.publisher <> SUBS.subscriber_server
WHERE        (PUBS.description = N'TRA CỨU')
GO
/****** Object:  View [dbo].[Get_Subscribes]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Get_Subscribes]
AS
SELECT        PUBS.description AS TENCS, SUBS.subscriber_server AS TENSERVER
FROM            LINK0.THITN.dbo.sysmergepublications AS PUBS INNER JOIN
                         LINK0.THITN.dbo.sysmergesubscriptions AS SUBS ON PUBS.pubid = SUBS.pubid AND PUBS.publisher <> SUBS.subscriber_server
WHERE        (PUBS.description <> N'TRA CỨU')
GO
/****** Object:  Table [dbo].[BAITHI]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAITHI](
	[BAITHI] [int] NOT NULL,
	[CAUHOI] [int] NOT NULL,
	[DACHON] [char](1) NULL,
	[STT] [int] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_BAITHI] PRIMARY KEY CLUSTERED 
(
	[BAITHI] ASC,
	[CAUHOI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BANGDIEM]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BANGDIEM](
	[MASV] [nchar](8) NOT NULL,
	[MAMH] [nchar](5) NOT NULL,
	[LAN] [smallint] NOT NULL,
	[NGAYTHI] [datetime] NULL,
	[DIEM] [float] NULL,
	[BAITHI] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_BANGDIEM] PRIMARY KEY CLUSTERED 
(
	[MASV] ASC,
	[MAMH] ASC,
	[LAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BODE]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BODE](
	[CAUHOI] [int] NOT NULL,
	[MAMH] [nchar](5) NULL,
	[TRINHDO] [char](1) NULL,
	[NOIDUNG] [ntext] NULL,
	[A] [nvarchar](30) NULL,
	[B] [nvarchar](30) NULL,
	[C] [nvarchar](30) NULL,
	[D] [nvarchar](30) NULL,
	[DAP_AN] [char](1) NULL,
	[MAGV] [nchar](8) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_BODE] PRIMARY KEY CLUSTERED 
(
	[CAUHOI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COSO]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COSO](
	[MACS] [nchar](3) NOT NULL,
	[TENCS] [nvarchar](50) NOT NULL,
	[DIACHI] [nvarchar](100) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_COSO] PRIMARY KEY CLUSTERED 
(
	[MACS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIAOVIEN]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIAOVIEN](
	[MAGV] [nchar](8) NOT NULL,
	[HO] [nvarchar](40) NULL,
	[TEN] [nvarchar](10) NULL,
	[DIACHI] [nvarchar](40) NULL,
	[MAKH] [nchar](8) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_GIAOVIEN] PRIMARY KEY CLUSTERED 
(
	[MAGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIAOVIEN_DANGKY]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIAOVIEN_DANGKY](
	[MAGV] [nchar](8) NOT NULL,
	[MAMH] [nchar](5) NOT NULL,
	[MALOP] [nchar](8) NOT NULL,
	[TRINHDO] [char](1) NOT NULL,
	[NGAYTHI] [datetime] NOT NULL,
	[LAN] [smallint] NOT NULL,
	[SOCAUTHI] [smallint] NOT NULL,
	[THOIGIAN] [smallint] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_GIAOVIEN_DANGKY] PRIMARY KEY CLUSTERED 
(
	[MAMH] ASC,
	[MALOP] ASC,
	[LAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHOA]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHOA](
	[MAKH] [nchar](8) NOT NULL,
	[TENKH] [nvarchar](50) NOT NULL,
	[MACS] [nchar](3) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_KHOA] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOP]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOP](
	[MALOP] [nchar](8) NOT NULL,
	[TENLOP] [varchar](40) NOT NULL,
	[MAKH] [nchar](8) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_LOP] PRIMARY KEY CLUSTERED 
(
	[MALOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MONHOC]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MONHOC](
	[MAMH] [nchar](5) NOT NULL,
	[TENMH] [nvarchar](40) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_TENMH] PRIMARY KEY CLUSTERED 
(
	[MAMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SINHVIEN]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SINHVIEN](
	[MASV] [nchar](8) NOT NULL,
	[HO] [nvarchar](40) NOT NULL,
	[TEN] [nvarchar](10) NOT NULL,
	[NGAYSINH] [datetime] NULL,
	[DIACHI] [nvarchar](40) NULL,
	[MALOP] [nchar](8) NOT NULL,
	[MATKHAU] [varchar](50) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_SINHVIEN] PRIMARY KEY CLUSTERED 
(
	[MASV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BAITHI] ([BAITHI], [CAUHOI], [DACHON], [STT], [rowguid]) VALUES (1, 1, N'A', 1, N'9c14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BAITHI] ([BAITHI], [CAUHOI], [DACHON], [STT], [rowguid]) VALUES (1, 3, N'A', 2, N'9d14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BAITHI] ([BAITHI], [CAUHOI], [DACHON], [STT], [rowguid]) VALUES (24003, 3, N'B', 3, N'9ebcc57a-2958-ec11-802b-9840bb00878c')
INSERT [dbo].[BAITHI] ([BAITHI], [CAUHOI], [DACHON], [STT], [rowguid]) VALUES (24003, 4, NULL, 9, N'a4bcc57a-2958-ec11-802b-9840bb00878c')
INSERT [dbo].[BAITHI] ([BAITHI], [CAUHOI], [DACHON], [STT], [rowguid]) VALUES (24003, 5, N'B', 7, N'a2bcc57a-2958-ec11-802b-9840bb00878c')
INSERT [dbo].[BAITHI] ([BAITHI], [CAUHOI], [DACHON], [STT], [rowguid]) VALUES (24003, 6, N'B', 5, N'a0bcc57a-2958-ec11-802b-9840bb00878c')
INSERT [dbo].[BAITHI] ([BAITHI], [CAUHOI], [DACHON], [STT], [rowguid]) VALUES (24003, 7, N'C', 8, N'a3bcc57a-2958-ec11-802b-9840bb00878c')
INSERT [dbo].[BAITHI] ([BAITHI], [CAUHOI], [DACHON], [STT], [rowguid]) VALUES (24003, 8, N'A', 1, N'9cbcc57a-2958-ec11-802b-9840bb00878c')
INSERT [dbo].[BAITHI] ([BAITHI], [CAUHOI], [DACHON], [STT], [rowguid]) VALUES (24003, 9, N'D', 6, N'a1bcc57a-2958-ec11-802b-9840bb00878c')
INSERT [dbo].[BAITHI] ([BAITHI], [CAUHOI], [DACHON], [STT], [rowguid]) VALUES (24003, 141, N'B', 2, N'9dbcc57a-2958-ec11-802b-9840bb00878c')
INSERT [dbo].[BAITHI] ([BAITHI], [CAUHOI], [DACHON], [STT], [rowguid]) VALUES (24003, 142, N'B', 4, N'9fbcc57a-2958-ec11-802b-9840bb00878c')
INSERT [dbo].[BAITHI] ([BAITHI], [CAUHOI], [DACHON], [STT], [rowguid]) VALUES (24003, 143, NULL, 10, N'a5bcc57a-2958-ec11-802b-9840bb00878c')
GO
SET IDENTITY_INSERT [dbo].[BANGDIEM] ON 

INSERT [dbo].[BANGDIEM] ([MASV], [MAMH], [LAN], [NGAYTHI], [DIEM], [BAITHI], [rowguid]) VALUES (N'001     ', N'MMTCB', 2, CAST(N'2021-12-08T20:19:00.000' AS DateTime), 1, 24003, N'9bbcc57a-2958-ec11-802b-9840bb00878c')
SET IDENTITY_INSERT [dbo].[BANGDIEM] OFF
GO
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (1, N'MMTCB', N'A', N'mạng máy tính(compute netword) so với hệ thống tập trung multi-user', N'dễ phát triển hệ thống', N'tăng độ tin cậy', N'tiết kiệm chi phí', N'tất cả đều đúng', N'D', N'TH657   ', N'bb13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (3, N'MMTCB', N'A', N'để một máy tính truyền dữ liệu cho một số máy khác trong mạng, ta dùng loại địa chỉ', N'Broadcast', N'Broadband', N'multicast', N'multiple access', N'C', N'TH123   ', N'bc13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (4, N'MMTCB', N'A', N'thứ tự phân loại mạng theo chiều dài đường truyền', N'internet, lan, man, wan', N'internet, wan, man, lan', N'lan, wan, man, internet', N'man, lan, wan, internet', N'B', N'TH123   ', N'bd13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (5, N'MMTCB', N'A', N'mạng man được sử dụng trong phạm vi:', N'quốc gia', N'lục địa', N'khu phố', N'thành phố', N'D', N'TH123   ', N'be13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (6, N'MMTCB', N'A', N'thuật ngữ man được viết tắt bởi:', N'middle area network', N'metropolitan area network', N'medium area network', N'multiple access network', N'D', N'TH123   ', N'bf13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (7, N'MMTCB', N'A', N'mạng man không kết nối theo sơ đồ:', N'bus', N'ring', N'star', N'tree', N'D', N'TH123   ', N'c013b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (8, N'MMTCB', N'A', N'kiến trúc mạng (network architechture) là:', N'tập các chức năng trong mạng', N'tập các cấp và các protocol tr', N'tập các dịch vụ trong mạng', N'tập các protocol trong mạng', N'B', N'TH123   ', N'c113b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (9, N'MMTCB', N'A', N'thuật ngữ nào không cùng nhóm:', N'simplex', N'multiplex', N'half duplex', N'full duplex', N'B', N'TH123   ', N'c213b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (10, N'MMTCB', N'A', N'loại dịch vụ nào có thể nhận dữ liệu không đúng thứ tự khi truyền', N'point to point', N'có kết nối', N'không kết nối', N'broadcast', N'C', N'TH123   ', N'c313b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (11, N'MMTCB', N'A', N'dịch vụ không xác nhận (unconfirmed) chỉ sử dụng 2 phép toán cơ bản:', N'response and confirm', N'confirm and request', N'request and indication', N'indication and response', N'C', N'TH123   ', N'c413b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (12, N'MMTCB', N'A', N'Chọn câu sai trong các nguyên lý phân cấp của mô hình OSI', N'Mỗi cấp thực hiện 1 chức năng ', N'Mỗi cấp được chọn sao cho thôn', N'Mỗi cấp được tạo ra ứng với 1 ', N'Mỗi cấp phải cung cấp cùng 1 k', N'D', N'TH123   ', N'c513b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (13, N'MMTCB', N'A', N'Chức năng của cấp vật lý(physical)', N'Qui định truyền 1 hay 2 chiều', N'Quản lý lỗi sai', N'Xác định thời gian truyền 1 bi', N'Quản lý địa chỉ vật lý', N'C', N'TH123   ', N'c613b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (14, N'MMTCB', N'A', N'Chức năng câp liên kết dữ liệu (data link)', N'Quản lý lỗi sai', N'Mã hóa dữ liệu', N'Tìm đường đi cho dữ liệu', N'Chọn kênh truyền', N'A', N'TH123   ', N'c713b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (15, N'MMTCB', N'A', N'Chức năng cấp mạng (network)', N'Quản lý lưu lượng đường truyền', N'Điều khiển hoạt động subnet', N'Nén dữ liệu', N'Chọn điện áp trên kênh truyền', N'B', N'TH123   ', N'c813b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (16, N'MMTCB', N'A', N'Chức năng cấp vận tải (transport) ', N'Quản lý địa chỉ mạng', N'Chuyển đổi các dạng frame khác', N'Thiết lập và hủy bỏ dữ liệu', N'Mã hóa và giải mã dữ liệu', N'C', N'TH123   ', N'c913b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (17, N'MMTCB', N'A', N'Cáp xoắn đôi trong mạng LAN dùng đầu nối', N'AUI', N'BNC', N'RJ11', N'RJ45', N'D', N'TH123   ', N'ca13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (18, N'MMTCB', N'A', N'T-connector dùng trong loại cáp', N'10Base-2', N'10Base-5', N'10Base-T', N'10Base-F', N'A', N'TH123   ', N'cb13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (19, N'MMTCB', N'A', N'chọn câu sai trong các nguyên lý phân cấp của mô hình osi', N'mỗi cấp thực hiện 1 chức năng ', N'mỗi cấp được chọn sao cho thôn', N'mỗi cấp được tạo ra ứng với 1 ', N'mỗi cấp phải cung cấp cùng một', N'D', N'TH123   ', N'cc13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (20, N'AVCB ', N'A', N'The publishers suggested that the envelopes be sent to ...... by courier so that the film can be developed as soon as possible', N'they', N'their', N'theirs', N'them', N'D', N'TH234   ', N'cd13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (21, N'AVCB ', N'A', N'Board members ..... carefully define their goals and objectives for the agency before the monthly meeting next week.', N'had', N'should', N'used ', N'have', N'B', N'TH234   ', N'ce13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (22, N'AVCB ', N'A', N'For business relations to continue between our two firms, satisfactory agreement must be ...... reached and signer', N'yet', N'both', N'either ', N'as well as', N'C', N'TH234   ', N'cf13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (23, N'AVCB ', N'A', N'The corporation, which underwent a major restructing seven years ago, has been growing steadily ......five years', N'for', N'on', N'from', N'since', N'A', N'TH234   ', N'd013b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (24, N'AVCB ', N'A', N'Making advance arrangements for audiovisual equipment is....... recommended for all seminars.', N'sternly', N'strikingly', N'stringently', N'strongly', N'A', N'TH234   ', N'd113b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (25, N'AVCB ', N'A', N'Two assistants will be required to ...... reporter''s names when they arrive at the press conference', N'remark', N'check', N'notify', N'ensure', N'B', N'TH234   ', N'd213b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (26, N'AVCB ', N'A', N'The present government has an excellent ......to increase exports', N'popularity', N'regularity', N'celebrity', N'opportunity', N'D', N'TH234   ', N'd313b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (27, N'AVCB ', N'A', N'While you are in the building, please wear your identification badge at all times so that you are ....... as a company employee.', N'recognize', N'recognizing', N'recognizable', N'recognizably', N'C', N'TH234   ', N'd413b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (28, N'AVCB ', N'A', N'Our studies show that increases in worker productivity have not been adequately .......rewarded by significant increases in ......', N'compensation', N'commodity', N'compilation', N'complacency', N'B', N'TH234   ', N'd513b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (29, N'AVCB ', N'A', N'Conservatives predict that government finaces will remain...... during the period of the investigation', N'authoritative', N'summarized', N'examined', N'stable', N'D', N'TH234   ', N'd613b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (30, N'AVCB ', N'B', N'Battery-operated reading lamps......very well right now', N'sale', N'sold', N'are selling', N'were sold', N'C', N'TH234   ', N'd713b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (31, N'AVCB ', N'B', N'In order to place a call outside the office, you have to .......nine first. ', N'tip', N'make', N'dial', N'number', N'D', N'TH234   ', N'd813b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (32, N'AVCB ', N'B', N'We are pleased to inform...... that the missing order has been found.', N'you', N'your', N'yours', N'yourseld', N'A', N'TH234   ', N'd913b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (33, N'AVCB ', N'B', N'Unfortunately, neither Mr.Sachs....... Ms Flynn will be able to attend the awards banquet this evening', N'but', N'and', N' nor', N'either', N'C', N'TH234   ', N'da13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (34, N'AVCB ', N'B', N'According to the manufacturer, the new generatir is capable of....... the amount of power consumed by our facility by nearly ten percent.', N'reduced', N'reducing', N'reduce', N'reduces', N'B', N'TH234   ', N'db13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (35, N'AVCB ', N'B', N'After the main course, choose from our wide....... of homemade deserts', N'varied', N'various', N'vary', N'variety', N'D', N'TH234   ', N'dc13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (36, N'AVCB ', N'B', N'One of the most frequent complaints among airline passengers is that there is not ...... legroom', N'enough', N'many', N'very', N'plenty', N'A', N'TH234   ', N'dd13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (37, N'AVCB ', N'B', N'Faculty members are planning to..... a party in honor of Dr.Walker, who will retire at the end of the semester', N'carry', N'do', N'hold', N'take', N'D', N'TH234   ', N'de13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (38, N'AVCB ', N'B', N'Many employees seem more ....... now about how to use the new telephone system than they did before they attended the workshop', N'confusion', N'confuse', N'confused', N'confusing', N'C', N'TH234   ', N'df13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (39, N'AVCB ', N'B', N'.........our production figures improve in the near future, we foresee having to hire more people between now and July', N'During', N'Only', N'Unless', N'Because', N'D', N'TH234   ', N'e013b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (40, N'AVCB ', N'C', N'Though their performance was relatively unpolished, the actors held the audience''s ........for the duration of the play.', N'attentive', N'attentively', N'attention', N'attentiveness', N'C', N'TH234   ', N'e113b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (41, N'AVCB ', N'C', N'Dr. Abernathy''s donation to Owstion College broke the record for the largest private gift...... give to the campus', N'always', N'rarely', N'once', N'ever', N'C', N'TH234   ', N'e213b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (42, N'AVCB ', N'C', N'Savat Nation Park is ....... by train,bus, charter plane, and rental car.', N'accessible', N'accessing', N'accessibility', N'accesses', N'A', N'TH234   ', N'e313b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (43, N'AVCB ', N'C', N'In Piazzo''s lastest architectural project, he hopes to......his flare for blending contemporary and traditional ideals.', N'demonstrate', N'appear', N'valve', N'position', N'A', N'TH234   ', N'e413b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (44, N'AVCB ', N'C', N'Replacing the offic equipment that the company purchased only three years ago seems quite.....', N'waste', N'wasteful', N'wasting', N'wasted', N'C', N'TH234   ', N'e513b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (45, N'AVCB ', N'C', N'On........, employees reach their peak performance level when they have been on the job for at least two years.', N'common', N'standard', N'average', N'general', N'D', N'TH234   ', N'e613b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (46, N'AVCB ', N'C', N'We were........unaware of the problems with the air-conidtioning units in the hotel rooms until this week.', N'complete ', N'completely', N'completed', N'completing', N'D', N'TH234   ', N'e713b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (47, N'AVCB ', N'C', N'If you send in an order ....... mail, we recommend that you phone our sales division directly to confirm the order.', N'near', N'by', N'for', N'on', N'A', N'TH234   ', N'e813b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (48, N'AVCB ', N'C', N'A recent global survey suggests.......... demand for aluminum and tin will remain at its current level for the next five to ten years.', N'which', N'it ', N'that', N'both', N'C', N'TH234   ', N'e913b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (49, N'AVCB ', N'C', N'Rates for the use of recreational facilities do not include ta and are subject to change without.........', N'signal', N'cash', N'report', N'notice', N'A', N'TH234   ', N'ea13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (50, N'AVCB ', N'A', N'Aswering telephone calls is the..... of an operator', N'responsible', N'responsibly', N'responsive', N'responsibility', N'D', N'TH234   ', N'eb13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (51, N'AVCB ', N'A', N'A free watch will be provided with every purchase of $20.00 or more a ........ period of time', N'limit', N'limits', N'limited', N'limiting', N'C', N'TH234   ', N'ec13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (52, N'AVCB ', N'A', N'The president of the corporation has .......arrived in Copenhagen and will meet with the Minister of Trade on Monday morning', N'still', N'yet', N'already', N'soon', N'C', N'TH234   ', N'ed13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (53, N'AVCB ', N'A', N'Because we value your business, we have .......for card members like you to receive one thousand  dollars of complimentary life insurance', N'arrange', N'arranged', N'arranges', N'arranging', N'B', N'TH234   ', N'ee13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (54, N'AVCB ', N'A', N'Employees are........that due to the new government regulations. there is to be no smoking in the factory', N'reminded', N'respected', N'remembered', N'reacted', N'A', N'TH234   ', N'ef13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (55, N'AVCB ', N'A', N'MS. Galera gave a long...... in honor of the retiring vice-president', N'speak', N'speaker', N'speaking', N'speech', N'D', N'TH234   ', N'f013b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (56, N'AVCB ', N'A', N'Any person who is........ in volunteering his or her time for the campaign should send this office a letter of intent', N'interest', N'interested', N'interesting', N'interestingly', N'B', N'TH234   ', N'f113b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (57, N'AVCB ', N'A', N'Mr.Gonzales was very concerned.........the upcoming board of directors meeting', N'to', N'about', N'at ', N'upon', N'B', N'TH234   ', N'f213b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (58, N'AVCB ', N'A', N'The customers were told that no ........could be made on weekend nights because the restaurant was too busy', N'delays', N'cuisines', N'reservation', N'violations', N'C', N'TH234   ', N'f313b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (59, N'AVCB ', N'A', N'The sales representive''s presentation was difficult to understand ........ he spoke very quickly', N'because', N'althought', N'so that', N'than', N'A', N'TH234   ', N'f413b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (60, N'AVCB ', N'B', N'It has been predicted that an.......weak dollar will stimulate tourism in the United States', N'increased', N'increasingly', N'increases', N'increase', N'B', N'TH234   ', N'f513b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (61, N'AVCB ', N'B', N'The firm is not liable for damage resulting from circumstances.........its control.', N'beyond', N'above', N'inside', N'around', N'A', N'TH234   ', N'f613b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (62, N'AVCB ', N'B', N'Because of.......weather conditions, California has an advantage in the production of fruits and vegetables', N'favorite', N'favor', N'favorable', N'favorably', N'C', N'TH234   ', N'f713b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (63, N'AVCB ', N'B', N'On international shipments, all duties and taxes are paid by the..........', N'recipient', N'receiving', N'receipt', N'receptive', N'A', N'TH234   ', N'f813b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (64, N'AVCB ', N'B', N'Although the textbook gives a definitive answer,wise managers will look for........ own creative solutions', N'them', N'their', N'theirs', N'they', N'B', N'TH234   ', N'f913b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (65, N'AVCB ', N'B', N'Initial ....... regarding the merger of the companies took place yesterday at the Plaza Conference Center.', N'negotiations', N'dedications', N'propositions', N'announcements', N'A', N'TH234   ', N'fa13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (66, N'AVCB ', N'B', N'Please......... photocopies of all relevant docunments to this office ten days prior to your performance review date', N'emerge', N'substantiate', N'adapt', N'submit', N'D', N'TH234   ', N'fb13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (67, N'AVCB ', N'B', N'The auditor''s results for the five year period under study were .........the accountant''s', N'same', N'same as', N'the same', N'the same as', N'D', N'TH234   ', N'fc13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (68, N'AVCB ', N'B', N'.........has the marketing environment been more complex and subject to change', N'Totally', N'Negatively', N'Decidedly', N'Rarely', N'D', N'TH234   ', N'fd13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (69, N'AVCB ', N'B', N'All full-time staff are eligible to participate in the revised health plan, which becomes effective the first ......... the month.', N'of', N'to', N'from', N'for', N'A', N'TH234   ', N'fe13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (70, N'AVCB ', N'C', N'Contracts must be read........ before they are signed.', N'thoroughness', N'more thorough', N'thorough', N'thoroughly', N'D', N'TH234   ', N'ff13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (71, N'AVCB ', N'C', N'Passengers should allow for...... travel time to the airport in rush hour traffic', N'addition', N'additive', N'additionally', N'additional', N'D', N'TH234   ', N'0014b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (72, N'AVCB ', N'C', N'This fiscal year, the engineering team has worked well together on all phases ofproject.........', N'development', N'developed', N'develops', N'developer', N'A', N'TH234   ', N'0114b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (73, N'AVCB ', N'C', N'Mr.Dupont had no ....... how long it would take to drive downtown', N'knowledge', N'thought', N'idea', N'willingness', N'C', N'TH234   ', N'0214b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (74, N'AVCB ', N'C', N'Small company stocks usually benefit..........the so called January effect that cause the price of these stocks to rise between November and January', N'unless', N'from', N'to ', N'since', N'B', N'TH234   ', N'0314b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (75, N'AVCB ', N'C', N'It has been suggested that employees ........to work in their current positions until the quarterly review is finished.', N'continuity', N'continue', N'continuing', N'continuous', N'B', N'TH234   ', N'0414b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (76, N'AVCB ', N'C', N'It is admirable that Ms.Jin wishes to handle all transactions by........, but it might be better if several people shared the responsibility', N'she', N'herself', N'her', N'hers', N'B', N'TH234   ', N'0514b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (77, N'AVCB ', N'C', N'This new highway construction project will help the company.........', N'diversity', N'clarify', N'intensify', N'modify', N'A', N'TH234   ', N'0614b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (78, N'AVCB ', N'C', N'Ms.Patel has handed in an ........business plan to the director', N'anxious', N'evident', N'eager', N'outstanding', N'D', N'TH234   ', N'0714b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (79, N'AVCB ', N'C', N'Recent changes in heating oil costs have affected..........production of turniture', N'local', N'locality', N'locally', N'location', N'A', N'TH234   ', N'0814b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (80, N'MMTCB', N'A', N'Termiator là linh kiện dùng trong loại cáp mạng', N'Cáp quang', N'UTP và STP ', N'Xoắn đôi', N'Đồng trục', N'D', N'TH123   ', N'0914b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (81, N'MMTCB', N'A', N'Mạng không dây dùng loại sóng nào không bị ảnh hưởng bởi khoảng cách địa lý', N'Sóng radio', N'Sống hồng ngoại', N'Sóng viba', N'Song cực ngắn', N'A', N'TH123   ', N'0a14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (82, N'MMTCB', N'A', N'Đường truyền E1 gồm 32 kênh, trong đó sử dụng cho dữ liệu là:', N'32 kênh', N'31 kênh', N'30 kênh', N'24 kênh', N'C', N'TH123   ', N'0b14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (83, N'MMTCB', N'A', N'Mạng máy tính thường sử dụng loại chuyển mach', N'Gói (packet switch)', N'Kênh (Circuit switch)', N'Thông báo(message switch)', N'Tất cả đều đúng', N'A', N'TH123   ', N'0c14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (84, N'MMTCB', N'A', N'Cáp UTP hỗ trợ tôc độ truyền 100MBps là loại', N'Cat 3', N'Cat 4', N'Cat 5', N'Cat 6', N'C', N'TH123   ', N'0d14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (85, N'MMTCB', N'A', N'Thiết bị nào làm việc trong cấp vật lý (physical) ', N'Terminator', N'Hub', N'Repeater', N'Tất cả đều đúng', N'D', N'TH123   ', N'0e14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (86, N'MMTCB', N'A', N'Phương pháp dồn kênh phân chia tần số gọi là', N'FDM', N'WDM', N'TDM', N'CSMA', N'A', N'TH123   ', N'0f14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (87, N'MMTCB', N'A', N'Dịch vụ nào không sử dụng trong cấp data link', N'Xác nhận, có kết nối', N'Xác nhận, không kết nôi', N'Không xác nhận, có kết nối', N'Không xác nhận, không kết nối', N'C', N'TH123   ', N'1014b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (88, N'MMTCB', N'A', N'Nguyên nhân gây sai sót khi gửi/nhận dữ liệu trên mạng', N'Mất đồng bộ trong khi truyền', N'Nhiễu từ môi trường', N'Lỗi phần cứng hoặc phần mềm', N'Tất cả đều đúng ', N'D', N'TH123   ', N'1114b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (89, N'MMTCB', N'A', N'Để tránh sai sót khi truyền dữ liệu trong cấp data link', N'Đánh số thứ tự frame', N'Quản lý dữ liệu theo frame', N'Dùng vùng checksum', N'Tất cả đều đúng', N'D', N'TH123   ', N'1214b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (90, N'MMTCB', N'A', N'Quản lý lưu lượng đường truyền là chức năng của cấp', N'Presentation', N'Network', N'Data link', N'Physical', N'C', N'TH123   ', N'1314b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (91, N'MMTCB', N'A', N'Hoạt động của protocol Stop and Wait', N'Chờ một khoảng thời gian time-', N'Chờ 1 khoảng thời gian time-ou', N'Chờ nhận được ACK của frame tr', N'Không chờ mà gửi liên tiếp các', N'C', N'TH123   ', N'1414b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (92, N'MMTCB', N'A', N'Protocol nào tạo frame bằng phương pháp chèn kí tự', N'ADCCP', N'HDLC', N'SDLC', N'PPP', N'D', N'TH123   ', N'1514b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (93, N'MMTCB', N'A', N'Phương pháp nào được dủng trong việc phát hiện lỗi', N'Timer', N'Ack', N'Checksum', N'Tất cả đều đúng', N'C', N'TH123   ', N'1614b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (94, N'MMTCB', N'A', N'Kiểm soát lưu lượng (flow control) có nghĩa là', N'Thay đổi thứ tự truyền frame', N'Điều tiết tốc độ truyền frame', N'Thay đổi thời gian chờ time-ou', N'Điều chỉnh kích thước frame', N'B', N'TH123   ', N'1714b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (95, N'MMTCB', N'A', N'Khả năng nhận biết tình trạng đường truyền ( carrier sence) là', N'Xác định đường truyền tốt hay ', N'Có kết nối được hay không', N'Nhận biết có xung đột hay khôn', N'Đường truyền đang rảnh hay bận', N'C', N'TH123   ', N'1814b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (96, N'MMTCB', N'A', N'Mạng nào không có khả năng nhận biết tình trạng đường truyền (carrier sence)', N'ALOHA', N'CSMA', N'CSMA/CD', N'Tất cả đều đúng ', N'A', N'TH123   ', N'1914b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (97, N'MMTCB', N'A', N'Mạng nào có khả năng nhận biết xung đột (collision)', N'ALOHA', N'CSMA', N'CSMA/CD', N'Tất cả đều đúng', N'D', N'TH123   ', N'1a14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (98, N'MMTCB', N'A', N'Chuẩn mạng nào có khả năng pkhát hiện xung đột (collision) trong khi truyền', N'1-persistent CSMA', N'p-persistent CSMA', N'Non-persistent CSMA', N'CSMA/CD', N'D', N'TH123   ', N'1b14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (99, N'MMTCB', N'A', N'Loại mạng cục bộ nào dùng chuẩn CSMA/CD', N'Token-ring', N'Token-bus', N'Ethernet', N'ArcNet', N'C', N'TH123   ', N'1c14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (100, N'MMTCB', N'A', N'Mạng Ethernet được IEEE đưa vào chuẩn', N'IEEE 802.2', N'IEEE 802.3', N'IEEE 802.4', N'IEEE 802.5', N'B', N'TH123   ', N'1d14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (101, N'MMTCB', N'A', N'Chuẩn nào không dùng trong mạng cục bộ (LAN )', N'IEEE 802.3', N'IEEE 802.4', N'IEEE 802.5', N'IEEE 802.6', N'D', N'TH123   ', N'1e14b236-ab26-ec11-bf9c-9840bb00878c')
GO
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (102, N'MMTCB', N'A', N'Loại mạng nào dùng 1 máy tính làm Monitor để bảo trì mạng', N'Ethernet', N'Token-ring', N'Token-bus', N'Tất cả đều sai', N'B', N'TH123   ', N'1f14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (103, N'MMTCB', N'A', N'Loại mạng nào không có độ ưu tiên', N'Ethernet', N'Token-ring', N'Token-bus', N'Tất cả đều sai', N'D', N'TH123   ', N'2014b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (104, N'MMTCB', N'A', N'Loại mạng nào dùng 2 loại frame khác nhau trên đường truyền', N'Token-ring', N'Token-bus', N'Ethernet', N'Tất cả đều sai', N'A', N'TH123   ', N'2114b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (105, N'MMTCB', N'A', N'Vùng dữ liệu trong mạng Ethernet chứa tối đa', N'185 bytes', N'1500 bytes', N'8182 bytes', N'Không giới hạn', N'B', N'TH123   ', N'2214b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (106, N'MMTCB', N'A', N'Chọn câu sai:" Cầu nối (bridge) có thể kết nối các mạng có...."', N'Chiều dài frame khác nhau', N'Cấu trúc frame khác nhau', N'Tốc độ truyền khác nhau', N'Chuẩn khác nhau', N'A', N'TH123   ', N'2314b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (107, N'MMTCB', N'A', N'Mạng nào có tốc độ truyền lớn hơn 100Mbps', N'Fast Ethernet', N'Gigabit Ethernet', N'Ethernet', N'Tất cả đều đúng', N'B', N'TH123   ', N'2414b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (108, N'MMTCB', N'A', N'Mạng Ethernet sử dụng được loại cáp', N'Cáp quang', N'Xoắn đôi', N'Đồng trục', N'Tất cả đều đúgn', N'D', N'TH123   ', N'2514b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (109, N'MMTCB', N'A', N'Khoảng cách đường truyền tối đa mạng FDDI có thể đạt', N'1Km', N'10Km', N'100Km', N'1000Km', N'C', N'TH123   ', N'2614b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (110, N'MMTCB', N'A', N'Cấp network truyền nhận theo kiểu end-to-end vì nó quản lý dữ liệu', N'Giữa 2 đầu subnet', N'Giữa 2 máy tính trong mạng', N'Giữa 2 thiết bị trên đường tru', N'Giữa 2 đầu đường truyền', N'A', N'TH123   ', N'2714b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (111, N'MMTCB', N'A', N'Kiểu mạch ảo(virtual circuit) được dùng trong loại dịch vụ mạng', N'Có kết nối', N'Không kết nối', N'Truyền 1 chiều', N'Truyền 2 chiều', N'A', N'TH123   ', N'2814b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (112, N'MMTCB', N'A', N'Kiểu datagram trong cấp network', N'Chỉ tìm đường 1 lần khi tạo kế', N'Phải tìm đường riêng cho từng ', N'THông tin có sẵn trong packet,', N'Thông tin có sẵn trong router ', N'B', N'TH123   ', N'2914b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (113, N'MMTCB', N'A', N'Kiểm soát tắc nghẽn (congestion) là nhiệm vụ của cấp', N'Physical', N'Transport', N'Data link', N'Network', N'D', N'TH123   ', N'2a14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (114, N'MMTCB', N'A', N'Nguyên nhân dẫn đến tắt nghẻn (congestion) trên mạng', N'Tốc độ xử lý của router chậm', N'Buffers trong router nhỏ', N'Router có nhiều đường vào nhưn', N'Tất cả đều đúng', N'D', N'TH123   ', N'2b14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (115, N'MMTCB', N'A', N'Cấp appliation trong mô hình TCP/IP tương đương với cấp nào trong mô hình OSI', N'Session', N'Application', N'Presentation', N'Tất cả đều đúng', N'D', N'TH123   ', N'2c14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (116, N'MMTCB', N'A', N'Cấp nào trong mô hình mạng OSI tương đương với cấp Internet trong mô hình TCP/IP ', N'Network', N'Transport', N'Physical', N'Data link', N'A', N'TH123   ', N'2d14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (117, N'MMTCB', N'A', N'Chất lượng dịch vụ mạng không được đánh giá trên chỉ tiêu nào?', N'Thời gian thiết lập kết nối ng', N'Tỉ lệ sai sót rất nhỏ', N'Tốc độ đường truyền cao', N'Khả năng phục hồi khi có sự cố', N'A', N'TH123   ', N'2e14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (118, N'MMTCB', N'A', N'Kỹ thuật Multiplexing được dùng khi', N'Có nhiều kênh truyền hơn đường', N'Có nhiều đường truyền hơn kênh', N'Truyền dữ liệu số trên mạng đi', N'Truyền dữ liệu tương tự trên m', N'A', N'TH123   ', N'2f14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (119, N'MMTCB', N'A', N'Dịch vụ truyền Email sử dụng protocol nào?', N'HTTP', N'NNTP', N'SMTP', N'FTP', N'C', N'TH123   ', N'3014b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (120, N'MMTCB', N'A', N'Địa chỉ IP lớp B nằm trong phạm vi nào', N'192.0.0.0 - 223.0.0.0', N'127.0.0.0 - 191.0.0.0', N'128.0.0.0 - 191.0.0.0 ', N'1.0.0.0 - 126.0.0.0', N'C', N'TH123   ', N'3114b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (121, N'MMTCB', N'A', N'Subnet Mask nào sau đây chỉ cho tối đa 2 địa chỉ host', N'255.255.255.252', N'255.255.255.254', N'255.255.255.248', N'255.255.255.240', N'A', N'TH123   ', N'3214b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (122, N'MMTCB', N'A', N'Thành phần nào không thuộc socket', N'Port', N'Địa chỉ IP', N'Địa chỉ cấp MAC', N'Protocol cấp Transport', N'C', N'TH123   ', N'3314b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (123, N'MMTCB', N'A', N'Mục đích của Subnet Mask trong địa chỉ IP là', N'Xác định host của địa chỉ IP', N'Xác định vùng network của địa ', N'Lấy các bit trong vùng subnet ', N'Lấy các bit trong vùng địa chỉ', N'A', N'TH123   ', N'3414b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (124, N'MMTCB', N'A', N'Bước đầu tiên cần thực hiện để truyền dữ liệu theo ALOHA là', N'Chờ 1 thời gian ngẫu nhiên', N'Gửi tín hiệu tạo kết nối', N'Kiểm tra tình trạng đường truy', N'Lập tức truyền dữ liệu', N'D', N'TH123   ', N'3514b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (125, N'MMTCB', N'A', N'Cầu nối trong suốt hoạt động trong cấp nào', N'Data link', N'Physical', N'Network', N'Transport', N'A', N'TH123   ', N'3614b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (126, N'MMTCB', N'A', N'Tốc độ của đường truyền T1 là:', N'2048 Mbps', N'1544 Mbps', N'155 Mbps', N'56 Kbps', N'B', N'TH123   ', N'3714b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (127, N'MMTCB', N'A', N'Khi một dịch vụ trả lời ACK cho biết dữ liệu đã nhận được, đó là', N'Dịch vụ có xác nhận', N'Dịch vụ không xác nhận', N'Dịch vụ có kết nối', N'Dịch vụ không kết nối', N'A', N'TH123   ', N'3814b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (128, N'MMTCB', N'A', N'Loại frame nào được sử dụng trong mạng Token-ring', N'Monitor', N'Token', N'Data', N'Token và Data', N'D', N'TH123   ', N'3914b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (129, N'MMTCB', N'A', N'Thuật ngữ OSI là viết tắt bởi', N'Organization for Standard Inst', N'Organization for Standard Inte', N'Open Standard Institude', N'Open System Interconnection', N'D', N'TH123   ', N'3a14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (130, N'MMTCB', N'A', N'Trong mạng Token-ting, khi 1 máy nhận được Token', N'Nó phải truyền cho máy kế tron', N'Nó được quyền truyền dữ liệu', N'Nó được quyền giữ lại Token', N'Tất cả đều sai', N'B', N'TH123   ', N'3b14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (131, N'MMTCB', N'A', N'Trong mạng cục bộ, để xác định 1 máy trong mạng ta dùng địa chỉ', N'MAC', N'Socket', N'Domain', N'Port', N'A', N'TH123   ', N'3c14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (132, N'MMTCB', N'A', N'Thứ tự các cấp trong mô hình OSI', N'Application,Session,Transport,', N'Application, Transport, Networ', N'Application, Presentation,Sess', N'Application,Presentation,Sessi', N'D', N'TH123   ', N'3d14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (133, N'MMTCB', N'A', N'Cấp vật lý (physical) không quản lý', N'Mức điện áp', N'Địa chỉ vật lý', N'Mạch giao tiếp vật lý', N'Truyền các bit dữ liêu', N'B', N'TH123   ', N'3e14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (134, N'MMTCB', N'A', N'TCP sử dụng loại dịch vụ', N'Có kết nối, độ tin cậy cao', N'Có kết nối, độ tin cậy thấp', N'Không kết nối, độ tin cậy cao', N'Không kết nối, độ tin cậy thấp', N'A', N'TH123   ', N'3f14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (135, N'MMTCB', N'A', N'Địa chỉ IP bao gồm', N'Địa chỉ Network và địa chỉ hos', N'Địa chỉ physical và địa chỉ lo', N'Địa chỉ cấp MAC và và địa chỉ ', N'Địa chỉ hardware và địa chỉ so', N'A', N'TH123   ', N'4014b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (136, N'MMTCB', N'A', N'Chức năng cấp mạng (network) là', N'Mã hóa và định dạng dữ liệu', N'Tìm đường và kiểm soát tắc ngh', N'Truy cập môi trường mạng', N'Kiểm soát lỗi và kiểm soát lưu', N'B', N'TH123   ', N'4114b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (137, N'MMTCB', N'A', N'Mạng CSMA/CD làm gì', N'Truyền Token trên mạng hình sa', N'Truyền Token trên mạng dạng Bu', N'Chia packet ra thành từng fram', N'Truy cập đường truyền và truyề', N'D', N'TH123   ', N'4214b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (138, N'MMTCB', N'A', N'Tiền thân của mạng Internet là', N'Intranet', N'Ethernet', N'Arpanet', N'Token-bus', N'C', N'TH123   ', N'4314b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (139, N'MMTCB', N'A', N'Khi 1 cầu nối ( bridge) nhận được 1 framechưa biết thông tin về địa chỉ máy nhận, nó sẽ', N'Xóa bỏ frame này', N'Gửi trả lại máy gốc', N'Gửi đến mọi ngõ ra còn lại', N'Giảm thời gian sống của frame ', N'C', N'TH123   ', N'4414b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (140, N'MMTCB', N'A', N'Chức năng của cấp Network là', N'Tìm đường', N'Mã hóa dữ liệu', N'Tạo địa chỉ vật lý', N'Kiểm soát lưu lượng', N'A', N'TH123   ', N'4514b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (141, N'MMTCB', N'B', N'Sự khác nhau giữa địa chỉ cấp Data link và Network là', N'Địa chỉ cấp Data link có kích ', N'Địa chỉ cấp Data link là đia c', N'Địa chỉ cấp Data Link là địa c', N'Địa chỉ Data link cấu hình the', N'B', N'TH123   ', N'4614b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (142, N'MMTCB', N'B', N'Kỹ thuật nào không sử dụng được trong việc kiểm soát lưu lượng(flow control)', N'Ack', N'Buffer', N'Windowing', N'Multiplexing', N'D', N'TH123   ', N'4714b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (143, N'MMTCB', N'B', N'Cấp cao nhất trong mô hình mạng OSI là', N'Transport', N'Physical', N'Network', N'Application', N'D', N'TH123   ', N'4814b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (144, N'MMTCB', N'B', N'Tại sao mạng máy tình dùng mô hình phân cấp', N'Để mọi người sử dụng cùng 1 ứn', N'Để phân biệt giữa chuẩn mạng v', N'Giảm độ phức tạp trong việc th', N'Các cấp khác không cần sửa đổi', N'D', N'TH123   ', N'4914b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (145, N'MMTCB', N'B', N'Router làm gì để giảm tăc nghẽn (congestion)', N'Nén dữ liệu', N'Lọc bớt dữ liệu theo địa chỉ v', N'Lọc bớt dữ liệu theo địa chỉ l', N'Cấm truyền dữ liệu broadcasr', N'D', N'TH123   ', N'4a14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (146, N'MMTCB', N'B', N'Byte đầu của 1 IP có giá trị 222, địa chỉ này thuộc lớp địa chỉ nào', N'Lớp A', N'Lớp B', N'Lớp C', N'Lớp D', N'C', N'TH123   ', N'4b14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (147, N'MMTCB', N'B', N'Chọn câu đúng đối với switch của mạng LAN', N'Là 1 cầu nối tốc độ cao', N'Nhận data từ 1 cổng và xuất ra', N'Nhận data từ 1 cổng và xuất ra', N'Nhận data từ 1 cổng và xuất ra', N'D', N'TH123   ', N'4c14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (148, N'MMTCB', N'B', N'Thuật ngữ nào cho biết loại mạng chỉ truyền được  chiều tại 1 thời điểm', N'Half duplex', N'Full duplex', N'Simplex', N'Monoplex', N'A', N'TH123   ', N'4d14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (149, N'MMTCB', N'B', N'Protocol nghĩa là', N'Tập các chuẩn truyền dữ liệu', N'Tập các cấp mạng trong mô hình', N'Tập các chức năng của từng cấp', N'Tập các qui tắc và cấu trúc dữ', N'D', N'TH123   ', N'4e14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (150, N'MMTCB', N'B', N'Truyền dữ liệu theo kiểu có kết nối không cần thực hiện việc', N'Hủy kết nối', N'Tạo kết nối', N'Truyền dữ liệu', N'Tìm đường cho từng gói tin', N'D', N'TH123   ', N'4f14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (151, N'MMTCB', N'B', N'Byte đầu của địa chỉ IP lớp E nằm trong phạm vi', N'128 - 191', N'192 - 232 ', N'224 - 239 ', N'240 - 247', N'D', N'TH123   ', N'5014b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (152, N'MMTCB', N'B', N'Khi truyền đi chuỗi "VIET NAM" nhưng nhận được chuỗi"MAN TEIV ". Cần phải hiệu chỉnh các protocol trong cấp nào để truyền chính xác', N'Session', N'Transport', N'Application', N'Presentation', N'B', N'TH123   ', N'5114b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (153, N'MMTCB', N'B', N'Tên cáp UTP dùng torng mạng Fast Ethernet là', N'100BaseF', N'100Base2', N'100BaseT', N'100Base5', N'C', N'TH123   ', N'5214b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (154, N'MMTCB', N'B', N'Tốc độ truyền của mạng Ethernet là', N'1 Mbps', N'10 Mbps', N'100 Mbps', N'1000 Mbps', N'B', N'TH123   ', N'5314b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (155, N'MMTCB', N'B', N'Dịch vụ mạng thường được phân chia thành', N'Dịch vụ không kết nối và có kế', N'Dich vụ có xác nhận và không x', N'Dịch vụ có độ tin cậy cao và c', N'Tất cả đều đúng', N'D', N'TH123   ', N'5414b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (156, N'MMTCB', N'B', N'Đơn vị truyền dữ liệu trong cấp Network gọi là', N'Bit', N'Frame', N'Packet', N'Segment', N'C', N'TH123   ', N'5514b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (157, N'MMTCB', N'B', N'Protocol nào trong mạng TCP/IP chuyển đổi địa chỉ vật lý thành địa chỉ IP', N'IP', N'ARP', N'ICMP', N'RARP', N'D', N'TH123   ', N'5614b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (158, N'MMTCB', N'B', N'Đầu nới AUI dùng cho loại cáp nào?', N'Đồng trục', N'Xoắn đôi', N'Cáp quang', N'Tất cả đều đúng', N'A', N'TH123   ', N'5714b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (159, N'MMTCB', N'B', N'Subnet mask chuẩn của địa chỉ IP lớp B là', N'255.0.0.0', N'255.255.0.0', N'255.255.255.0', N'255.255.255.255', N'B', N'TH123   ', N'5814b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (160, N'MMTCB', N'B', N'Lý do nào khiến người ta chọn protocol TCP hơn là UDP', N'Không ACK', N'Dễ sử dụng', N'Độ tin cậy', N'Không kết nối', N'C', N'TH123   ', N'5914b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (161, N'MMTCB', N'B', N'Nhược điểm của dịch vụ có kết nối so với không kết nối', N'Độ tin cậy', N'Thứ tự nhận dữ liệu không đúng', N'Đường truyền không thay đổi', N'Đường truyền thay đổi liên tục', N'C', N'TH123   ', N'5a14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (162, N'MMTCB', N'B', N'Cấp Data link không thực hiện chức năng nào?', N'Kiểm soát lỗi', N'Địa chỉ vật lý', N'Kiểm soát lưu lượng', N'Thiết lập kết nối', N'D', N'TH123   ', N'5b14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (163, N'MMTCB', N'B', N'Cầu nối (bridge)dựa vào thông tin nào để truyền tiếp hoặc hủy bỏ 1 frame', N'Điạ chỉ nguồn', N'Địa chỉ đích', N'Địa chỉ mạng', N'Tất cả đều đúng', N'C', N'TH123   ', N'5c14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (164, N'MMTCB', N'B', N'Chuẩn nào sử dụng trong cấp presentation?', N'UTP và STP', N'SMTP và HTTP', N'ASCII và EBCDIC', N'TCP và UDP', N'C', N'TH123   ', N'5d14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (165, N'MMTCB', N'B', N'Đơn vị truyền dữ liệu giữa các cấp trong mạng theo thứ tự', N'bit,frame,packet,data', N'bit,packet,frame,data', N'data,frame,packet,bit', N'data,bit,packet,frame', N'A', N'TH123   ', N'5e14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (166, N'MMTCB', N'B', N'Mạng Ethernet do cơ quan nào phát minh', N'ANSI', N'ISO', N'IEEE', N'XEROX', N'D', N'TH123   ', N'5f14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (167, N'MMTCB', N'B', N'Chiều dài loại cáp nào tối đa 100 m? ', N'10Base2', N'10Base5', N'10BaseT', N'10BaseF', N'C', N'TH123   ', N'6014b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (168, N'MMTCB', N'B', N'Địa chỉ IP 100.150.200.250 có nghĩa là', N'Địa chỉ network 100, địa chỉ h', N'Địa chỉ network 100.150, địa c', N'Địa chỉ network 100.150.200, đ', N'Tất cả đều sai', N'D', N'TH123   ', N'6114b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (169, N'MMTCB', N'B', N'Switching hun khác hub thông thường ở chỗ nó làm', N'Giảm collision trên mạng', N'Tăng collision trên mạng', N'Giảm congestion trên mạng', N'Tăng congestion trên mạng', N'A', N'TH123   ', N'6214b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (170, N'MMTCB', N'B', N'Loại cáp nào chỉ truyền dữ liệu 1 chiều', N'Cáp quang', N'Xoắn đôi', N'Đồng trục', N'Tất cả đều đúng', N'A', N'TH123   ', N'6314b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (171, N'MMTCB', N'B', N'Thiết bị Modem dùng để', N'Tách và ghép tín hiệu', N'Nén và gải nén tín hiệu', N'Mã hóa và giải mã tín hiệu', N'Điều chế và giải điều chế tín ', N'D', N'TH123   ', N'6414b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (172, N'MMTCB', N'B', N'Việc cấp phát kênh truyền áp dụng cho loại mạng', N'Peer to peer', N'Point to point', N'Broadcast', N'Multiple Access', N'C', N'TH123   ', N'6514b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (173, N'MMTCB', N'B', N'Mạng nào dùng phương pháp mã hóa Manchester Encoding', N'Ethernet', N'Token-ring', N'Token-bus', N'Tất cả đều đúng ', N'D', N'TH123   ', N'6614b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (174, N'MMTCB', N'B', N'Phương pháp tìm đường có tính đến thời gian trễ', N'Tìm đường theo chiều sâu', N'Tìm đường theo chiều rộng', N'Tìm đường theo vector khoảng c', N'Tìm đường theo trạng thái đườn', N'D', N'TH123   ', N'6714b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (175, N'MMTCB', N'B', N'Chuẩn mạng nào khi có dữ liệu không truyền ngay mà chờ 1 thời gian ngẫu nhiên?', N'1-presistent CSMA', N'p-presistent CSMA', N'Non-presistent CSMA', N'CSMA/CD', N'C', N'TH123   ', N'6814b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (176, N'MMTCB', N'B', N'Phương pháp chèn bit (bit stuffing) được dùng để', N'Phân biệt đầu và cuối frame', N'Bổ sung cho đủ kích thước fram', N'Phân cách nhiều bit 0 bằng bit', N'Biến đổi dạng dữ liệu 8 bit ra', N'A', N'TH123   ', N'6914b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (177, N'MMTCB', N'B', N'Để chống nhiễu trên đường truyền tốt nhất, nên dùng loại cáp:', N'Xoắn đôi', N'Đồng trục', N'Cáp quang', N'Mạng không dây', N'C', N'TH123   ', N'6a14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (178, N'MMTCB', N'B', N'Phần mềm gửi/nhận thư điện tử thuộc cấp nào trong mô hình OSI', N'Data link', N'Network', N'Application', N'Presentation', N'C', N'TH123   ', N'6b14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (179, N'MMTCB', N'B', N'Chức năng của thiết bị Hub trong mạng LAN', N'Mã hóa tín hiệu', N'Triệt tiêu tín hiệu', N'Phân chia tín hiệu', N'Điều chế tín hiếu', N'C', N'TH123   ', N'6c14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (180, N'MMTCB', N'B', N'Switch là thiết bị mạng làm việc tương tự như', N'Hub', N'Repeater', N'Router', N'Bridge', N'D', N'TH123   ', N'6d14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (181, N'MMTCB', N'C', N'Thiết bị nào làm việc trong cấp Network', N'Bridge', N'Repeater', N'Router', N'Gateway', N'C', N'TH123   ', N'6e14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (182, N'MMTCB', N'C', N'Thiết bị nào cần có bộ nhớ làm buffer', N'Hub', N'Switch', N'Repeater', N'Router', N'D', N'TH123   ', N'6f14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (183, N'MMTCB', N'C', N'Luật 5-4-3 cho phép tối đa', N'5 segment trong 1 mạng', N'5 repeater trong 1 mạng', N'5 máy tính trong 1 mạng', N'5 máy tính trong 1 segment', N'A', N'TH123   ', N'7014b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (184, N'MMTCB', N'C', N'Thiết bị nào có thể thêm vào mạng LAN mà không sợ vi phạm luật 5-4-3', N'Router', N'Repeater', N'Máy tính', N'Tất cả đều đúng', N'A', N'TH123   ', N'7114b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (185, N'MMTCB', N'C', N'Thêm thiết bị nào vào mạng có thể qui phạm luật 5-4-3', N'Router', N'Repeater', N'Bridge', N'Tất cả đều đúng', N'B', N'TH123   ', N'7214b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (186, N'MMTCB', N'C', N'Mạng nào cóxảy ra xung đột (collision) trên đường truyền', N'Ethernet', N'Token-ring', N'Token-bus', N'Tất cả đều sai', N'A', N'TH123   ', N'7314b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (187, N'MMTCB', N'C', N'Từ "Broad" trong tên cáp 10Broad36 viết tắt bởi', N'Broadcast', N'Broadbase', N'Broadband', N'Broadway', N'C', N'TH123   ', N'7414b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (188, N'MMTCB', N'C', N'Protocol nào sử dụng trong cấp Network', N'IP', N'TCP', N'UDP', N'FTP', N'A', N'TH123   ', N'7514b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (189, N'MMTCB', N'C', N'Protocol nào torng cấp Transport cung cấp dịch vụ không kết nối', N'IP', N'TCP', N'UDP', N'FTP', N'C', N'TH123   ', N'7614b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (190, N'MMTCB', N'C', N'Protocol nào trong cấp Transport dùng kiểu dịch vụ có kết nối?', N'IP', N'TCP', N'UDP', N'FTP', N'B', N'TH123   ', N'7714b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (191, N'MMTCB', N'C', N'Địa chỉ IP được chia làm mấy lớp', N'2', N'3', N'4', N'5', N'D', N'TH123   ', N'7814b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (192, N'MMTCB', N'C', N'Chức năng nào không phải của cấp Network', N'Tìm đường', N'Địa chỉ logic', N'Kiểm soát tắc nghẽn', N'Chất lượng dịch vụ', N'B', N'TH123   ', N'7914b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (193, N'MMTCB', N'C', N'Phương pháp chèn kí tự dùng để', N'Phân cách các frame', N'Phân biệt dữ liệu và ký tự điề', N'Nhận diện đầu cuối frame', N'Bổ sung cho đủ kich thước fram', N'B', N'TH123   ', N'7a14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (194, N'MMTCB', N'C', N'Kỹ thuật truyền nào mã hóa trực tiếp dữ liệu ra đường truyền không cần sóng mang', N'Broadcast', N'Digital', N'Baseband', N'Broadband', N'C', N'TH123   ', N'7b14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (195, N'MMTCB', N'C', N'Sóng viba sử dụng băng tần', N'SHF', N'LF và MF', N'UHF và VHF', N'Tất cả đều đúng', N'D', N'TH123   ', N'7c14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (196, N'MMTCB', N'C', N'Sóng viba bị ảnh hưởng bời', N'Trời mưa', N'Sấm chớp', N'Giông bão', N'Ánh sáng mặt trời', N'A', N'TH123   ', N'7d14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (197, N'MMTCB', N'C', N'Đường dây trung kế trong mạng điện thoại sử dụng', N'Tín hiệu số', N'Kỹ thuật dồn kênh', N'Cáp quang, cáp đồng và viba', N'Tất cả đêu đúng', N'D', N'TH123   ', N'7e14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (198, N'MMTCB', N'C', N'Cáp quang dùng công nghệ dồn kênh nào', N'TDM', N'FDM', N'WDM', N'CDMA', N'C', N'TH123   ', N'7f14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (199, N'MMTCB', N'C', N'Nhược điểm của phương pháp chèn ký tự', N'Giảm tốc độ đường truyền', N'Tăng phí tổn đường truyền', N'Mất đồng bộ frame', N'Không nhận diện được frame', N'B', N'TH123   ', N'8014b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (200, N'MMTCB', N'C', N'Mất đồng bộ frame xảy ra đối với phương pháp', N'Chèn bit', N'Đếm ký tự', N'Chèn ký tự', N'Tất cả đều đúng', N'B', N'TH123   ', N'8114b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (201, N'MMTCB', N'C', N'Mạng nào dùng công nghệ Token-bus', N'FDDI', N'CDDI', N'Fast Ethernet', N'100VG-AnyLAN', N'D', N'TH123   ', N'8214b236-ab26-ec11-bf9c-9840bb00878c')
GO
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (202, N'MMTCB', N'C', N'Thiết bị nào tự trao đổi thông tin lẫn nhau để quản lý mạng', N'Hub', N'Bridge', N'Router', N'Repeater', N'C', N'TH123   ', N'8314b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (203, N'MMTCB', N'C', N'Tần số sóng điện từ dùng trong mạng vô tuyến sắp theo thứ tự tăng dần', N'Radio,viba,hồng ngoại', N'Radio,hồng ngoại,viba', N'Hồng ngoại,viba,radio', N'Viba,radio,hồng ngoại', N'A', N'TH123   ', N'8414b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (204, N'MMTCB', N'C', N'Đường dây hạ kế (local loop) trong mạch điện thoại dùng tín hiệu', N'Digital', N'Analog', N'Manchester', N'T1 hoặc E1', N'B', N'TH123   ', N'8514b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (205, N'MMTCB', N'C', N'Để tránh nhận trùng dữ liệu người ta dùng phương pháp', N'Đánh số thứ tự các frame', N'Quy định kích thước frame cố đ', N'Chờ nhận ACK mới gửi frame kế ', N'So sánh và loại bỏ các frame g', N'A', N'TH123   ', N'8614b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (206, N'MMTCB', N'C', N'Cơ chế Timer dùng để', N'Đo thời gian chơ frame', N'Tránh tình trạng mất frame', N'Chọn thời điểm truyền frame', N'Kiểm soát thòi gian truyền fra', N'A', N'TH123   ', N'8714b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (207, N'MMTCB', N'C', N'Cấp nào trong mô hình OSI quan tâm tới topology mạng', N'Transport', N'Network', N'Data link', N'Physical', N'B', N'TH123   ', N'8814b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (208, N'MMTCB', N'C', N'Loại mạng nào sử dụng trên WAN', N'Ethernet và Token-bus', N'ISDN và Frame relay', N'Token-ring và FDDI', N'SDLC và HDLC', N'A', N'TH123   ', N'8914b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (209, N'MMTCB', N'C', N'Repeater nhiều port là tên gọi của', N'Hub', N'Host', N'Bridge', N'Router', N'A', N'TH123   ', N'8a14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (210, N'MMTCB', N'C', N'Đơn vị đo tốc độ đường truyền', N'bps(bit per second)', N'Bps(Byte per second)', N'mps(meter per second)', N'hertz (ccle per second)', N'A', N'TH123   ', N'8b14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (211, N'MMTCB', N'C', N'Repeater dùng để', N'Lọc bớt dữ liệu trên mạng', N'Tăng tốc độ lưu thông trên mạn', N'Tăng thời gian trễ trên mạng', N'Mở rộng chiều dài đường truyền', N'D', N'TH123   ', N'8c14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (212, N'MMTCB', N'C', N'Cáp đồng trục (coaxial)', N'Có 4 đôi dây', N'Không cần repeater', N'Truyền tín hiệu ánh sáng', N'Chống nhiễu tốt hơn UTP', N'D', N'TH123   ', N'8d14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (213, N'MMTCB', N'C', N'Câp Data link ', N'Truyền dữ liệu cho các cấp khá', N'Cung cấp dịch vụ cho chương tr', N'Nhận tín hiệu yếu,lọc,khuếch đ', N'Bảo đảm đường truyền dữ liệu t', N'D', N'TH123   ', N'8e14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (214, N'MMTCB', N'C', N'Địa chỉ IP còn gọi là', N'Địa chĩ vật lý', N'Địa chỉ luận lý', N'Địa chỉ thập phân', N'Địa chỉ thập lục phân', N'B', N'TH123   ', N'8f14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (215, N'MMTCB', N'C', N'Cấp Presentation', N'Thiết lập, quản lý và kết thúc', N'Hướng dẫn cách mô tả hình ảnh,', N'Cung cấp dịch vụ truyền dữ liệ', N'Hỗ trợ việc truyền thông trong', N'C', N'TH123   ', N'9014b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (216, N'MMTCB', N'C', N'Tập các luật để định dạng và truyền dữ liệu gọi là', N'Qui luật (rule)', N'Nghi thức (protocol)', N'Tiêu chuẩn (standard)', N'Mô hình (model)', N'B', N'TH123   ', N'9114b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (217, N'MMTCB', N'C', N'Tại sao cần có tiêu chuẩn về mang', N'Định hướng phát triển phần cứn', N'LAN,MAN và WAN sử dụng các thi', N'Kết nối mạng giữa các quôc gia', N'Tương thích về công nghệ để tr', N'D', N'TH123   ', N'9214b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (218, N'MMTCB', N'C', N'Dữ liệu truyền trên mạng bằng', N'Mã ASCII', N'Số nhị phân', N'Không và một', N'Xung điện áp', N'D', N'TH123   ', N'9314b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (219, N'MMTCB', N'C', N'Mạng CSMA/CD', N'Kiểm tra để bảo đảm dữ liệu tr', N'Kiểm tra đường truyền nếu rảnh', N'Chờ 1 thời gian ngẫu nhiên rồi', N'Tất cả đều đúng', N'B', N'TH123   ', N'9414b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (220, N'MMTCB', N'C', N'Địa chỉ MAC ', N'Gồm có 32 bit', N'Còn gọi là địa chỉ logic', N'Nằm trong cấp Network', N'Dùng để phân biệt các máy tron', N'D', N'TH123   ', N'9514b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (223, N'MMTCB', N'B', N'isuydsuy', N'ksdyfus', N'sjflds', N'sdjfls', N'sidfuos', N'B', N'TH123   ', N'9614b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (224, N'LTW  ', N'A', N'kjck', N'kjdks', N'kdjfhsk', N'jdhf', N'kxjdfk', N'C', N'TH123   ', N'9714b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[BODE] ([CAUHOI], [MAMH], [TRINHDO], [NOIDUNG], [A], [B], [C], [D], [DAP_AN], [MAGV], [rowguid]) VALUES (225, N'AVCB ', N'A', N'Cháu lên ba cháu vô mẫu giáo, cô khen cháu cháu không khóc nhè.', N'1', N'2', N'3', N'4', N'C', N'TH123   ', N'9814b236-ab26-ec11-bf9c-9840bb00878c')
GO
INSERT [dbo].[COSO] ([MACS], [TENCS], [DIACHI], [rowguid]) VALUES (N'CS1', N'CO SO 1 ', N'11 Nguyễn Đình Chiểu Phường Đakao Q1', N'f96b3952-801e-ec11-bf7a-9840bb00878c')
INSERT [dbo].[COSO] ([MACS], [TENCS], [DIACHI], [rowguid]) VALUES (N'CS2', N'CO SO 2', N'Số 9 Man Thiện , quận 9', N'fa6b3952-801e-ec11-bf7a-9840bb00878c')
GO
INSERT [dbo].[GIAOVIEN] ([MAGV], [HO], [TEN], [DIACHI], [MAKH], [rowguid]) VALUES (N'123     ', N'NAM', N'NGUYEN', N'', N'CNTT    ', N'ce5680e2-e028-ec11-bfa2-9840bb00878c')
INSERT [dbo].[GIAOVIEN] ([MAGV], [HO], [TEN], [DIACHI], [MAKH], [rowguid]) VALUES (N'1234    ', N'NAM', N'NGUYEN', N'', N'CNTT    ', N'dad9fc22-e128-ec11-bfa2-9840bb00878c')
INSERT [dbo].[GIAOVIEN] ([MAGV], [HO], [TEN], [DIACHI], [MAKH], [rowguid]) VALUES (N'191     ', N'NAM', N'NGUYEN HAI', N'', N'CNTT    ', N'48f0883a-e128-ec11-bfa2-9840bb00878c')
INSERT [dbo].[GIAOVIEN] ([MAGV], [HO], [TEN], [DIACHI], [MAKH], [rowguid]) VALUES (N'456     ', N'TENCOSO', N'HOCOSO', N'', N'VT      ', N'b785ff79-e128-ec11-bfa2-9840bb00878c')
INSERT [dbo].[GIAOVIEN] ([MAGV], [HO], [TEN], [DIACHI], [MAKH], [rowguid]) VALUES (N'543     ', N'TEN', N'HO', N'', N'VT      ', N'9957255b-e128-ec11-bfa2-9840bb00878c')
INSERT [dbo].[GIAOVIEN] ([MAGV], [HO], [TEN], [DIACHI], [MAKH], [rowguid]) VALUES (N'COSO2   ', N'CO SO', N'TEST', N'ASDF', N'CNTT    ', N'3a004607-2d58-ec11-802b-9840bb00878c')
INSERT [dbo].[GIAOVIEN] ([MAGV], [HO], [TEN], [DIACHI], [MAKH], [rowguid]) VALUES (N'nam123  ', N'ad', N'zxc', N'fasd', N'CNTT    ', N'c69b2bde-3151-ec11-8019-9840bb00878c')
INSERT [dbo].[GIAOVIEN] ([MAGV], [HO], [TEN], [DIACHI], [MAKH], [rowguid]) VALUES (N'NAM1905 ', N'NAM', N'NGUYEN', N'48 MAN THIEN', N'CNTT    ', N'84888575-5850-ec11-8017-9840bb00878c')
INSERT [dbo].[GIAOVIEN] ([MAGV], [HO], [TEN], [DIACHI], [MAKH], [rowguid]) VALUES (N'nam321  ', N'ad', N'zxc', N'fasd', N'CNTT    ', N'9b16d705-3251-ec11-8019-9840bb00878c')
INSERT [dbo].[GIAOVIEN] ([MAGV], [HO], [TEN], [DIACHI], [MAKH], [rowguid]) VALUES (N'nam32131', N'ad', N'zxc', N'fasd', N'CNTT    ', N'd11a2580-3251-ec11-8019-9840bb00878c')
INSERT [dbo].[GIAOVIEN] ([MAGV], [HO], [TEN], [DIACHI], [MAKH], [rowguid]) VALUES (N'nam3221 ', N'ad', N'zxc', N'fasd', N'CNTT    ', N'c3ed132d-3251-ec11-8019-9840bb00878c')
INSERT [dbo].[GIAOVIEN] ([MAGV], [HO], [TEN], [DIACHI], [MAKH], [rowguid]) VALUES (N'TH101   ', N'KIEU DAC', N'THIEN', N'9,3A, Q.BINH TAN', N'CNTT    ', N'b713b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[GIAOVIEN] ([MAGV], [HO], [TEN], [DIACHI], [MAKH], [rowguid]) VALUES (N'TH123   ', N'PHAN VAN ', N'HAI', N'15/72 LE VAN THO F8 GO VAP', N'CNTT    ', N'b813b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[GIAOVIEN] ([MAGV], [HO], [TEN], [DIACHI], [MAKH], [rowguid]) VALUES (N'TH234   ', N'DAO VAN ', N'TUYET', N'14/7 BUI DINH TUY TAN BINH', N'CNTT    ', N'b913b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[GIAOVIEN] ([MAGV], [HO], [TEN], [DIACHI], [MAKH], [rowguid]) VALUES (N'TH657   ', N'PHAN HONG', N'NGOC', N'TTTTT', N'VT      ', N'ba13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[GIAOVIEN] ([MAGV], [HO], [TEN], [DIACHI], [MAKH], [rowguid]) VALUES (N'tran    ', N'tran', N'test', N'48', N'VT      ', N'393d425b-5e50-ec11-8017-9840bb00878c')
INSERT [dbo].[GIAOVIEN] ([MAGV], [HO], [TEN], [DIACHI], [MAKH], [rowguid]) VALUES (N'TRUONG19', N'TRUONG', N'TEST', N'ASD', N'CNTT    ', N'5da9b96c-2c58-ec11-802b-9840bb00878c')
GO
INSERT [dbo].[GIAOVIEN_DANGKY] ([MAGV], [MAMH], [MALOP], [TRINHDO], [NGAYTHI], [LAN], [SOCAUTHI], [THOIGIAN], [rowguid]) VALUES (N'TH234   ', N'CSDL ', N'TH04    ', N'A', CAST(N'2021-10-26T00:00:00.000' AS DateTime), 2, 10, 60, N'9b14b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[GIAOVIEN_DANGKY] ([MAGV], [MAMH], [MALOP], [TRINHDO], [NGAYTHI], [LAN], [SOCAUTHI], [THOIGIAN], [rowguid]) VALUES (N'123     ', N'MMTCB', N'TH04    ', N'A', CAST(N'2021-12-08T20:01:00.000' AS DateTime), 1, 10, 15, N'f30c06ba-2658-ec11-802b-9840bb00878c')
INSERT [dbo].[GIAOVIEN_DANGKY] ([MAGV], [MAMH], [MALOP], [TRINHDO], [NGAYTHI], [LAN], [SOCAUTHI], [THOIGIAN], [rowguid]) VALUES (N'TH101   ', N'MMTCB', N'TH04    ', N'A', CAST(N'2021-12-08T20:19:00.000' AS DateTime), 2, 10, 15, N'e6760455-2958-ec11-802b-9840bb00878c')
INSERT [dbo].[GIAOVIEN_DANGKY] ([MAGV], [MAMH], [MALOP], [TRINHDO], [NGAYTHI], [LAN], [SOCAUTHI], [THOIGIAN], [rowguid]) VALUES (N'TH657   ', N'MMTCB', N'TH08    ', N'A', CAST(N'2021-12-08T22:00:00.000' AS DateTime), 1, 20, 60, N'9a14b236-ab26-ec11-bf9c-9840bb00878c')
GO
INSERT [dbo].[KHOA] ([MAKH], [TENKH], [MACS], [rowguid]) VALUES (N'CB      ', N'CO BAN', N'CS1', N'0b1a0596-3558-ec11-802b-9840bb00878c')
INSERT [dbo].[KHOA] ([MAKH], [TENKH], [MACS], [rowguid]) VALUES (N'CNTT    ', N'Công nghệ thông tin', N'CS1', N'036c3952-801e-ec11-bf7a-9840bb00878c')
INSERT [dbo].[KHOA] ([MAKH], [TENKH], [MACS], [rowguid]) VALUES (N'VT      ', N'Viễn thông', N'CS2', N'046c3952-801e-ec11-bf7a-9840bb00878c')
GO
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKH], [rowguid]) VALUES (N'TH04    ', N'TIN HOC 2004', N'CNTT    ', N'0a6c3952-801e-ec11-bf7a-9840bb00878c')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKH], [rowguid]) VALUES (N'TH05    ', N'TIN HOC 2005', N'CNTT    ', N'0b6c3952-801e-ec11-bf7a-9840bb00878c')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKH], [rowguid]) VALUES (N'TH06    ', N'TIN HOC 2006', N'CNTT    ', N'0c6c3952-801e-ec11-bf7a-9840bb00878c')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKH], [rowguid]) VALUES (N'TH07    ', N'TIN HOC 2007', N'CNTT    ', N'0d6c3952-801e-ec11-bf7a-9840bb00878c')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKH], [rowguid]) VALUES (N'TH08    ', N'TIN HOC 2008', N'CNTT    ', N'0e6c3952-801e-ec11-bf7a-9840bb00878c')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKH], [rowguid]) VALUES (N'TH09    ', N'TIN HOC 2009', N'CNTT    ', N'3fe5287c-3558-ec11-802b-9840bb00878c')
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKH], [rowguid]) VALUES (N'VT04    ', N'DET MAY 2004', N'VT      ', N'096c3952-801e-ec11-bf7a-9840bb00878c')
GO
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [rowguid]) VALUES (N'AVCB ', N'ANH VAN CAN BAN', N'af13b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [rowguid]) VALUES (N'CSDL ', N'CO SO DU LIEU', N'b013b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [rowguid]) VALUES (N'CTDL ', N'CAU TRUC DU LIEU', N'b113b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [rowguid]) VALUES (N'HQT  ', N'HE QUAN TRI CSDL', N'b213b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [rowguid]) VALUES (N'KTTSL', N'KY THUAT TRUYEN SO LIEU', N'b313b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [rowguid]) VALUES (N'LTMCB', N'LAP TRINH MANG CO BAN', N'b413b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [rowguid]) VALUES (N'LTW  ', N'LAP TRINH TREN WINDOW', N'b513b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [rowguid]) VALUES (N'MMTCB', N'MANG MAY TINH CAN BAN', N'b613b236-ab26-ec11-bf9c-9840bb00878c')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [rowguid]) VALUES (N'TEST ', N'TEST', N'225c2e78-3258-ec11-802b-9840bb00878c')
INSERT [dbo].[MONHOC] ([MAMH], [TENMH], [rowguid]) VALUES (N'TEST2', N'TESTT', N'c5c8695a-3558-ec11-802b-9840bb00878c')
GO
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [NGAYSINH], [DIACHI], [MALOP], [MATKHAU], [rowguid]) VALUES (N'001     ', N'LE VAN ', N'THANH', CAST(N'1985-03-06T00:00:00.000' AS DateTime), N'23/5 PHUNG KHAC KHOAN F3 Q3', N'TH04    ', N'001', N'0f6c3952-801e-ec11-bf7a-9840bb00878c')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [NGAYSINH], [DIACHI], [MALOP], [MATKHAU], [rowguid]) VALUES (N'002     ', N'DAO TRONG', N'KHAI', CAST(N'1979-08-19T00:00:00.000' AS DateTime), N'15/72 LE VAN THO F8 GOVAP', N'TH04    ', N'002', N'106c3952-801e-ec11-bf7a-9840bb00878c')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [NGAYSINH], [DIACHI], [MALOP], [MATKHAU], [rowguid]) VALUES (N'003     ', N'CAO TUAN', N'KHA', CAST(N'1985-12-06T00:00:00.000' AS DateTime), N'12/5 LE QUANG DINH F5 GO VAP', N'TH04    ', N'003', N'116c3952-801e-ec11-bf7a-9840bb00878c')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [NGAYSINH], [DIACHI], [MALOP], [MATKHAU], [rowguid]) VALUES (N'004     ', N'HA THANH ', N'BINH', CAST(N'1984-03-24T00:00:00.000' AS DateTime), N'23/4 HOANG HOA THAM', N'TH04    ', N'004', N'126c3952-801e-ec11-bf7a-9840bb00878c')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [NGAYSINH], [DIACHI], [MALOP], [MATKHAU], [rowguid]) VALUES (N'005     ', N'NGUYEN THUY ', N'VAN', CAST(N'1987-11-06T00:00:00.000' AS DateTime), N'7 HUYNH THUC KHANG', N'TH05    ', N'005', N'136c3952-801e-ec11-bf7a-9840bb00878c')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [NGAYSINH], [DIACHI], [MALOP], [MATKHAU], [rowguid]) VALUES (N'006     ', N'NGUYEN NGOC ', N'YEN', CAST(N'1980-11-23T00:00:00.000' AS DateTime), N'3/5 AN DUONG VUONG', N'TH05    ', N'006', N'146c3952-801e-ec11-bf7a-9840bb00878c')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [NGAYSINH], [DIACHI], [MALOP], [MATKHAU], [rowguid]) VALUES (N'007     ', N'NGUYEN THUY ', N'DUNG', CAST(N'1988-05-23T00:00:00.000' AS DateTime), N'8 HUYNH VAN BANH f1 q binh thanh', N'TH05    ', N'007', N'156c3952-801e-ec11-bf7a-9840bb00878c')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [NGAYSINH], [DIACHI], [MALOP], [MATKHAU], [rowguid]) VALUES (N'008     ', N'TRINH', N'PHONG', CAST(N'1985-12-10T00:00:00.000' AS DateTime), N'GGG', N'TH06    ', N'008', N'166c3952-801e-ec11-bf7a-9840bb00878c')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [NGAYSINH], [DIACHI], [MALOP], [MATKHAU], [rowguid]) VALUES (N'009     ', N'TRAN THANH', N'HUNG', CAST(N'1985-03-28T00:00:00.000' AS DateTime), N'jhjhj', N'TH05    ', N'009', N'176c3952-801e-ec11-bf7a-9840bb00878c')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [NGAYSINH], [DIACHI], [MALOP], [MATKHAU], [rowguid]) VALUES (N'010     ', N'SDFSD', N'SDFSDF', CAST(N'1985-03-26T00:00:00.000' AS DateTime), N'dfsd', N'TH05    ', N'010', N'186c3952-801e-ec11-bf7a-9840bb00878c')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [NGAYSINH], [DIACHI], [MALOP], [MATKHAU], [rowguid]) VALUES (N'011     ', N'PHAN HONG', N'NGOC', CAST(N'1986-01-17T00:00:00.000' AS DateTime), N'PHAN VAN HAN BINH THANH', N'TH05    ', N'011', N'196c3952-801e-ec11-bf7a-9840bb00878c')
INSERT [dbo].[SINHVIEN] ([MASV], [HO], [TEN], [NGAYSINH], [DIACHI], [MALOP], [MATKHAU], [rowguid]) VALUES (N'123     ', N'NAM', N'NGUYEN', NULL, N'', N'TH04    ', N'123', N'd3879e3b-e028-ec11-bfa2-9840bb00878c')
GO
/****** Object:  Index [MSmerge_index_238011979]    Script Date: 08/12/2021 10:40:12 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_238011979] ON [dbo].[BAITHI]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_BANGDIEM]    Script Date: 08/12/2021 10:40:12 CH ******/
ALTER TABLE [dbo].[BANGDIEM] ADD  CONSTRAINT [IX_BANGDIEM] UNIQUE NONCLUSTERED 
(
	[BAITHI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_1602104748]    Script Date: 08/12/2021 10:40:12 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_1602104748] ON [dbo].[BANGDIEM]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_1144391146]    Script Date: 08/12/2021 10:40:12 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_1144391146] ON [dbo].[BODE]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_629577281]    Script Date: 08/12/2021 10:40:12 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_629577281] ON [dbo].[COSO]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_882102183]    Script Date: 08/12/2021 10:40:12 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_882102183] ON [dbo].[GIAOVIEN]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_738101670]    Script Date: 08/12/2021 10:40:12 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_738101670] ON [dbo].[GIAOVIEN_DANGKY]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_661577395]    Script Date: 08/12/2021 10:40:12 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_661577395] ON [dbo].[KHOA]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UN_TENLOP]    Script Date: 08/12/2021 10:40:12 CH ******/
ALTER TABLE [dbo].[LOP] ADD  CONSTRAINT [UN_TENLOP] UNIQUE NONCLUSTERED 
(
	[TENLOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_1653580929]    Script Date: 08/12/2021 10:40:12 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_1653580929] ON [dbo].[LOP]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UN_TENMH]    Script Date: 08/12/2021 10:40:12 CH ******/
ALTER TABLE [dbo].[MONHOC] ADD  CONSTRAINT [UN_TENMH] UNIQUE NONCLUSTERED 
(
	[TENMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_MONHOC]    Script Date: 08/12/2021 10:40:12 CH ******/
CREATE NONCLUSTERED INDEX [IX_MONHOC] ON [dbo].[MONHOC]
(
	[MAMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_2133582639]    Script Date: 08/12/2021 10:40:12 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_2133582639] ON [dbo].[MONHOC]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [MSmerge_index_1954106002]    Script Date: 08/12/2021 10:40:12 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [MSmerge_index_1954106002] ON [dbo].[SINHVIEN]
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BAITHI] ADD  CONSTRAINT [MSmerge_df_rowguid_C773AA130C734A2FA4082ED6E3800F00]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[BANGDIEM] ADD  CONSTRAINT [MSmerge_df_rowguid_239B48DBCAA44290996570B9313D7D5F]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[BODE] ADD  CONSTRAINT [MSmerge_df_rowguid_3C6C3B6E74C248DE8875F7EFE6C619EC]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[COSO] ADD  CONSTRAINT [MSmerge_df_rowguid_6F9F58CCAD29428484F056858ADAEAA1]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[GIAOVIEN] ADD  CONSTRAINT [MSmerge_df_rowguid_E821B9453094412091EE2DF11166F2F1]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY] ADD  CONSTRAINT [MSmerge_df_rowguid_12895B4C97224744A4DBEFA1E822EDE7]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[KHOA] ADD  CONSTRAINT [MSmerge_df_rowguid_3F66BD0EC85E4C348D572871D983339D]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[LOP] ADD  CONSTRAINT [MSmerge_df_rowguid_3CFA58B4865C41F2A0514BA3FF72F24C]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[MONHOC] ADD  CONSTRAINT [MSmerge_df_rowguid_FCBAC7A9EE134C298684D252E3490BED]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[SINHVIEN] ADD  CONSTRAINT [MSmerge_df_rowguid_AADDF2554F6C43B998D0C99AA1A26B26]  DEFAULT (newsequentialid()) FOR [rowguid]
GO
ALTER TABLE [dbo].[BANGDIEM]  WITH NOCHECK ADD  CONSTRAINT [FK_BANGDIEM_MONHOC] FOREIGN KEY([MAMH])
REFERENCES [dbo].[MONHOC] ([MAMH])
GO
ALTER TABLE [dbo].[BANGDIEM] CHECK CONSTRAINT [FK_BANGDIEM_MONHOC]
GO
ALTER TABLE [dbo].[BANGDIEM]  WITH NOCHECK ADD  CONSTRAINT [FK_BANGDIEM_SINHVIEN1] FOREIGN KEY([MASV])
REFERENCES [dbo].[SINHVIEN] ([MASV])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[BANGDIEM] CHECK CONSTRAINT [FK_BANGDIEM_SINHVIEN1]
GO
ALTER TABLE [dbo].[BODE]  WITH CHECK ADD  CONSTRAINT [FK_BODE_GIAOVIEN] FOREIGN KEY([MAGV])
REFERENCES [dbo].[GIAOVIEN] ([MAGV])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[BODE] CHECK CONSTRAINT [FK_BODE_GIAOVIEN]
GO
ALTER TABLE [dbo].[BODE]  WITH CHECK ADD  CONSTRAINT [FK_BODE_MONHOC] FOREIGN KEY([MAMH])
REFERENCES [dbo].[MONHOC] ([MAMH])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[BODE] CHECK CONSTRAINT [FK_BODE_MONHOC]
GO
ALTER TABLE [dbo].[GIAOVIEN]  WITH CHECK ADD  CONSTRAINT [FK_GIAOVIEN_KHOA] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHOA] ([MAKH])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[GIAOVIEN] CHECK CONSTRAINT [FK_GIAOVIEN_KHOA]
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY]  WITH CHECK ADD  CONSTRAINT [FK_GIAOVIEN_DANGKY_GIAOVIEN1] FOREIGN KEY([MAGV])
REFERENCES [dbo].[GIAOVIEN] ([MAGV])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY] CHECK CONSTRAINT [FK_GIAOVIEN_DANGKY_GIAOVIEN1]
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY]  WITH CHECK ADD  CONSTRAINT [FK_GIAOVIEN_DANGKY_LOP] FOREIGN KEY([MALOP])
REFERENCES [dbo].[LOP] ([MALOP])
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY] CHECK CONSTRAINT [FK_GIAOVIEN_DANGKY_LOP]
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY]  WITH CHECK ADD  CONSTRAINT [FK_GIAOVIEN_DANGKY_MONHOC1] FOREIGN KEY([MAMH])
REFERENCES [dbo].[MONHOC] ([MAMH])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY] CHECK CONSTRAINT [FK_GIAOVIEN_DANGKY_MONHOC1]
GO
ALTER TABLE [dbo].[KHOA]  WITH CHECK ADD  CONSTRAINT [FK_KHOA_COSO] FOREIGN KEY([MACS])
REFERENCES [dbo].[COSO] ([MACS])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[KHOA] CHECK CONSTRAINT [FK_KHOA_COSO]
GO
ALTER TABLE [dbo].[LOP]  WITH CHECK ADD  CONSTRAINT [FK_LOP_KHOA] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHOA] ([MAKH])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[LOP] CHECK CONSTRAINT [FK_LOP_KHOA]
GO
ALTER TABLE [dbo].[SINHVIEN]  WITH CHECK ADD  CONSTRAINT [FK_SINHVIEN_LOP] FOREIGN KEY([MALOP])
REFERENCES [dbo].[LOP] ([MALOP])
GO
ALTER TABLE [dbo].[SINHVIEN] CHECK CONSTRAINT [FK_SINHVIEN_LOP]
GO
ALTER TABLE [dbo].[BAITHI]  WITH CHECK ADD  CONSTRAINT [CK_BAITHI] CHECK  (([DACHON]='D' OR ([DACHON]='C' OR ([DACHON]='B' OR [DACHON]='A'))))
GO
ALTER TABLE [dbo].[BAITHI] CHECK CONSTRAINT [CK_BAITHI]
GO
ALTER TABLE [dbo].[BANGDIEM]  WITH NOCHECK ADD  CONSTRAINT [CK_DIEM] CHECK  (([DIEM]>=(0) AND [DIEM]<=(10)))
GO
ALTER TABLE [dbo].[BANGDIEM] CHECK CONSTRAINT [CK_DIEM]
GO
ALTER TABLE [dbo].[BANGDIEM]  WITH NOCHECK ADD  CONSTRAINT [CK_LANTHI] CHECK  (([LAN]>=(1) AND [LAN]<=(2)))
GO
ALTER TABLE [dbo].[BANGDIEM] CHECK CONSTRAINT [CK_LANTHI]
GO
ALTER TABLE [dbo].[BANGDIEM]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_45D6E2FA_218C_48B6_A5BC_02582723003B] CHECK NOT FOR REPLICATION (([BAITHI]>(2) AND [BAITHI]<=(1002) OR [BAITHI]>(1002) AND [BAITHI]<=(2002)))
GO
ALTER TABLE [dbo].[BANGDIEM] CHECK CONSTRAINT [repl_identity_range_45D6E2FA_218C_48B6_A5BC_02582723003B]
GO
ALTER TABLE [dbo].[BODE]  WITH NOCHECK ADD  CONSTRAINT [CK_BODE] CHECK  (([TRINHDO]='A' OR [TRINHDO]='B' OR [TRINHDO]='C'))
GO
ALTER TABLE [dbo].[BODE] CHECK CONSTRAINT [CK_BODE]
GO
ALTER TABLE [dbo].[BODE]  WITH NOCHECK ADD  CONSTRAINT [CK_DAPAN] CHECK  (([DAP_AN]='D' OR ([DAP_AN]='C' OR ([DAP_AN]='B' OR [DAP_AN]='A'))))
GO
ALTER TABLE [dbo].[BODE] CHECK CONSTRAINT [CK_DAPAN]
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY]  WITH CHECK ADD  CONSTRAINT [CK_LAN] CHECK  (([LAN]>=(1) AND [LAN]<=(2)))
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY] CHECK CONSTRAINT [CK_LAN]
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY]  WITH CHECK ADD  CONSTRAINT [CK_SOCAUTHI] CHECK  (([SOCAUTHI]>=(10) AND [SOCAUTHI]<=(100)))
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY] CHECK CONSTRAINT [CK_SOCAUTHI]
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY]  WITH CHECK ADD  CONSTRAINT [CK_THOIGIAN] CHECK  (([THOIGIAN]>=(15) AND [THOIGIAN]<=(60)))
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY] CHECK CONSTRAINT [CK_THOIGIAN]
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY]  WITH CHECK ADD  CONSTRAINT [CK_TRINHDO] CHECK  (([TRINHDO]='C' OR ([TRINHDO]='B' OR [TRINHDO]='A')))
GO
ALTER TABLE [dbo].[GIAOVIEN_DANGKY] CHECK CONSTRAINT [CK_TRINHDO]
GO
/****** Object:  StoredProcedure [dbo].[sp_CheckRegisterIsExists]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sp_CheckRegisterIsExists] @MALOP char(8), @MAMH char(8), @LAN int
as
begin
	IF EXISTS( SELECT 1 FROM GIAOVIEN_DANGKY gvdk WHERE gvdk.MALOP = @MALOP AND gvdk.MAMH = @MAMH AND gvdk.LAN = @LAN )
		begin
			SELECT 1;
			RETURN;
		end
		
	IF EXISTS ( SELECT 1 FROM LINK0.THITN.dbo.GIAOVIEN_DANGKY gvdk WHERE gvdk.MALOP = @MALOP AND gvdk.MAMH = @MAMH AND gvdk.LAN = @LAN )
		begin
			SELECT 1;
			RETURN;
		end
	SELECT 0;
end

GO
/****** Object:  StoredProcedure [dbo].[SP_CreateStudent]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_CreateStudent]
	@StudentID nchar(8),
	@LastName nvarchar(40),
	@FirstName nvarchar(10),
	@Birthday datetime,
	@Address nvarchar(40),
	@ClassID nchar(8),
	@Password varchar(50)
as
	if @StudentID is null or @LastName is null or @FirstName is null or @ClassID is null or @Password is null
		return 1
	if not exists (select * from LOP where MALOP = @ClassID)
		return 2
	insert into SINHVIEN(MASV, HO, TEN, NGAYSINH, DIACHI, MALOP, MATKHAU) 
		values (@StudentID, @LastName, @FirstName, @Birthday, @Address, @ClassID, @Password)
return 0
GO
/****** Object:  StoredProcedure [dbo].[SP_CreateTeacher]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_CreateTeacher] 
	@TeacherID nchar(8),
	@LastName nvarchar(40),
	@FirstName nvarchar(10),
	@Address nvarchar(40),
	@DepartmentID nchar(8)
as

if @TeacherID is null or @DepartmentID is null
	return 1
if not exists(select * from LINK0.THITN.DBO.KHOA where MAKH = @DepartmentID)
	return 2
if exists (select * from LINK0.THITN.DBO.GIAOVIEN where MAGV = @TeacherID)
	return 3

SET XACT_ABORT ON;
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ
BEGIN TRY
	BEGIN DISTRIBUTED TRAN
		insert into LINK0.THITN.DBO.GIAOVIEN (MAGV, HO, TEN, DIACHI, MAKH) 
			values (@TeacherID, @LastName, @FirstName, @Address, @DepartmentID)
	COMMIT TRAN
END TRY
BEGIN CATCH
	ROLLBACK TRAN;
	RAISERROR('Failed in inserting into Teacher table', 16, 1)
	RETURN 4
END CATCH
return 0
GO
/****** Object:  StoredProcedure [dbo].[sp_GetBaiThi]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sp_GetBaiThi]
@maSV nvarchar(20), @maMH nvarchar (30) , @lan smallInt
As
begin
	if exists(select * from BANGDIEM where MASV = @maSV and MAMH = @maMH and LAN = @lan)
		begin
			select BAITHI from BANGDIEM where MASV = @maSV and MAMH = @maMH and LAN = @lan
		end
	else 
		begin 
			select 0
		end 
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetGVDKtheoSV]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sp_GetGVDKtheoSV] 
@maSV VARCHAR(50),@maLop VARCHAR(50),@maMH VARCHAR(50),@lan smallint,@ngaythi VARCHAR(50)
as
begin
	 if exists(select * from GIAOVIEN_DANGKY where MALOP = @maLop and MAMH = @maMH and LAN = @lan and CONVERT(date,NGAYTHI) = convert(date,@ngaythi,103) and @maSV not in(select MASV from BANGDIEM where MAMH =@maMH and LAN = @lan))
		begin
			select MAMH,MALOP,TRINHDO,NGAYTHI,LAN,SOCAUTHI,THOIGIAN from GIAOVIEN_DANGKY where MALOP = @maLop and MAMH = @maMH and LAN = @lan and CONVERT(date,NGAYTHI) = convert(date,@ngaythi,103)
		end
	else 
		begin
			select '0';
		end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetInfoSV]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sp_GetInfoSV]
@maSV nvarchar(20)
as
begin 
	if exists (select * from SINHVIEN sv   where sv.MASV = @maSV)
		begin
			select sv.MASV,sv.HO,sv.TEN,sv.MALOP,l.TENLOP from SINHVIEN sv inner join LOP l on sv.MALOP = l.MALOP where sv.MASV = @maSV
		end
	else 
		begin
			select '0'
		end
	
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetMH]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sp_GetMH] @maLop VARCHAR(50)
as
begin
	if exists( select DISTINCT  MAMH from GIAOVIEN_DANGKY where MALOP = @maLop )
		begin
			select DISTINCT  gvDK.MAMH,mh.TENMH from GIAOVIEN_DANGKY gvDK inner join MONHOC mh on gvDK.MAMH = mh.MAMH where MALOP = @maLop 
		end
	else 
		begin 
			select '0'
		end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetQuestion]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_GetQuestion]
@maMonHoc NCHAR(5), @trinhDo NChar(1), @soCau int
AS
BEGIN
	DECLARE @trinhDo2 Nchar(1) = 'N'
	DECLARE @countQuestion int = 0
	DECLARE @countQuestionCungTrinhDo int = 0
	DECLARE @countQuestionTrinhDoDuoi int = 0

	set @countQuestionCungTrinhDo = (select count(*) from BODE where (MAMH = @maMonHoc and TRINHDO = @trinhDo))

	if (@trinhDo = 'A') 
		set @trinhDo2 = 'B'
	else if (@trinhDo = 'B')
		set @trinhDo2 = 'C' 
	
		set @countQuestionTrinhDoDuoi = (select count(*) from BODE where (MAMH = @maMonHoc and TRINHDO = @trinhDo2))
		set @countQuestion = @countQuestionCungTrinhDo+@countQuestionTrinhDoDuoi
		
		--set @countQuestion = @countQuestionCungTrinhDo

	if(@countQuestion <@soCau or @countQuestionCungTrinhDo<(@soCau*70/100))
		begin
			Select('Khong du cau hoi de thi') as 'ERROR'
			return -1
		end
	
	-- tạo bảng tạm chưa các câu hỏi tại tất cả các site 
	create table questionTable(
	CAUHOI int primary key,
	TRINHDO char(1),
	NOIDUNG ntext,
	A nvarchar(30),
	B nvarchar(30),
	C nvarchar(30),
	D nvarchar(30),
	DAP_AN nchar(1),
	)

	select * into CungTrinhDoAtSiteTable from BODE  where MAMH = @maMonHoc and TRINHDO = @trinhDo and MAGV in (Select MAGV from GIAOVIEN where MAKH in(select MAKH from KHOA))
	select * into TrinhDoDuoiAtSiteTable from BODE  where MAMH = @maMonHoc and TRINHDO = @trinhDo2 and MAGV in (Select MAGV from GIAOVIEN where MAKH in(select MAKH from KHOA))
	
	Insert into questionTable
			select CAUHOI,TRINHDO,CAST(NOIDUNG as nvarchar(max)),CAST(A as nvarchar(max)),CAST(B as nvarchar(max)),CAST(C as nvarchar(max)),
			CAST(D as nvarchar(max)),DAP_AN from CungTrinhDoAtSiteTable
			UNION
			select CAUHOI,TRINHDO,CAST(NOIDUNG as nvarchar(max)),CAST(A as nvarchar(max)),CAST(B as nvarchar(max)),CAST(C as nvarchar(max)),
			CAST(D as nvarchar(max)),DAP_AN  from TrinhDoDuoiAtSiteTable 
	
	Declare @countCungTrinhDoAtSite int = (select count(*) from CungTrinhDoAtSiteTable)
	Declare @countTrinhDoDuoiAtSite int = (select count(*) from TrinhDoDuoiAtSiteTable)
	if((@countCungTrinhDoAtSite+@countTrinhDoDuoiAtSite) < @soCau OR @countCungTrinhDoAtSite < (@soCau*70/100))
		begin
			select * into CungTrinhDoOtherSiteTable from BODE  where MAMH = @maMonHoc and TRINHDO = @trinhDo and MAGV in (Select MAGV from GIAOVIEN where MAKH not in(select MAKH from KHOA))
			select * into TrinhDoDuoiOtherSiteTable from BODE  where MAMH = @maMonHoc and TRINHDO = @trinhDo2 and MAGV in (Select MAGV from GIAOVIEN where MAKH not in(select MAKH from KHOA))

			Insert into questionTable
			select CAUHOI,TRINHDO,CAST(NOIDUNG as nvarchar(max)),CAST(A as nvarchar(max)),CAST(B as nvarchar(max)),CAST(C as nvarchar(max)),
			CAST(D as nvarchar(max)),DAP_AN from CungTrinhDoOtherSiteTable
			UNION
			select CAUHOI,TRINHDO,CAST(NOIDUNG as nvarchar(max)),CAST(A as nvarchar(max)),CAST(B as nvarchar(max)),CAST(C as nvarchar(max)),
			CAST(D as nvarchar(max)),DAP_AN  from TrinhDoDuoiOtherSiteTable 
			
			--xóa hai table tạm
			drop table CungTrinhDoOtherSiteTable
			drop table TrinhDoDuoiOtherSiteTable
		end
	Declare @slCanLayCungTrinhDo int,@slCanLayTrinhDoDuoi int
		set @slCanLayCungTrinhDo = @soCau*70/100
		if ((@slCanLayCungTrinhDo + @countQuestionTrinhDoDuoi)<@soCau)
			set @slCanLayCungTrinhDo = @slCanLayCungTrinhDo + (@soCau - (@slCanLayCungTrinhDo+@countQuestionTrinhDoDuoi))
			set @slCanLayTrinhDoDuoi = @soCau - @slCanLayCungTrinhDo
	
	create table examTable(
	CAUHOI int primary key,
	NOIDUNG ntext,
	A nvarchar(30),
	B nvarchar(30),
	C nvarchar(30),
	D nvarchar(30),
	DAP_AN nchar(1),
	)

	insert into examTable
		select top (@slCanLayCungTrinhDo) CAUHOI,CAST(NOIDUNG as nvarchar(max)) as [NOIDUNG],CAST(A as nvarchar(max)) as [A],CAST(B as nvarchar(max)) as [B],CAST(C as nvarchar(max)) as [C],
	CAST(D as nvarchar(max)) as [D],DAP_AN  from questionTable where TRINHDO = @trinhDo
		UNION
		select top (@slCanLayTrinhDoDuoi) CAUHOI,CAST(NOIDUNG as nvarchar(max)) as [NOIDUNG],CAST(A as nvarchar(max)) as [A],CAST(B as nvarchar(max)) as [B],CAST(C as nvarchar(max)) as [C],
	CAST(D as nvarchar(max)) as [D],DAP_AN  from questionTable where TRINHDO = @trinhDo2

	select * from examTable ORDER BY NEWID()

	drop table questionTable
	drop table examTable
	drop table CungTrinhDoAtSiteTable
	drop table TrinhDoDuoiAtSiteTable
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetRegisedListBetweenTwoDate]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_GetRegisedListBetweenTwoDate]
	@from date,
	@to date
as
	IF IS_MEMBER('COSO') = 1
	BEGIN
		select (select TOP(1)TENCS from COSO) as COSO,
			(select TENLOP from LOP L where L.MALOP = GVDK.MALOP) as TENLOP,
			(select TENMH from MONHOC MH where MH.MAMH = GVDK.MAMH) as TENMH,
			(select HO + ' ' + TEN from GIAOVIEN GV where GV.MAGV = GVDK.MAGV) as HOTENGVDK,
			GVDK.SOCAUTHI, GVDK.NGAYTHI,
			IIF (exists (select * from BANGDIEM BD where BD.LAN = GVDK.LAN and BD.MAMH = GVDK.MAMH 
				and exists (select * from SINHVIEN SV where SV.MALOP = GVDK.MALOP)), 'x', '') as DATHI
		from GIAOVIEN_DANGKY GVDK
		where GVDK.NGAYTHI > @from and GVDK.NGAYTHI < @to
	END
	ELSE	
	BEGIN
		with TAM as(
		select (select TOP(1)TENCS from COSO) as COSO,
			(select TENLOP from LOP L where L.MALOP = GVDK.MALOP) as TENLOP,
			(select TENMH from MONHOC MH where MH.MAMH = GVDK.MAMH) as TENMH,
			(select HO + ' ' + TEN from GIAOVIEN GV where GV.MAGV = GVDK.MAGV) as HOTENGVDK,
			GVDK.SOCAUTHI, GVDK.NGAYTHI,
			IIF (exists (select * from BANGDIEM BD where BD.LAN = GVDK.LAN and BD.MAMH = GVDK.MAMH 
				and exists (select * from SINHVIEN SV where SV.MALOP = GVDK.MALOP)), 'x', '') as DATHI
		from GIAOVIEN_DANGKY GVDK
		where GVDK.NGAYTHI > @from and GVDK.NGAYTHI < @to
		union
		select (select TOP(1)TENCS from LINK1.THITN.DBO.COSO) as COSO, 
			(select TENLOP from LINK1.THITN.DBO.LOP L where L.MALOP = GVDK.MALOP) as TENLOP,
			(select TENMH from MONHOC MH where MH.MAMH = GVDK.MAMH) as TENMH,
			(select HO + ' ' + TEN from GIAOVIEN GV where GV.MAGV = GVDK.MAGV) as HOTENGVDK,
			GVDK.SOCAUTHI, GVDK.NGAYTHI,
			IIF (exists (select * from LINK1.THITN.DBO.BANGDIEM BD where BD.LAN = GVDK.LAN and BD.MAMH = GVDK.MAMH 
				and exists (select * from LINK1.THITN.DBO.SINHVIEN SV where SV.MALOP = GVDK.MALOP)), 'x', '') as DATHI
		from LINK1.THITN.DBO.GIAOVIEN_DANGKY GVDK
		where GVDK.NGAYTHI > @from and GVDK.NGAYTHI < @to)
		select * from TAM order by NGAYTHI asc
	END
return 0
GO
/****** Object:  StoredProcedure [dbo].[SP_GetResultTest]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GetResultTest] @StudentID nchar(8),
	@SubjectID nchar(5),
	@Time int
as
	declare @TestID int
	declare @Choosed char(1)
	declare @test nvarchar
	if not exists(select * from SINHVIEN where MASV = @StudentID)
	begin
		raiserror(N'Mã sinh viên không tồn tại', 16, 1)
		return 1;
	end
	if not exists(select * from MONHOC where MAMH = @SubjectID)
	begin
		raiserror(N'Mã môn học không tồn tại', 16, 1)
		return 1;
	end
	select @TestID = BD.BAITHI from BANGDIEM BD
		where BD.LAN = @Time and BD.MASV = @StudentID and BD.MAMH = @SubjectID
	select ROW_NUMBER() over (order by BD.CAUHOI asc) as STT, BD.CAUHOI, BD.NOIDUNG, 
	'A. ' + BD.A as CauA,
	'B. ' + BD.B as CauB,
	'C. ' + BD.C as CauC,
	'D. ' + BD.D as CauD, BD.DAP_AN, BT.DACHON
		from BAITHI BT inner join BODE BD on BT.CAUHOI = BD.CAUHOI
		where BT.BAITHI = @TestID
return 0
GO
/****** Object:  StoredProcedure [dbo].[SP_GetScoreByClassSubjectTime]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_GetScoreByClassSubjectTime]
	@ClassID nchar(8),
	@SubjectID nchar(5),
	@Time int
as
	select SV.MASV, BD.MAMH, SV.HO, SV.TEN, ROUND(2 * BD.DIEM, 0) / 2 as DIEM, 
	(case ROUND(2 * BD.DIEM, 0) / 2
	when 0 then N'Không'
	when 1 then N'Một'
	when 2 then N'Hai'
	when 3 then N'Ba'
	when 4 then N'Bốn'
	when 5 then N'Năm'
	when 6 then N'Sáu'
	when 7 then N'Bảy'
	when 8 then N'Tám'
	when 9 then N'Chín'
	when 10 then N'Mười'
	when 0.5 then N'Không rưỡi'
	when 1.5 then N'Một rưỡi'
	when 2.5 then N'Hai rưỡi'
	when 3.5 then N'Ba rưỡi'
	when 4.5 then N'Bốn rưỡi'
	when 5.5 then N'Năm rưỡi'
	when 6.5 then N'Sáu Rưỡi'
	when 7.5 then N'Bảy rưỡi'
	when 8.5 then N'Tám rưỡi'
	when 9.5 then N'Chín Rưỡi'
	end
	) as CHUSO
	from (select * from SINHVIEN where MALOP = @ClassID
			union select * from LINK1.THITN.dbo.SINHVIEN where MALOP = @ClassID) as SV 
		inner join BANGDIEM as BD on SV.MASV = BD.MASV and BD.LAN = @Time and BD.MAMH = @SubjectID
	union
	select SV.MASV, BD.MAMH, SV.HO, SV.TEN, ROUND(2 * BD.DIEM, 0) / 2 as DIEM,
	(case ROUND(2 * BD.DIEM, 0) / 2
	when 0 then N'Không'
	when 1 then N'Một'
	when 2 then N'Hai'
	when 3 then N'Ba'
	when 4 then N'Bốn'
	when 5 then N'Năm'
	when 6 then N'Sáu'
	when 7 then N'Bảy'
	when 8 then N'Tám'
	when 9 then N'Chín'
	when 10 then N'Mười'
	when 0.5 then N'Không rưỡi'
	when 1.5 then N'Một rưỡi'
	when 2.5 then N'Hai rưỡi'
	when 3.5 then N'Ba rưỡi'
	when 4.5 then N'Bốn rưỡi'
	when 5.5 then N'Năm rưỡi'
	when 6.5 then N'Sáu Rưỡi'
	when 7.5 then N'Bảy rưỡi'
	when 8.5 then N'Tám rưỡi'
	when 9.5 then N'Chín Rưỡi'
	end
	) as CHUSO
	from (select * from SINHVIEN where MALOP = @ClassID
			union select * from LINK1.THITN.dbo.SINHVIEN where MALOP = @ClassID) as SV 
		inner join LINK1.THITN.dbo.BANGDIEM as BD on SV.MASV = BD.MASV and BD.LAN = @Time and BD.MAMH = @SubjectID
return 0
GO
/****** Object:  StoredProcedure [dbo].[SP_GetSubjectHaveScoreOfByClass]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_GetSubjectHaveScoreOfByClass]
	@ClassID nchar(8)
as
	select BD.MAMH, BD.LAN, (SELECT TENMH FROM MONHOC WHERE MAMH = BD.MAMH) AS TENMH 
	from (select MASV as MASV from LINK2.THITN.dbo.SINHVIEN where MALOP = @ClassID) as SV 
		inner join BANGDIEM as BD on SV.MASV = BD.MASV
	union
	select BD.MAMH, BD.LAN, (SELECT TENMH FROM MONHOC WHERE MAMH = BD.MAMH) AS TENMH 
	from (select MASV as MASV from LINK2.THITN.dbo.SINHVIEN where MALOP = @ClassID) as SV 
		inner join LINK1.THITN.dbo.BANGDIEM as BD on SV.MASV = BD.MASV
return 0
GO
/****** Object:  StoredProcedure [dbo].[SP_GetSubjectOfStudent]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_GetSubjectOfStudent]
	@StudentID nchar(8)
as
	if not exists (select * from SINHVIEN where MASV = @StudentID)
	begin
		raiserror(N'Username không tồn tại', 16, 1)
		return 1;
	end
	select MH.MAMH, MH.TENMH from MONHOC MH inner join 
		(select MAMH from BANGDIEM where MASV = @StudentID group by MAMH) BD on MH.MAMH = BD.MAMH
return 0
GO
/****** Object:  StoredProcedure [dbo].[SP_GetTimeOfTestInSubjectAndClass]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_GetTimeOfTestInSubjectAndClass]
	@ClassID nchar(8),
	@SubjectID nchar(8)
as
	select *
	from (select MASV as MASV from LINK2.THITN.dbo.SINHVIEN where MALOP = @ClassID) as SV 
		inner join BANGDIEM as BD on SV.MASV = BD.MASV
		where BD.MAMH = @SubjectID
	union
	select *
	from (select MASV as MASV from LINK2.THITN.dbo.SINHVIEN where MALOP = @ClassID) as SV 
		inner join LINK1.THITN.dbo.BANGDIEM as BD on SV.MASV = BD.MASV
		where BD.MAMH = @SubjectID
return 0
GO
/****** Object:  StoredProcedure [dbo].[SP_Lay_Thong_Tin_NV_Tu_Login]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Lay_Thong_Tin_NV_Tu_Login]
@TENLOGIN NVARCHAR( 100)
AS
DECLARE @UID INT
DECLARE @MANV NVARCHAR(100)
SELECT @UID= uid , @MANV= NAME FROM sys.sysusers 
  WHERE sid = SUSER_SID(@TENLOGIN)

SELECT MAGV= @MANV, 
       HOTEN = (SELECT HO+ ' '+TEN FROM dbo.GIAOVIEN WHERE MAGV=@MANV ), 
       TENNHOM=NAME
  FROM sys.sysusers
    WHERE UID = (SELECT groupuid FROM sys.sysmembers WHERE memberuid=@uid)
GO
/****** Object:  StoredProcedure [dbo].[SP_Lay_Thong_Tin_Sinh_Vien]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Lay_Thong_Tin_Sinh_Vien]
	@MASV NCHAR(8), @MATKHAU VARCHAR(50)
AS
	DECLARE @HOTEN VARCHAR(50),
		@TENLOP VARCHAR(40), @MALOP NCHAR(8),
		@TENKHOA NVARCHAR(50), @MAKHOA NCHAR(8),
		@MACS NCHAR(3),
		@SERVERNAME VARCHAR(50)
		SELECT @HOTEN = HO + ' ' + TEN, @MALOP = MALOP FROM SINHVIEN WHERE MASV = @MASV AND MATKHAU = @MATKHAU
		IF @MALOP IS NULL
		BEGIN
			RAISERROR (N'Mã sinh viên hoặc mật khẩu không chính xác', 16, 1)
			RETURN NULL
		END
		ELSE
		BEGIN
			SELECT @TENLOP = TENLOP, @MAKHOA = MAKH FROM LOP WHERE MALOP = @MALOP
			SELECT @TENKHOA = TENKH, @MACS = MACS FROM KHOA WHERE MAKH = @MAKHOA
			IF @MACS = 'CS1' 
				--SELECT @SERVERNAME = SUBS.subscriber_server
				--FROM dbo.sysmergepublications AS PUBS INNER JOIN
    --                 dbo.sysmergesubscriptions AS SUBS ON PUBS.pubid = SUBS.pubid 
				--	 AND PUBS.publisher <> SUBS.subscriber_server
				--WHERE PUBS.description = N'CƠ SỞ 1'
				SELECT @MASV, @HOTEN, 'SINHVIEN', 'ADMIN\SERVER1'
			ELSE
				--SELECT @SERVERNAME = SUBS.subscriber_server
				--FROM dbo.sysmergepublications AS PUBS INNER JOIN
    --                 dbo.sysmergesubscriptions AS SUBS ON PUBS.pubid = SUBS.pubid 
				--	 AND PUBS.publisher <> SUBS.subscriber_server
				--WHERE PUBS.description = N'CƠ SỞ 2'
				SELECT @MASV, @HOTEN, 'SINHVIEN', 'ADMIN\SERVER2'
		END
GO
/****** Object:  StoredProcedure [dbo].[sp_SLCauHoiThieu]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_SLCauHoiThieu] 
@maMonHoc NCHAR(5), @trinhDo NChar(1), @soCau int
AS
BEGIN
	DECLARE @trinhDo2 Nchar(1) = 'N'
	DECLARE @countQuestion int = 0
	DECLARE @countQuestionCungTrinhDo int = 0
	DECLARE @countQuestionTrinhDoDuoi int = 0

	if (@trinhDo = 'A') 
		set @trinhDo2 = 'B'
	else if (@trinhDo = 'B')
		set @trinhDo2 = 'C'

	set @countQuestionCungTrinhDo = (select count(*) from BODE where (MAMH = @maMonHoc and TRINHDO = @trinhDo))
	set @countQuestionTrinhDoDuoi = (select count(*) from BODE where (MAMH = @maMonHoc and TRINHDO = @trinhDo2))

	set @countQuestion = @countQuestionCungTrinhDo+@countQuestionTrinhDoDuoi

	if (@countQuestion< @soCau or @countQuestionCungTrinhDo<(@soCau*70/100))
		begin
			if (@countQuestion > @soCau)
				begin
					if (@countQuestionCungTrinhDo<(@soCau*70/100))
						begin 
							/*print 'so cau du nhung so cau cung trinh do it hon 70'*/
							select (@soCau*70/100) - @countQuestionCungTrinhDo
						end
					else 
						begin
							/*print 'so cau du'*/
							select 0
						end
				end
			else 
				begin
					if (@countQuestionCungTrinhDo<(@soCau*70/100))
						begin 
							/*print 'so cau thieu va so cau cung trinh do it hon 70'*/
							DECLARE @tongSoCauThieu Int
							set @tongSoCauThieu = @soCau - @countQuestion
							if ((@countQuestionCungTrinhDo + @tongSoCauThieu) < (@soCau*70/100))
								begin 
									set @tongSoCauThieu = @tongSoCauThieu + ((@soCau*70/100)-(@countQuestionCungTrinhDo+@tongSoCauThieu))
								end
							select @tongSoCauThieu
						end
					else 
						begin 
							/*print 'so cau thieu nhung so cau cung trinh do du 70'*/
							select @soCau - @countQuestion
						end
				end
		end
	else 
		begin
			/*print 'so cau da du'*/
			select 0;
		end
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TAOLOGIN]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_TAOLOGIN]
	@LGNAME VARCHAR(50),
	@PASS VARCHAR(50),
	@TeacherID nchar(8),
	@ROLE VARCHAR(50),
	@LastName nvarchar(40),
	@FirstName nvarchar(10),
	@Address nvarchar(40),
	@DepartmentID nchar(8)
AS

DECLARE @RET INT
EXEC @RET= SP_ADDLOGIN @LGNAME, @PASS,'THITN'
IF (@RET =1)  -- LOGIN NAME BI TRUNG
	RETURN 1
 
--EXEC @RET = SP_GRANTDBACCESS @LGNAME, @TeacherID
--IF @RET = 1
--BEGIN
--	EXEC SP_DROPLOGIN @LGNAME
--	RAISERROR('Login name already exists', 16, 1)
--	RETURN 2
--END
EXEC @RET= SP_GRANTDBACCESS @LGNAME, @TeacherID
IF (@RET =1)  -- USER  NAME BI TRUNG
BEGIN
	EXEC SP_DROPLOGIN @LGNAME
	RETURN 2
END

EXEC sp_addrolemember @ROLE, @TeacherID
IF @ROLE = 'TRUONG' OR @ROLE= 'COSO'
BEGIN 
	EXEC sp_addsrvrolemember @LGNAME, 'SecurityAdmin'
	EXEC sp_addsrvrolemember @LGNAME, 'ProcessAdmin'
END

--BEGIN TRY
	--BEGIN DISTRIBUTED TRAN
		declare @ReturnCreateTeacher int
		EXEC @ReturnCreateTeacher = SP_CreateTeacher @TeacherID, @LastName, @FirstName, @Address, @DepartmentID
	--COMMIT TRAN
		IF @ReturnCreateTeacher != 0
		BEGIN
			EXEC LINK1.THITN.DBO.Xoa_Login @LGNAME, @TeacherID
			EXEC Xoa_Login @LGNAME, @TeacherID
			return 3
		END
--END TRY
--BEGIN CATCH
--	IF (@@TRANCOUNT > 0)
--	BEGIN
--		ROLLBACK TRAN;
--	END
--	EXEC LINK1.THITN.DBO.Xoa_Login @LGNAME, @TeacherID
--	EXEC Xoa_Login @LGNAME, @TeacherID
--	RETURN 4
--END CATCH
RETURN 0  -- THANH CONG


GO
/****** Object:  StoredProcedure [dbo].[SP_TAOLOGINCHOTRUONG]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[SP_TAOLOGINCHOTRUONG]
  @LGNAME VARCHAR(50),
  @PASS VARCHAR(50),
  @TeacherID VARCHAR(50),
  @LastName nvarchar(40),
	@FirstName nvarchar(10),
	@Address nvarchar(40),
	@DepartmentID nchar(8)
AS
  DECLARE @RET INT
  EXEC @RET= SP_ADDLOGIN @LGNAME, @PASS,'THITN'
  IF (@RET =1)  -- LOGIN NAME BI TRUNGF
     RETURN 1
 
  EXEC @RET= SP_GRANTDBACCESS @LGNAME, @TeacherID
  IF (@RET =1)  -- USER  NAME BI TRUNG
  BEGIN
       EXEC SP_DROPLOGIN @LGNAME
       RETURN 2
  END
  EXEC sp_addrolemember 'TRUONG', @TeacherID
  

	EXEC sp_addsrvrolemember @LGNAME, 'SecurityAdmin'
	EXEC sp_addsrvrolemember @LGNAME, 'ProcessAdmin'
	DECLARE @ReturnTaoLogin int
	EXEC @ReturnTaoLogin = LINK1.THITN.DBO.SP_TAOLOGIN @LGNAME, @PASS, @TeacherID, 'TRUONG', @LastName, @FirstName, @Address, @DepartmentID
	IF @ReturnTaoLogin != 0
	BEGIN
		--EXEC LINK1.THITN.DBO.Xoa_Login @LGNAME, @PASS
		EXEC Xoa_Login @LGNAME, @PASS
		return 3
	END
RETURN 0  -- THANH CONG


GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateBaiThi]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sp_UpdateBaiThi]
@baiThi int, @cauHoi int, @daChon nvarchar(5), @STT int
As
begin
	INSERT INTO BAITHI(BAITHI, CAUHOI, DACHON, STT) VALUES (@baiThi, @cauHoi, @daChon,@STT)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateBangDiem]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sp_UpdateBangDiem]
@maSV nvarchar(30),@maMH nvarchar(30) , @lan smallInt, @ngayThi nvarchar(50), @diem float
as
Begin
	INSERT INTO BANGDIEM(MASV, MAMH, LAN, NGAYTHI, DIEM) VALUES (@maSV, @maMH,@lan,@ngayThi, @diem);
end
GO
/****** Object:  StoredProcedure [dbo].[Xoa_Login]    Script Date: 08/12/2021 10:40:12 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Xoa_Login]
  @LGNAME VARCHAR(50),
  @USRNAME VARCHAR(50)
  
AS
  EXEC SP_DROPUSER @USRNAME
  EXEC SP_DROPLOGIN @LGNAME
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "PUBS"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 322
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SUBS"
            Begin Extent = 
               Top = 6
               Left = 360
               Bottom = 136
               Right = 610
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Get_SearchSubscribes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Get_SearchSubscribes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "PUBS"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 322
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SUBS"
            Begin Extent = 
               Top = 6
               Left = 360
               Bottom = 136
               Right = 610
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Get_Subscribes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Get_Subscribes'
GO
USE [master]
GO
ALTER DATABASE [THITN] SET  READ_WRITE 
GO
