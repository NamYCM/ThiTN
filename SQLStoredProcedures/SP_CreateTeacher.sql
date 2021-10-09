USE [THITN]
GO

/****** Object:  StoredProcedure [dbo].[SP_CreateTeacher]    Script Date: 09/10/2021 4:28:35 CH ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[SP_CreateTeacher] 
	@TeacherID nchar(8),
	@LastName nvarchar(40),
	@FirstName nvarchar(10),
	@Address nvarchar(40),
	@DepartmentID nchar(8)
as
	if @TeacherID is null or @LastName is null or @FirstName is null or @DepartmentID is null
		return 1
	if not exists(select * from LINK0.THITN.DBO.KHOA where MAKH = @DepartmentID)
		return 2
	insert into LINK0.THITN.DBO.GIAOVIEN (MAGV, HO, TEN, DIACHI, MAKH) 
		values (@TeacherID, @LastName, @FirstName, @Address, @DepartmentID)
return 0
GO

