USE [THITN]
GO

/****** Object:  StoredProcedure [dbo].[sp_SLCauHoiThieu]    Script Date: 15/11/2021 8:11:53 CH ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_SLCauHoiThieu] 
@maMonHoc NCHAR(5), @trinhDo NChar(1), @soCau int
AS
BEGIN
	DECLARE @trinhDo2 Nchar(1) = 'N'
	DECLARE @countQuestion int = 0
	DECLARE @countQuestionCungTrinhDo int = 0
	DECLARE @countQuestionTrinhDoDuoi int = 0

	if (@trinhDo = 'A') 
		set @trinhDo2 = 'B'
	else if (@trinhDo = 'B')
		set @trinhDo2 = 'C'

	set @countQuestionCungTrinhDo = (select count(*) from BODE where (MAMH = @maMonHoc and TRINHDO = @trinhDo))
	set @countQuestionTrinhDoDuoi = (select count(*) from BODE where (MAMH = @maMonHoc and TRINHDO = @trinhDo2))

	set @countQuestion = @countQuestionCungTrinhDo+@countQuestionTrinhDoDuoi

	if (@countQuestion< @soCau or @countQuestionCungTrinhDo<(@soCau*70/100))
		begin
			if (@countQuestion > @soCau)
				begin
					if (@countQuestionCungTrinhDo<(@soCau*70/100))
						begin 
							/*print 'so cau du nhung so cau cung trinh do it hon 70'*/
							select (@soCau*70/100) - @countQuestionCungTrinhDo
						end
					else 
						begin
							/*print 'so cau du'*/
							select 0
						end
				end
			else 
				begin
					if (@countQuestionCungTrinhDo<(@soCau*70/100))
						begin 
							/*print 'so cau thieu va so cau cung trinh do it hon 70'*/
							DECLARE @tongSoCauThieu Int
							set @tongSoCauThieu = @soCau - @countQuestion
							if ((@countQuestionCungTrinhDo + @tongSoCauThieu) < (@soCau*70/100))
								begin 
									set @tongSoCauThieu = @tongSoCauThieu + ((@soCau*70/100)-(@countQuestionCungTrinhDo+@tongSoCauThieu))
								end
							select @tongSoCauThieu
						end
					else 
						begin 
							/*print 'so cau thieu nhung so cau cung trinh do du 70'*/
							select @soCau - @countQuestion
						end
				end
		end
	else 
		begin
			/*print 'so cau da du'*/
			select 0;
		end
END
GO

