USE [THITN]
GO

/****** Object:  StoredProcedure [dbo].[SP_GetResultTest]    Script Date: 29/09/2021 10:51:23 SA ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_GetResultTest] @StudentID nchar(8),
	@SubjectID nchar(5),
	@Time int
as
	declare @TestID int
	declare @Choosed char(1)
	declare @test nvarchar
	if not exists(select * from SINHVIEN where MASV = @StudentID)
	begin
		raiserror(N'Mã sinh viên không tồn tại', 16, 1)
		return 1;
	end
	if not exists(select * from MONHOC where MAMH = @SubjectID)
	begin
		raiserror(N'Mã môn học không tồn tại', 16, 1)
		return 1;
	end
	select @TestID = BD.BAITHI from BANGDIEM BD
		where BD.LAN = @Time and BD.MASV = @StudentID and BD.MAMH = @SubjectID
	select ROW_NUMBER() over (order by BD.CAUHOI asc) as STT, BD.CAUHOI, BD.NOIDUNG, 
	'A. ' + BD.A as CauA,
	'B. ' + BD.B as CauB,
	'C. ' + BD.C as CauC,
	'D. ' + BD.D as CauD, BD.DAP_AN, BT.DACHON
		from BAITHI BT inner join BODE BD on BT.CAUHOI = BD.CAUHOI
		where BT.BAITHI = @TestID
return 0
GO

