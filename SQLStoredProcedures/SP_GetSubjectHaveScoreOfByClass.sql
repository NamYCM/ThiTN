create proc SP_GetSubjectHaveScoreOfByClass
	@ClassID nchar(8)
as
	select BD.MAMH from (select MASV as MASV from LINK2.THITN.dbo.SINHVIEN where MALOP = @ClassID) as SV 
		inner join BANGDIEM as BD on SV.MASV = BD.MASV
	union
	select BD.MAMH from (select MASV as MASV from LINK2.THITN.dbo.SINHVIEN where MALOP = @ClassID) as SV 
		inner join LINK1.THITN.dbo.BANGDIEM as BD on SV.MASV = BD.MASV
return 0