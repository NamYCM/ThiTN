USE [THITN]
GO

/****** Object:  StoredProcedure [dbo].[sp_GetQuestion]    Script Date: 15/11/2021 8:11:34 CH ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_GetQuestion]
@maMonHoc NCHAR(5), @trinhDo NChar(1), @soCau int
AS
BEGIN
	DECLARE @trinhDo2 Nchar(1) = 'N'
	DECLARE @countQuestion int = 0
	DECLARE @countQuestionCungTrinhDo int = 0
	DECLARE @countQuestionTrinhDoDuoi int = 0

	set @countQuestionCungTrinhDo = (select count(*) from BODE where (MAMH = @maMonHoc and TRINHDO = @trinhDo))

	if (@trinhDo = 'A') 
		set @trinhDo2 = 'B'
	else if (@trinhDo = 'B')
		set @trinhDo2 = 'C' 
	
		set @countQuestionTrinhDoDuoi = (select count(*) from BODE where (MAMH = @maMonHoc and TRINHDO = @trinhDo2))
		set @countQuestion = @countQuestionCungTrinhDo+@countQuestionTrinhDoDuoi
		
		--set @countQuestion = @countQuestionCungTrinhDo

	if(@countQuestion <@soCau or @countQuestionCungTrinhDo<(@soCau*70/100))
		begin
			Select('Khong du cau hoi de thi') as 'ERROR'
			return -1
		end
	
	-- tạo bảng tạm chưa các câu hỏi tại tất cả các site 
	create table questionTable(
	CAUHOI int primary key,
	TRINHDO char(1),
	NOIDUNG ntext,
	A nvarchar(30),
	B nvarchar(30),
	C nvarchar(30),
	D nvarchar(30),
	DAP_AN nchar(1),
	)

	select * into CungTrinhDoAtSiteTable from BODE  where MAMH = @maMonHoc and TRINHDO = @trinhDo and MAGV in (Select MAGV from GIAOVIEN where MAKH in(select MAKH from KHOA))
	select * into TrinhDoDuoiAtSiteTable from BODE  where MAMH = @maMonHoc and TRINHDO = @trinhDo2 and MAGV in (Select MAGV from GIAOVIEN where MAKH in(select MAKH from KHOA))
	
	Insert into questionTable
			select CAUHOI,TRINHDO,CAST(NOIDUNG as nvarchar(max)),CAST(A as nvarchar(max)),CAST(B as nvarchar(max)),CAST(C as nvarchar(max)),
			CAST(D as nvarchar(max)),DAP_AN from CungTrinhDoAtSiteTable
			UNION
			select CAUHOI,TRINHDO,CAST(NOIDUNG as nvarchar(max)),CAST(A as nvarchar(max)),CAST(B as nvarchar(max)),CAST(C as nvarchar(max)),
			CAST(D as nvarchar(max)),DAP_AN  from TrinhDoDuoiAtSiteTable 
	
	Declare @countCungTrinhDoAtSite int = (select count(*) from CungTrinhDoAtSiteTable)
	Declare @countTrinhDoDuoiAtSite int = (select count(*) from TrinhDoDuoiAtSiteTable)
	if((@countCungTrinhDoAtSite+@countTrinhDoDuoiAtSite) < @soCau OR @countCungTrinhDoAtSite < (@soCau*70/100))
		begin
			select * into CungTrinhDoOtherSiteTable from BODE  where MAMH = @maMonHoc and TRINHDO = @trinhDo and MAGV in (Select MAGV from GIAOVIEN where MAKH not in(select MAKH from KHOA))
			select * into TrinhDoDuoiOtherSiteTable from BODE  where MAMH = @maMonHoc and TRINHDO = @trinhDo2 and MAGV in (Select MAGV from GIAOVIEN where MAKH not in(select MAKH from KHOA))

			Insert into questionTable
			select CAUHOI,TRINHDO,CAST(NOIDUNG as nvarchar(max)),CAST(A as nvarchar(max)),CAST(B as nvarchar(max)),CAST(C as nvarchar(max)),
			CAST(D as nvarchar(max)),DAP_AN from CungTrinhDoOtherSiteTable
			UNION
			select CAUHOI,TRINHDO,CAST(NOIDUNG as nvarchar(max)),CAST(A as nvarchar(max)),CAST(B as nvarchar(max)),CAST(C as nvarchar(max)),
			CAST(D as nvarchar(max)),DAP_AN  from TrinhDoDuoiOtherSiteTable 
			
			--xóa hai table tạm
			drop table CungTrinhDoOtherSiteTable
			drop table TrinhDoDuoiOtherSiteTable
		end
	Declare @slCanLayCungTrinhDo int,@slCanLayTrinhDoDuoi int
		set @slCanLayCungTrinhDo = @soCau*70/100
		if ((@slCanLayCungTrinhDo + @countQuestionTrinhDoDuoi)<@soCau)
			set @slCanLayCungTrinhDo = @slCanLayCungTrinhDo + (@soCau - (@slCanLayCungTrinhDo+@countQuestionTrinhDoDuoi))
			set @slCanLayTrinhDoDuoi = @soCau - @slCanLayCungTrinhDo
	
	create table examTable(
	CAUHOI int primary key,
	NOIDUNG ntext,
	A nvarchar(30),
	B nvarchar(30),
	C nvarchar(30),
	D nvarchar(30),
	DAP_AN nchar(1),
	)

	insert into examTable
		select top (@slCanLayCungTrinhDo) CAUHOI,CAST(NOIDUNG as nvarchar(max)) as [NOIDUNG],CAST(A as nvarchar(max)) as [A],CAST(B as nvarchar(max)) as [B],CAST(C as nvarchar(max)) as [C],
	CAST(D as nvarchar(max)) as [D],DAP_AN  from questionTable where TRINHDO = @trinhDo
		UNION
		select top (@slCanLayTrinhDoDuoi) CAUHOI,CAST(NOIDUNG as nvarchar(max)) as [NOIDUNG],CAST(A as nvarchar(max)) as [A],CAST(B as nvarchar(max)) as [B],CAST(C as nvarchar(max)) as [C],
	CAST(D as nvarchar(max)) as [D],DAP_AN  from questionTable where TRINHDO = @trinhDo2

	select * from examTable ORDER BY NEWID()

	drop table questionTable
	drop table examTable
	drop table CungTrinhDoAtSiteTable
	drop table TrinhDoDuoiAtSiteTable
END
GO

