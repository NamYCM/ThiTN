USE [THITN]
GO

/****** Object:  StoredProcedure [dbo].[sp_GetBaiThi]    Script Date: 15/11/2021 8:13:53 CH ******/
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

