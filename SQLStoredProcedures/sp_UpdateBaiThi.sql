USE [THITN]
GO

/****** Object:  StoredProcedure [dbo].[sp_UpdateBaiThi]    Script Date: 15/11/2021 8:13:32 CH ******/
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

