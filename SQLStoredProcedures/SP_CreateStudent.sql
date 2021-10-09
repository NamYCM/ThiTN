USE [THITN]
GO

/****** Object:  StoredProcedure [dbo].[SP_CreateStudent]    Script Date: 09/10/2021 4:28:24 CH ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[SP_CreateStudent]
	@StudentID nchar(8),
	@LastName nvarchar(40),
	@FirstName nvarchar(10),
	@Birthday datetime,
	@Address nvarchar(40),
	@ClassID nchar(8),
	@Password varchar(50)
as
	if @StudentID is null or @LastName is null or @FirstName is null or @ClassID is null or @Password is null
		return 1
	if not exists (select * from LOP where MALOP = @ClassID)
		return 2
	insert into SINHVIEN(MASV, HO, TEN, NGAYSINH, DIACHI, MALOP, MATKHAU) 
		values (@StudentID, @LastName, @FirstName, @Birthday, @Address, @ClassID, @Password)
return 0
GO

