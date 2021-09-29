USE [THITN]
GO

/****** Object:  StoredProcedure [dbo].[SP_Lay_Thong_Tin_NV_Tu_Login]    Script Date: 29/09/2021 10:51:50 SA ******/
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

