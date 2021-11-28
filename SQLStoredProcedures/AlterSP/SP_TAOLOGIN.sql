USE [THITN]
GO
/****** Object:  StoredProcedure [dbo].[SP_TAOLOGIN]    Script Date: 28/11/2021 10:13:36 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[SP_TAOLOGIN]
	@LGNAME VARCHAR(50),
	@PASS VARCHAR(50),
	@TeacherID nchar(8),
	@ROLE VARCHAR(50),
	@LastName nvarchar(40),
	@FirstName nvarchar(10),
	@Address nvarchar(40),
	@DepartmentID nchar(8)
AS
SET XACT_ABORT ON;
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
BEGIN TRY
	DECLARE @RET INT
	EXEC @RET= SP_ADDLOGIN @LGNAME, @PASS,'THITN'
	IF (@RET =1)  -- LOGIN NAME BI TRUNG
		RETURN 1
 
	EXEC @RET= SP_GRANTDBACCESS @LGNAME, @TeacherID
	IF (@RET =1)  -- USER  NAME BI TRUNG
	BEGIN
		EXEC SP_DROPLOGIN @LGNAME
		RETURN 2
	END
	EXEC sp_addrolemember @ROLE, @TeacherID
	IF @ROLE = 'TRUONG' OR @ROLE= 'COSO'
	BEGIN 
		EXEC sp_addsrvrolemember @LGNAME, 'SecurityAdmin'
		EXEC sp_addsrvrolemember @LGNAME, 'ProcessAdmin'
	END
	
	BEGIN DISTRIBUTED TRAN
		declare @ReturnCreateTeacher int
		EXEC @ReturnCreateTeacher = SP_CreateTeacher @TeacherID, @LastName, @FirstName, @Address, @DepartmentID
		IF @ReturnCreateTeacher != 0
		BEGIN
			EXEC LINK1.THITN.DBO.Xoa_Login @LGNAME, @PASS
			EXEC Xoa_Login @LGNAME, @PASS
			return 3
		END
	COMMIT TRAN
END TRY
BEGIN CATCH
	ROLLBACK TRAN;
	RAISERROR('Create login failed!', 16, 1)
END CATCH
RETURN 0  -- THANH CONG


