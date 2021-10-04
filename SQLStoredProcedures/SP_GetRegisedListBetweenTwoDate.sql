USE [THITN]
GO

/****** Object:  StoredProcedure [dbo].[SP_GetRegisedListBetweenTwoDate]    Script Date: 04/10/2021 10:11:34 CH ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_GetRegisedListBetweenTwoDate]
	@from date,
	@to date
as
	IF IS_MEMBER('COSO') = 1
	BEGIN
		select (select TOP(1)TENCS from COSO) as COSO,
			(select TENLOP from LOP L where L.MALOP = GVDK.MALOP) as TENLOP,
			(select TENMH from MONHOC MH where MH.MAMH = GVDK.MAMH) as TENMH,
			(select HO + ' ' + TEN from GIAOVIEN GV where GV.MAGV = GVDK.MAGV) as HOTENGVDK,
			GVDK.SOCAUTHI, GVDK.NGAYTHI,
			IIF (exists (select * from BANGDIEM BD where BD.LAN = GVDK.LAN and BD.MAMH = GVDK.MAMH 
				and exists (select * from SINHVIEN SV where SV.MALOP = GVDK.MALOP)), 'x', '') as DATHI
		from GIAOVIEN_DANGKY GVDK
		where GVDK.NGAYTHI > @from and GVDK.NGAYTHI < @to
	END
	ELSE	
	BEGIN
		with TAM as(
		select (select TOP(1)TENCS from COSO) as COSO,
			(select TENLOP from LOP L where L.MALOP = GVDK.MALOP) as TENLOP,
			(select TENMH from MONHOC MH where MH.MAMH = GVDK.MAMH) as TENMH,
			(select HO + ' ' + TEN from GIAOVIEN GV where GV.MAGV = GVDK.MAGV) as HOTENGVDK,
			GVDK.SOCAUTHI, GVDK.NGAYTHI,
			IIF (exists (select * from BANGDIEM BD where BD.LAN = GVDK.LAN and BD.MAMH = GVDK.MAMH 
				and exists (select * from SINHVIEN SV where SV.MALOP = GVDK.MALOP)), 'x', '') as DATHI
		from GIAOVIEN_DANGKY GVDK
		where GVDK.NGAYTHI > @from and GVDK.NGAYTHI < @to
		union
		select (select TOP(1)TENCS from LINK1.THITN.DBO.COSO) as COSO, 
			(select TENLOP from LINK1.THITN.DBO.LOP L where L.MALOP = GVDK.MALOP) as TENLOP,
			(select TENMH from MONHOC MH where MH.MAMH = GVDK.MAMH) as TENMH,
			(select HO + ' ' + TEN from GIAOVIEN GV where GV.MAGV = GVDK.MAGV) as HOTENGVDK,
			GVDK.SOCAUTHI, GVDK.NGAYTHI,
			IIF (exists (select * from LINK1.THITN.DBO.BANGDIEM BD where BD.LAN = GVDK.LAN and BD.MAMH = GVDK.MAMH 
				and exists (select * from LINK1.THITN.DBO.SINHVIEN SV where SV.MALOP = GVDK.MALOP)), 'x', '') as DATHI
		from LINK1.THITN.DBO.GIAOVIEN_DANGKY GVDK
		where GVDK.NGAYTHI > @from and GVDK.NGAYTHI < @to)
		select * from TAM order by NGAYTHI asc
	END
return 0
GO

