USE [THITN]
GO

/****** Object:  StoredProcedure [dbo].[SP_Lay_Thong_Tin_Sinh_Vien]    Script Date: 29/09/2021 10:52:06 SA ******/
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

