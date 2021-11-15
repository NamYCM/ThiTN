USE [THITN]
GO

/****** Object:  StoredProcedure [dbo].[sp_GetGVDKtheoSV]    Script Date: 15/11/2021 8:12:34 CH ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sp_GetGVDKtheoSV] 
@maSV VARCHAR(50),@maLop VARCHAR(50),@maMH VARCHAR(50),@lan smallint,@ngaythi VARCHAR(50)
as
begin
	 if exists(select * from GIAOVIEN_DANGKY where MALOP = @maLop and MAMH = @maMH and LAN = @lan and CONVERT(date,NGAYTHI) = convert(date,@ngaythi,103) and @maSV not in(select MASV from BANGDIEM where MAMH =@maMH and LAN = @lan))
		begin
			select MAMH,MALOP,TRINHDO,NGAYTHI,LAN,SOCAUTHI,THOIGIAN from GIAOVIEN_DANGKY where MALOP = @maLop and MAMH = @maMH and LAN = @lan and CONVERT(date,NGAYTHI) = convert(date,@ngaythi,103)
		end
	else 
		begin
			select '0';
		end
end
GO

