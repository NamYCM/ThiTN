USE [THITN]
GO

/****** Object:  StoredProcedure [dbo].[sp_CheckRegisterIsExists]    Script Date: 15/11/2021 8:10:40 CH ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sp_CheckRegisterIsExists] @MALOP char(8), @MAMH char(8), @LAN int
as
begin
	IF EXISTS( SELECT 1 FROM GIAOVIEN_DANGKY gvdk WHERE gvdk.MALOP = @MALOP AND gvdk.MAMH = @MAMH AND gvdk.LAN = @LAN )
		begin
			SELECT 1;
			RETURN;
		end
		
	IF EXISTS ( SELECT 1 FROM LINK0.THITN.dbo.GIAOVIEN_DANGKY gvdk WHERE gvdk.MALOP = @MALOP AND gvdk.MAMH = @MAMH AND gvdk.LAN = @LAN )
		begin
			SELECT 1;
			RETURN;
		end
	SELECT 0;
end

GO

