USE [THITN]
GO

/****** Object:  StoredProcedure [dbo].[SP_GetTimeOfTestInSubjectAndClass]    Script Date: 08/12/2021 7:44:48 CH ******/
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

