USE [THITN]
GO

/****** Object:  StoredProcedure [dbo].[SP_GetRegisedListBetweenTwoDate]    Script Date: 01/10/2021 9:26:13 CH ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_GetRegisedListBetweenTwoDate]
	@from date,
	@to date
as
	--with TAM as(
	select (select TENLOP from LOP L where L.MALOP = GVDK.MALOP) as TENLOP,
		(select TENMH from MONHOC MH where MH.MAMH = GVDK.MAMH) as TENMH,
		(select HO + ' ' + TEN from GIAOVIEN GV where GV.MAGV = GVDK.MAGV) as HOTENGVDK,
		GVDK.SOCAUTHI, GVDK.NGAYTHI,
		IIF (exists (select * from BANGDIEM BD where BD.LAN = GVDK.LAN and BD.MAMH = GVDK.MAMH 
			and exists (select * from SINHVIEN SV where SV.MALOP = GVDK.MALOP)), 'x', '') as DATHI
	from GIAOVIEN_DANGKY GVDK
	where GVDK.NGAYTHI > @from and GVDK.NGAYTHI < @to
	--union
	select (select TENLOP from LINK1.THITN.DBO.LOP L where L.MALOP = GVDK.MALOP) as TENLOP,
		(select TENMH from MONHOC MH where MH.MAMH = GVDK.MAMH) as TENMH,
		(select HO + ' ' + TEN from GIAOVIEN GV where GV.MAGV = GVDK.MAGV) as HOTENGVDK,
		GVDK.SOCAUTHI, GVDK.NGAYTHI,
		IIF (exists (select * from LINK1.THITN.DBO.BANGDIEM BD where BD.LAN = GVDK.LAN and BD.MAMH = GVDK.MAMH 
			and exists (select * from LINK1.THITN.DBO.SINHVIEN SV where SV.MALOP = GVDK.MALOP)), 'x', '') as DATHI
	from LINK1.THITN.DBO.GIAOVIEN_DANGKY GVDK
	where GVDK.NGAYTHI > @from and GVDK.NGAYTHI < @to--)
	--select * from TAM order by NGAYTHI asc
return 0
GO

