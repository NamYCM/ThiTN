USE [THITN]
GO

/****** Object:  StoredProcedure [dbo].[sp_UpdateBangDiem]    Script Date: 15/11/2021 8:13:12 CH ******/
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

