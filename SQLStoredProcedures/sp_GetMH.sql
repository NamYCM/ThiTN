USE [THITN]
GO

/****** Object:  StoredProcedure [dbo].[sp_GetMH]    Script Date: 15/11/2021 8:12:14 CH ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sp_GetMH] @maLop VARCHAR(50)
as
begin
	if exists( select DISTINCT  MAMH from GIAOVIEN_DANGKY where MALOP = @maLop )
		begin
			select DISTINCT  gvDK.MAMH,mh.TENMH from GIAOVIEN_DANGKY gvDK inner join MONHOC mh on gvDK.MAMH = mh.MAMH where MALOP = @maLop 
		end
	else 
		begin 
			select '0'
		end
end
GO

