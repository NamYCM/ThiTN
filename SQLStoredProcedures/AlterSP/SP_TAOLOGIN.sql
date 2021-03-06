USE [THITN]
GO
/****** Object:  StoredProcedure [dbo].[SP_TAOLOGIN]    Script Date: 29/11/2021 9:36:31 CH ******/
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

DECLARE @RET INT
EXEC @RET= SP_ADDLOGIN @LGNAME, @PASS,'THITN'
IF (@RET =1)  -- LOGIN NAME BI TRUNG
	RETURN 1
 
BEGIN TRY
	EXEC SP_GRANTDBACCESS @LGNAME, @TeacherID
END TRY
BEGIN CATCH
	EXEC SP_DROPLOGIN @LGNAME
	RAISERROR('Login name already exists', 16, 1)
	RETURN 2
END CATCH
	
EXEC sp_addrolemember @ROLE, @TeacherID
IF @ROLE = 'TRUONG' OR @ROLE= 'COSO'
BEGIN 
	EXEC sp_addsrvrolemember @LGNAME, 'SecurityAdmin'
	EXEC sp_addsrvrolemember @LGNAME, 'ProcessAdmin'
END

BEGIN TRY
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
	IF (@@TRANCOUNT > 0)
	BEGIN
		ROLLBACK TRAN;
	END
	RAISERROR('Failed in inserting into Teacher table', 16, 1)
	RETURN 4
END CATCH
RETURN 0  -- THANH CONG


