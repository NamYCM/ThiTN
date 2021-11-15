USE [THITN]
GO

/****** Object:  StoredProcedure [dbo].[sp_GetInfoSV]    Script Date: 15/11/2021 8:12:51 CH ******/
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

