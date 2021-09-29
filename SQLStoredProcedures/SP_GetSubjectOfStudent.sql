USE [THITN]
GO

/****** Object:  StoredProcedure [dbo].[SP_GetSubjectOfStudent]    Script Date: 29/09/2021 10:51:35 SA ******/
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

