USE [THITN]
GO

/****** Object:  StoredProcedure [dbo].[SP_GetScoreByClassSubjectTime]    Script Date: 29/09/2021 10:25:40 CH ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_GetScoreByClassSubjectTime] @ClassID nchar(8),
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

